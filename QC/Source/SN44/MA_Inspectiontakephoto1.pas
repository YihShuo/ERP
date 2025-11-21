unit MA_Inspectiontakephoto1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DSPack, Menus, ExtCtrls,DSUtil, DirectShow9, DB, StrUtils,
  DBTables, Buttons, JPEG, iniFiles,IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient;

type
  TMA_Inspectiontakephoto = class(TForm)
    ReviewPanel: TPanel;
    VideoWindow: TVideoWindow;
    ReviewToolPanel: TPanel;
    ReviewStop: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SnapPanel: TPanel;
    Image: TImage;
    OKBtn: TSpeedButton;
    ReturnBtn: TSpeedButton;
    Info: TLabel;
    Filter: TFilter;
    FilterGraph: TFilterGraph;
    SampleGrabber: TSampleGrabber;
    Timer: TTimer;
    procedure SpeedButton4Click(Sender: TObject);
    procedure ReturnBtnClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure ReviewStopClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure SnapPanelResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    QC_N43_FilePath:String;
    IdTCPClient1: TIdTCPClient;
    { Private declarations }
    Function CheckIfDevice():boolean;
    procedure Readini();
    procedure StopDevice();
    procedure BMP_To_JPEG(MyBitmap:TBitmap;JPEGFName : string);
    procedure BOX_To_JPEG(MyBitmap:TBitmap;JPEGFName : string);
  public
    YYBH:String;
    DefQty:String;
    HIorDI:String;
    { Public declarations }
    procedure InitialDevice();

  end;

var
  MA_Inspectiontakephoto: TMA_Inspectiontakephoto;
  SysDev: TSysDevEnum;
implementation
  uses MA_Inspection1, FunUnit;
{$R *.dfm}
procedure TMA_Inspectiontakephoto.Readini();
var AppDir:String;
    MyIni :Tinifile;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      QC_N43_FilePath:=MyIni.ReadString('IQC','QC_N43_FilePath','C:\');
    finally
      MyIni.Free;
    end;
  end;
end;
//Check Device
Function TMA_Inspectiontakephoto.CheckIfDevice():boolean;
begin
  SysDev:= TSysDevEnum.Create(CLSID_VideoInputDeviceCategory);
  if SysDev.CountFilters > 0 then  result:=true else result:=false;
end;
//Initial Device
procedure TMA_Inspectiontakephoto.InitialDevice();
begin
  if CheckIfDevice()=true then
  begin
    FilterGraph.ClearGraph;
    FilterGraph.Active := false;
    Filter.BaseFilter.Moniker := SysDev.GetMoniker(SysDev.CountFilters-1);
    FilterGraph.Active := true;
    with FilterGraph as ICaptureGraphBuilder2 do
      RenderStream(@PIN_CATEGORY_PREVIEW, nil, Filter as IBaseFilter, SampleGrabber as IBaseFilter, VideoWindow as IbaseFilter);
    FilterGraph.Play;
  end else
  begin
    Showmessage('No Camera Device!');
  end;
end;

procedure TMA_Inspectiontakephoto.BMP_To_JPEG(MyBitmap:TBitmap;JPEGFName : string);
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

procedure TMA_Inspectiontakephoto.BOX_To_JPEG(MyBitmap:TBitmap;JPEGFName : string);
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

procedure TMA_Inspectiontakephoto.StopDevice();
begin
    FilterGraph.ClearGraph;
    FilterGraph.Active := false;
end;

procedure TMA_Inspectiontakephoto.SpeedButton4Click(Sender: TObject);
begin
  SampleGrabber.GetBitmap(Image.Picture.Bitmap);
  ReviewPanel.Visible:=false;
  SnapPanel.Align:=alClient;
  SnapPanel.Visible:=true;
end;

procedure TMA_Inspectiontakephoto.ReturnBtnClick(Sender: TObject);
begin
  SnapPanel.Visible:=false;
  ReviewPanel.Visible:=true;
end;

procedure TMA_Inspectiontakephoto.OKBtnClick(Sender: TObject);
var RootDir,dirName : String;
    code:integer;
    PicFileName,PoxFileName,ProNo,ID:string;
    FlowIndex:integer;
    IsBreak:boolean;
begin

  RootDir:=QC_N43_FilePath;
  //目前不分工段
  dirName:=HIorDI+'\';
  FlowIndex:=1; //流水號
  if DirectoryExists(RootDir+dirName)=false then  ForceDirectories(RootDir+dirName);
  //檢查檔案是否已經存在
  //ProNo:=MA_Inspection.Save_WOPR_MA_Defect_Single(YYBH,DefQty);
  //ID:=MA_Inspection.Save_WOPR_MA_Thung(YYBH,DefQty);
  try
    if  Messagedlg(Pchar('Chup hinh Thung?'),mtInformation,[mbNo,mbYes],0)=mrYes then
    begin
      ID:=MA_Inspection.Save_WOPR_MA_Thung(YYBH,DefQty);
      PoxFileName:=ID+'_'+inttostr(FlowIndex)+'.jpg';
      IsBreak:=false;
      repeat
        if (FileExists(RootDir+dirName+PoxFileName)=false) then
        begin
          IsBreak:=true;
        end else
        begin
          FlowIndex:=FlowIndex+1;
          PoxFileName:=ID+'_'+inttostr(FlowIndex)+'.jpg';
        end;
      until IsBreak=true;
      //儲存成JPG
      if ID <> '' then
      begin
        BOX_To_JPEG(Image.Picture.Bitmap, RootDir+dirName+PoxFileName);
        Info.Visible:=true;
        Timer.Enabled:=true;
        if  (FileExists(RootDir+dirName+PoxFileName)=true) then
        begin
          Info.Caption:='Save Success at :'+dirName+PoxFileName;
          //FuncObj.WriteErrorLog(datetimetostr(now)+' Save: '+RootDir+dirName+PicFileName);
        end else
        begin
          Info.Caption:='Save failure';
        end;
      end;
    end else
    begin
      ProNo:=MA_Inspection.Save_WOPR_MA_Defect_Single(YYBH,DefQty);
      PicFileName:=ProNo+'_'+YYBH+'_'+inttostr(FlowIndex)+'.jpg';
      IsBreak:=false;
      repeat
        if (FileExists(RootDir+dirName+PicFileName)=false)  then
        begin
          IsBreak:=true;
        end else
        begin
          FlowIndex:=FlowIndex+1;
          PicFileName:=ProNo+'_'+YYBH+'_'+inttostr(FlowIndex)+'.jpg';
        end;
      until IsBreak=true;
      //儲存成JPG
      BMP_To_JPEG(Image.Picture.Bitmap, RootDir+dirName+PicFileName);
      Info.Visible:=true;
      Timer.Enabled:=true;
      if (FileExists(RootDir+dirName+PicFileName)=true)  then
      begin
        Info.Caption:='Save Success at :'+dirName+PicFileName;
        //FuncObj.WriteErrorLog(datetimetostr(now)+' Save: '+RootDir+dirName+PicFileName);
      end else
      begin
        Info.Caption:='Save failure';
      end;
    end;
  except
    Close;
  end;
end;

procedure TMA_Inspectiontakephoto.TimerTimer(Sender: TObject);
begin
  Info.Visible:=false;
  ReturnBtn.Click;
  Timer.Enabled:=false;
end;

procedure TMA_Inspectiontakephoto.ReviewStopClick(Sender: TObject);
begin
  Close;
end;

procedure TMA_Inspectiontakephoto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TMA_Inspectiontakephoto.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  SysDev.Free;
  FilterGraph.ClearGraph;
  FilterGraph.Active := false;
end;

procedure TMA_Inspectiontakephoto.FormDestroy(Sender: TObject);
begin
  MA_Inspectiontakephoto:=nil;
end;

procedure TMA_Inspectiontakephoto.SnapPanelResize(Sender: TObject);
begin
  OKBtn.Top:=(SnapPanel.Height div 2) - (OKBtn.Height div 2);
  ReturnBtn.Top:=(SnapPanel.Height div 2) - (ReturnBtn.Height div 2);
  OKBtn.Left:=SnapPanel.Width- OKBtn.Width;
  ReturnBtn.Left:=0;
end;

procedure TMA_Inspectiontakephoto.FormCreate(Sender: TObject);
begin
  Readini();
end;

end.
