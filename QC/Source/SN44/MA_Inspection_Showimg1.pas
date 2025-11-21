unit MA_Inspection_Showimg1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, DB, DBTables, iniFiles, StdCtrls;

type
  TMA_Inspection_Showimg = class(TForm)
    Image1: TImage;
    PriorBtn: TSpeedButton;
    NextBtn: TSpeedButton;
    QSearch: TQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PriorBtnClick(Sender: TObject);
    procedure NextBtnClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    ImageIndex:integer;
    ImageList:TStringlist;
    QC_N43_FilePath:String;
    { Private declarations }
    procedure ImageShow();
    procedure Readini();
  public
    DDBH:String;
    DepID:String;
    GXLB:String;
    SJXH:String;
    { Public declarations }
  end;

var
  MA_Inspection_Showimg: TMA_Inspection_Showimg;

implementation
  uses MA_Inspection1, FunUnit;
{$R *.dfm}

procedure TMA_Inspection_Showimg.Readini();
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

procedure TMA_Inspection_Showimg.ImageShow();
var SR:TSearchRec;
    RootDir,DirName:String;
begin
   RootDir:=QC_N43_FilePath;
   DirName:=MA_Inspection.HIorDI+'\';
   //
   with QSearch do
   begin
      Active := false;
      SQL.Clear;
      SQL.Add('Select distinct ProNo from QCMA where SCDate = '''+FormatDateTime('yyyy/mm/dd', MA_Inspection.sysDBtime)+''' and SCBH='''+DDBH+''' and GXLB='''+GXLB+''' and SJXH='''+SJXH+''' and DepNo='''+DepID+''' '); //
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
   end;
   //
   ImageList.Clear;
   if FindFirst(RootDir+dirName+'*.jpg', faArchive, SR) = 0 then
   begin
      repeat
        //FuncObj.WriteErrorLog(ProNo+' '+Copy(SR.Name,1,10));
        if QSearch.Locate('ProNo',Copy(SR.Name,1,10),[]) then
        ImageList.Add(RootDir+dirName+SR.Name);
      until FindNext(SR) <> 0;
      FindClose(SR);
   end;
   QSearch.Active:=false;
   //
   if ImageList.Count>0 then
   begin
     ImageIndex:=0;
     self.Caption:=ImageList.Strings[ImageIndex];
     Image1.Picture.LoadFromFile(ImageList.Strings[ImageIndex]);
   end else
   begin
     PriorBtn.Visible:=false;
     NextBtn.Visible:=false;
   end;
end;

procedure TMA_Inspection_Showimg.FormCreate(Sender: TObject);
begin
  Readini();
  ImageIndex:=-1;
  ImageList:=TStringlist.Create;
end;

procedure TMA_Inspection_Showimg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ImageList.Free;
end;

procedure TMA_Inspection_Showimg.PriorBtnClick(Sender: TObject);
begin
  if -1<(ImageIndex-1) then
  begin
    ImageIndex:=ImageList.Count-1;
  end else
  begin
    ImageIndex:=0;
  end;
  self.Caption:=ImageList.Strings[ImageIndex];
  Image1.Picture.LoadFromFile(ImageList.Strings[ImageIndex]);
end;

procedure TMA_Inspection_Showimg.NextBtnClick(Sender: TObject);
begin
  if (ImageList.Count-1)>(ImageIndex+1) then
  begin
    ImageIndex:=ImageIndex+1;
  end else
  begin
    ImageIndex:=ImageList.Count-1;
  end;
  self.Caption:=ImageList.Strings[ImageIndex];
  Image1.Picture.LoadFromFile(ImageList.Strings[ImageIndex]);
end;

procedure TMA_Inspection_Showimg.FormResize(Sender: TObject);
begin
  PriorBtn.Top:=(self.Height div 2) - (PriorBtn.Height div 2);
  NextBtn.Top:=(self.Height div 2) - (NextBtn.Height div 2);
  NextBtn.Left:=self.Width- NextBtn.Width;
  PriorBtn.Left:=0;
end;

procedure TMA_Inspection_Showimg.FormShow(Sender: TObject);
begin
  ImageShow();
end;

end.
