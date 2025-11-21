unit PurOther_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, QRPDFFilt, StdCtrls, IniFiles;

type
  TPurOther_Print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
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
    L9: TQRLabel;
    L20: TQRLabel;
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
  PurOther_Print: TPurOther_Print;

implementation

uses PurOther1, main1;

{$R *.dfm}
procedure TPurOther_Print.ReadIni();
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

procedure TPurOther_Print.FormCreate(Sender: TObject);
var surea,i:integer;
    IsMark_WhitColor,IsMark_TRICOT,IsMark_Black,isMark_Natural:boolean;
begin
  surea:=0;
  PurOther.CGDet.Active:=true;
  while not PurOther.CGDet.Eof   do
  begin
    {
    if pos('WHITE',PurOther.CGDet.FieldByName('YWPM').Value)<>0 then
      surea:=1;
    if pos('white',PurOther.CGDet.FieldByName('YWPM').Value)<>0 then
      surea:=1;    //判斷材料關鍵字有沒有WHITE
    }
    if pos('WHITE',UpperCase(PurOther.CGDet.FieldByName('YWPM').AsString))<>0 then
      IsMark_WhitColor:=true;
    if ((pos('T/C',UpperCase(PurOther.CGDet.FieldByName('YWPM').AsString))<>0) or (pos('TRICOT',UpperCase(PurOther.CGDet.FieldByName('YWPM').AsString))<>0)) then
      IsMark_TRICOT:=true;
    if pos('BLACK',UpperCase(PurOther.CGDet.FieldByName('YWPM').asstring))<>0 then
      IsMark_Black:=true;
    //if pos('12-0804TPX',UpperCase(PurOther.CGDet.FieldByName('YWPM').asstring))<>0 then
      //isMark_Natural:=true;
    //if pos('12-0804TCX',UpperCase(PurOther.CGDet.FieldByName('YWPM').asstring))<>0 then
      //isMark_Natural:=true;
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
  //if (main.edit2.Text = 'VA12') and (isMark_Natural=true) then
    //L9.Caption:=L9.Caption+'/Material: 12-0804TPX/12-0804TCX = CONV-0012';
  //

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
end;

procedure TPurOther_Print.FormDestroy(Sender: TObject);
begin
PurOther_Print:=nil;
end;

procedure TPurOther_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

end.
