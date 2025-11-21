unit Takephoto1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DSPack, Menus, ExtCtrls,DSUtil, DirectShow9, DB, StrUtils,
  DBTables, Buttons, JPEG;
  //,FILECTRL;

type
  TTakePoto = class(TForm)
    Panel1: TPanel;
    FilterGraph: TFilterGraph;
    Filter: TFilter;
    SampleGrabber: TSampleGrabber;
    SetGroupBox: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    btnDepartment: TButton;
    cboRY: TComboBox;
    txtDepartment: TEdit;
    Database1: TDatabase;
    Order: TQuery;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    ReviewPanel: TPanel;
    VideoWindow: TVideoWindow;
    Image: TImage;
    OKBtn: TSpeedButton;
    ReturnBtn: TSpeedButton;
    Info: TLabel;
    Timer: TTimer;
    ReviewToolPanel: TPanel;
    ReviewStop: TSpeedButton;
    SpeedButton4: TSpeedButton;
    CloseBtn: TSpeedButton;
    SnapPanel: TPanel;
    SpeedButton2: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SampleGrabberBuffer(sender: TObject; SampleTime: Double;
      pBuffer: Pointer; BufferLen: Integer);
    procedure FormShow(Sender: TObject);
    procedure btnDepartmentClick(Sender: TObject);
    procedure cboRYChange(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ReturnBtnClick(Sender: TObject);
    procedure ReviewStopClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure SnapPanelResize(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Database1Login(Database: TDatabase; LoginParams: TStrings);
  private
    procedure SavePicture();
    { Private declarations }
    procedure BMP_To_JPEG(MyBitmap:TBitmap;JPEGFName : string);
  public
    txtSheHao:string;
    txtXieXing:string;
    txtDepNo:string;
    StageFolder:string;
    { Public declarations }
    Function CheckIfDevice():boolean;
    procedure InitialDevice();
    procedure StopDevice();
    procedure OnSelectDevice(sender: TObject);
  end;

var
  TakePoto: TTakePoto;
  SysDev: TSysDevEnum;
implementation

uses Department1,FunUnit;

{$R *.dfm}

procedure TTakePoto.FormCreate(Sender: TObject);
var a,sline:string;
    databasevar:textfile;
begin
  a:=ExtractFilePath(Application.ExeName);
  Database1.Connected:=false;
  assignfile(databasevar,a+'database.txt');
  reset(databasevar);
  readln(databasevar,sline);
  Database1.aliasname:=sline;
  Database1.Connected:=true;
  //
  FuncObj:=TFuncObj.Create;
  FuncObj.setParameter(true,ExtractFilePath(Application.ExeName));

end;
//Check Device
Function TTakePoto.CheckIfDevice():boolean;
begin
  SysDev:= TSysDevEnum.Create(CLSID_VideoInputDeviceCategory);
  if SysDev.CountFilters > 0 then  result:=true else result:=false;
end;
procedure TTakePoto.OnSelectDevice(sender: TObject);
begin
end;
//Initial Device
procedure TTakePoto.InitialDevice();
begin
  if CheckIfDevice()=true then
  begin
    FilterGraph.ClearGraph;
    FilterGraph.Active := false;
    Filter.BaseFilter.Moniker := SysDev.GetMoniker(0);
    FilterGraph.Active := true;
    with FilterGraph as ICaptureGraphBuilder2 do
      RenderStream(@PIN_CATEGORY_PREVIEW, nil, Filter as IBaseFilter, SampleGrabber as IBaseFilter, VideoWindow as IbaseFilter);
    FilterGraph.Play;
  end else
  begin
    Showmessage('No Camera Device!');
  end;
end;
procedure TTakePoto.StopDevice();
begin
    FilterGraph.ClearGraph;
    FilterGraph.Active := false;
end;
//
procedure TTakePoto.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin

  SysDev.Free;
  FilterGraph.ClearGraph;
  FilterGraph.Active := false;
end;

procedure TTakePoto.SampleGrabberBuffer(sender: TObject; SampleTime: Double;
  pBuffer: Pointer; BufferLen: Integer);
begin
     Image.Canvas.Unlock;
end;
//
procedure TTakePoto.BMP_To_JPEG(MyBitmap:TBitmap;JPEGFName : string);
var
  MyJPEG : TJPEGImage;
begin
  MyJPEG := TJPEGImage.Create;
  try
   // MyBitmap := TBitmap.Create;
    try
      //MyBitmap.LoadFromFile(BMPFName);
      MyJPEG.Assign(MyBitmap);
      MyJPEG.SaveToFile(JPEGFName);
    finally
      //MyBitmap.Free;
    end;
    finally
    MyJPEG.Free;
  end;
end;
//儲存圖片
procedure TTakePoto.SavePicture();
var RootDir,dirName : String;
    code:integer;
    PicFileName:string;
begin
  RootDir:='\\192.168.23.11\rsl\QC\';
  //目前不分工段
  if rightstr(txtDepartment.Text,1)='G' then dirName:='\'+txtXieXing+'-'+txtShehao+'\';  //Assambly
  if rightstr(txtDepartment.Text,1)='C' then dirName:='\'+txtXieXing+'-'+txtShehao+'\';  //Cutting
  if rightstr(txtDepartment.Text,1)='M' then dirName:='\'+txtXieXing+'-'+txtShehao+'\';  //Stitching
  if DirectoryExists(RootDir+dirName)=false then  ForceDirectories(RootDir+dirName);
  PicFileName:=txtXieXing+'-'+txtShehao+'-IQC'+Formatdatetime('YYMMDDHHNNSS',now())+'.jpg';
  //儲存成JPG
  BMP_To_JPEG(Image.Picture.Bitmap, RootDir+dirName+PicFileName);
  Info.Visible:=true;
  Timer.Enabled:=true;
  if FileExists(RootDir+dirName+PicFileName)=true then
  begin
    Info.Caption:='Save ok at :'+dirName+PicFileName;
    FuncObj.WriteErrorLog(datetimetostr(now)+' Save: '+RootDir+dirName+PicFileName);
  end else
  begin
    Info.Caption:='Save failure';
  end;
end;

procedure TTakePoto.FormShow(Sender: TObject);
begin
  SetGroupBox.Left:=(self.Width div 2)-(SetGroupBox.Width div 2);
  SetGroupBox.Top:=(self.Height div 2)-(SetGroupBox.Height div 2);
  CloseBtn.Left:=self.Width-CloseBtn.Width;
end;

procedure TTakePoto.btnDepartmentClick(Sender: TObject);
begin
  if DepartForm=nil then
    DepartForm:=TDepartForm.create(self);
  DepartForm.Show;
  //DepartForm.Free;
end;

procedure TTakePoto.cboRYChange(Sender: TObject);
begin
 if cboRY.Text<>'' then
   begin
      with Order do
      begin
        Active:=true;
        SQL.Clear;
        SQL.Add('Select Xiexing, shehao from ddzl where DDBH='''+cboRY.Text+'''');
        Active:=true;
        txtXiexing:=order.fieldbyname('XieXing').Value;
        txtShehao:=order.fieldbyname('SheHao').Value;
        Active:=false;
      end;
   end;

end;

procedure TTakePoto.OKBtnClick(Sender: TObject);
begin
  SavePicture();
end;

procedure TTakePoto.TimerTimer(Sender: TObject);
begin
  Info.Visible:=false;
  ReturnBtn.Click;
  Timer.Enabled:=false;
end;

procedure TTakePoto.SpeedButton1Click(Sender: TObject);
begin
  if ((trim(txtXiexing)='') or (trim(txtSheHao)='')) then
  begin
    Showmessage('Please Select Order NO');
  end else
  begin
    SetGroupBox.Visible:=false;
    InitialDevice();
    CloseBtn.Visible:=false;
    ReviewPanel.Align:=alClient;
    ReviewPanel.Visible:=true;
  end;
end;

procedure TTakePoto.SpeedButton4Click(Sender: TObject);
begin
  SampleGrabber.GetBitmap(Image.Picture.Bitmap);
  ReviewPanel.Visible:=false;
  SnapPanel.Align:=alClient;
  SnapPanel.Visible:=true;

end;

procedure TTakePoto.ReturnBtnClick(Sender: TObject);
begin
  SnapPanel.Visible:=false;
  ReviewPanel.Visible:=true;
end;

procedure TTakePoto.ReviewStopClick(Sender: TObject);
begin
  Close;
end;

procedure TTakePoto.FormResize(Sender: TObject);
begin
  SetGroupBox.Left:=(self.Width div 2)-(SetGroupBox.Width div 2);
  SetGroupBox.Top:=(self.Height div 2)-(SetGroupBox.Height div 2);
  CloseBtn.Left:=self.Width-CloseBtn.Width;
end;

procedure TTakePoto.SnapPanelResize(Sender: TObject);
begin
  OKBtn.Top:=(SnapPanel.Height div 2) - (OKBtn.Height div 2);
  ReturnBtn.Top:=(SnapPanel.Height div 2) - (ReturnBtn.Height div 2);
  OKBtn.Left:=SnapPanel.Width- OKBtn.Width;
  ReturnBtn.Left:=0; 
end;

procedure TTakePoto.SpeedButton2Click(Sender: TObject);
begin

  StopDevice();
  ReviewPanel.Visible:=false;
  CloseBtn.Visible:=true;
  SetGroupBox.Visible:=true;

end;


procedure TTakePoto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FuncObj.Free;
end;

procedure TTakePoto.Database1Login(Database: TDatabase;
  LoginParams: TStrings);
var textfilevar:textfile;
    ad,i:integer;
    a,tempstr:string;
    susername,spassword,sline,pp:string;

begin
assignfile(textfilevar,a+'datalogin.txt');
reset(textfilevar);
readln(textfilevar,pp);
// 密碼加密測試
sline:='';
ad:=strtoint(copy(pp,0,1)); //取得解密字元
for i:=2 to (length(pp)) do //解密迴圈
  begin
    tempstr:=copy(pp,i,1);
    sline:=sline+chr(ord(tempstr[1])-ad-100);
  end;

closefile(textfilevar);

susername:=trim(copy(sline,0,pos('=',sline)-1));
spassword:=trim(copy(sline,pos('=',sline)+1,maxint));

loginparams.Values['user name']:=susername;
loginparams.values['password']:=spassword;

pp:=sline;
ad:=dayofweek(now); //取得加密字元
sline:=inttostr(ad);

for i:=1 to (length(pp)) do //加密迴圈
  begin
    tempstr:=copy(pp,i,1);
    sline:=sline+chr(ord(tempstr[1])+ad+100);
  end;
assignfile(textfilevar,a+'datalogin.txt');
Rewrite(textfilevar);
writeln(textfilevar,sline);
closefile(textfilevar);

end;

end.
