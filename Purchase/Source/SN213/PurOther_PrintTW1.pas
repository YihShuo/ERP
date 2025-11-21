unit PurOther_PrintTW1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPDFFilt, QRCtrls, QuickRpt, ExtCtrls, IniFiles, StdCtrls, DB,
  DBTables;

type
  TPurOther_PrintTW = class(TForm)
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
    QPage1: TQRLabel;
    L9: TQRLabel;
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
    QRLabel4: TQRLabel;
    QRLabel1: TQRLabel;
    QRImage2: TQRImage;
    QRImage1: TQRImage;
    QRLabel2: TQRLabel;
    TmpQuery: TQuery;
    L11: TQRLabel;
    QRDBText13: TQRDBText;
    L20: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
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
  PurOther_PrintTW: TPurOther_PrintTW;

implementation

uses PurOther1, main1;

procedure TPurOther_PrintTW.ReadIni();
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
      Title:=MyIni.ReadString('GSBH_'+main.Edit2.Text,'Purchase_N213_PrintTW','PHIEU DAT MUA HANG');
    finally
      MyIni.Free;
    end;
  end;

  if (main.Edit1.Text='102829') or (main.Edit1.Text='102330') or (main.Edit1.Text='103369') or (main.Edit1.Text='108254') then
    SuperVisorID:='46628.bmp'
  else
    SuperVisorID:='PurManager.bmp';
  with TmpQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select SupervisorID from BUsers where USERID='''+main.Edit1.Text+''' ');
    Active:=true;
    if FieldByName('SupervisorID').AsString<>''  then SuperVisorID:=FieldByName('SupervisorID').AsString+'.bmp';
    Active:=false;
  end;
  //簽名檔
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

{$R *.dfm}

procedure TPurOther_PrintTW.FormCreate(Sender: TObject);
  var surea,i:integer;
    IsMark_WhitColor,IsMark_TRICOT,IsMark_Black,isMark_Natural:boolean;
begin
  surea:=0;
  PurOther.CGDet.Active:=true;
  while not PurOther.CGDet.Eof   do
  begin

    if pos('WHITE',UpperCase(PurOther.CGDet.FieldByName('YWPM').AsString))<>0 then
      IsMark_WhitColor:=true;
    if ((pos('T/C',UpperCase(PurOther.CGDet.FieldByName('YWPM').AsString))<>0) or (pos('TRICOT',UpperCase(PurOther.CGDet.FieldByName('YWPM').AsString))<>0)) then
      IsMark_TRICOT:=true;
    if pos('BLACK',UpperCase(PurOther.CGDet.FieldByName('YWPM').asstring))<>0 then
      IsMark_Black:=true;

    PurOther.CGDet.Next;
  end;
  //20150602 判斷材料有沒有WHITE字 or TRICOT or TC
  L9.Caption:='';
  if (main.edit2.Text = 'VA12') and (IsMark_WhitColor=true) then
    //L9.Caption:='Material:  white = 10A white';
    L9.Caption:='Material:  white = 129-96-00';
  if (main.edit2.Text = 'VA12') and (IsMark_TRICOT=true) then
    L9.Caption:=L9.Caption+'/Note:TRICOT Buy from CRMTO(ChengZhang)';
  if (main.edit2.Text = 'VA12') and (IsMark_Black=true) then
    L9.Caption:=L9.Caption+'/Black = CONV-0013';

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
    QRDBText13.Enabled:=false;
  end else
  begin
    ReadIni();
    L1.Caption:=ComName;
    L2.Caption:=Title;
  end;
end;



procedure TPurOther_PrintTW.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPurOther_PrintTW.FormDestroy(Sender: TObject);
begin
  PurOther_PrintTW:=nil;
end;

end.
