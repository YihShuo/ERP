unit ArticlePicP;

interface

uses
  Windows, Messages, SysUtils, jpeg, gifimage, Variants, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, ShellAPI, TLHELP32, DB, DBTables, iniFiles;

type
  TArticlePic = class(TForm)
    ToolPanel: TPanel;
    QCImage: TImage;
    JPGTimer: TTimer;
    PFCGroupBox: TGroupBox;
    ClassCombo: TComboBox;
    Button2: TButton;
    FileTypeCombo: TComboBox;
    PFCQuery: TQuery;
    Info: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    CB1: TCheckBox;
    Edit3: TEdit;
    Label3: TLabel;
    Label2: TLabel;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure JPGTimerTimer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ClassComboChange(Sender: TObject);
    procedure FileTypeComboChange(Sender: TObject);
    procedure QCImageDblClick(Sender: TObject);
  private

    JPGList:tstringlist;
    JPGPicnum:integer;
    JPGindex:integer;
    pic:Tjpegimage;
    g:integer;
    { Private declarations }
    procedure GetJPGList(mulu:string);
    procedure ShowJPG(photo:string);
    Function GetMediaFile(Dir:string;FileType:string):string;
  public
    QCFilePath:String;
    PFCFilePath:String;
    //鞋型、色號資訊
    UserArticle:string;
    PFCArticleNM:string;//PFC目錄名稱 Ex.XieXing+'-'+SheHao
    UserSheHao:string;
    USerXieXing:string;
    //
    MediaFile:string;
    //
    ClassInfoCombo:TStringlist;
    { Public declarations }
    procedure ShowImage();//顯示圖片
    procedure GetPFCDocument(); //取得PFC文件路徑
    procedure GetShareAricle(LB:string); //檢查Article共用母層
    procedure ListAvailPFC();
  private

    procedure ReadIni();
  end;


var
  ArticlePic: TArticlePic;
  PFCFileTypeDesc:array [0..1] of string=('PDF','PPT');
  PFCFileType:array [0..1] of string=('*.PDF','*.ppt;*.pptx');
  PFCClassTyep:array [0..6] of string=('Assambly','Cutting','Stitching','Conference','OutsoleProcess','PrintProcess','TestReport');
  PFCClassInfo:array [0..6] of string=('Go/成型','Chat/裁斷','May/針車','Bao cao hoi nghi lam thu/試做會議報告','De lon + Can cao su/大底流程','Luu trinh in/印刷流程','Bao cao thi nghiem/測試報告');

implementation

uses ArticlePicQP,FunUnit;

{$R *.dfm}
procedure TArticlePic.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  QCFilePath := '\\192.168.23.11\A_DataCenter\A12\RSL\QC\';                    // 先設定上傳的檔案路徑
  PFCFilePath := '\\192.168.23.11\A_DataCenter\A12\PFC\';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      QCFilePath:=MyIni.ReadString('RSL','Production_N19_QCFilePath','');
      PFCFilePath:=MyIni.ReadString('PFC','Production_N19_PFCFilePath','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TArticlePic.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  JPGList.Free;
  ClassInfoCombo.Free;
  action:=cafree;
end;

procedure TArticlePic.Button1Click(Sender: TObject);
begin
  ArticlePicQ:=TArticlePicQ.create(self);
  ArticlePicQ.ShowModal;
  ArticlePicQ.Free;
end;

procedure TArticlePic.GetJPGList(mulu:string);
var
  t:TSearchRec;
  found:Integer;
begin
  JPGList.Clear;
  found:=findfirst(mulu+'*.jpg',faanyfile,t);
    while found=0 do
    begin
      if (t.Attr and faDirectory)<>0 then   // 是一個目錄
      begin
      end
      else                       //是一個文件
      begin
        JPGList.Add(mulu+t.Name);
      end;
      found:=FindNext(t);
    end;
end;



procedure TArticlePic.ShowJPG(photo:string);
begin
  pic:=Tjpegimage.Create;
  pic.LoadFromFile(photo);
  ArticlePic.QCImage.Picture.Bitmap.Assign(pic);
  pic.Free;
end;



//顯示圖片
procedure TArticlePic.ShowImage();
begin
  PFCGroupBox.Visible:=true;
  //顯示Deff jpg圖片
  JPGindex:=0;
  JPGTimer.Enabled:=false;
  GetJPGList(QCFilePath+UserXieXing+'-'+UserSheHao+'\');
  JPGPicnum:=JPGList.Count;
  if JPGPicnum <> 0 then
  begin
    JPGTimer.Enabled:=true;
    ShowJPG(JPGList.Strings[0]);
  end
  else
  begin
    ArticlePic.QCImage.Picture.Assign(nil);
    showmessage('No Deff Pictures!!');
  end;

end;


procedure TArticlePic.JPGTimerTimer(Sender: TObject);
begin
  JPGTimer.Enabled:=false;
  JPGindex:=JPGindex+1;
  if JPGindex=JPGPicnum then
  begin
   GetJPGList(QCFilePath+UserXieXing+'-'+UserSheHao+'\');
   JPGindex:=0;
  end;
  ShowJPG(JPGlist.Strings[JPGindex]);
  JPGTimer.Enabled:=true;
end;

procedure TArticlePic.FormDestroy(Sender: TObject);
begin
  ArticlePic:=nil;
end;

procedure TArticlePic.FormCreate(Sender: TObject);
begin
   JPGList:=tstringlist.Create;
   ClassInfoCombo:=TStringlist.Create;
   ReadIni();
end;
//
procedure TArticlePic.Button2Click(Sender: TObject);
var SEInfo: TShellExecuteInfo;
begin
   if ((UserArticle<>'') and  (ClassCombo.ItemIndex>-1) and  (FileTypeCombo.ItemIndex>-1)) then
   begin
      if FileExists(MediaFile) then
      begin
        FillChar(SEInfo, SizeOf(SEInfo), 0) ;
        SEInfo.cbSize := SizeOf(TShellExecuteInfo) ;
        with SEInfo do begin
          fMask := SEE_MASK_NOCLOSEPROCESS;
          Wnd := Application.Handle;
          lpFile := PChar(MediaFile);
          nShow := SW_SHOWMAXIMIZED;//SW_SHOWNORMAL;
        end;
        ShellExecuteEx(@SEInfo);
        //延遲2秒
        //sleep(1000);
      end else
      begin
        Showmessage('No PFC document!');
      end;
   end else
   begin
     Showmessage('Please choice Media File info!');
   end;
  //
end;
//
//取得PFC文件檔名
Function TArticlePic.GetMediaFile(Dir:string;FileType:string):string;
var
  t:TSearchRec;
  i,found:Integer;
  iRes,FileStr:string;
  splitFileType:TStringlist;
begin
   iRes:='';//回傳值
   splitFileType:=FuncObj.SplitString(FileType,';');
   for i:=0 to splitFileType.Count-1 do
   begin
   found:=findfirst(Dir+splitFileType.Strings[i],faAnyFile,t);
   if found=0 then
     begin
       iRes:=t.Name;
       break;
     end else
     begin
       iRes:='';
     end;
   end;
   splitFileType.Free;
   Result:=iRes;
end;
//檢查取得是否有PFC文件實體檔案路徑
procedure TArticlePic.GetPFCDocument();
var FileStr:string;
begin
   if ((UserArticle<>'') and  (ClassCombo.ItemIndex>-1) and  (FileTypeCombo.ItemIndex>-1)) then
   begin
      GetShareAricle(ClassCombo.Text);
      FileStr:=GetMediaFile(PFCFilePath+ClassCombo.Text+'\'+PFCArticleNM+'\',PFCFileType[FileTypeCombo.itemindex]);
      if FileStr<>'' then
      begin
        PFCGroupBox.Caption:='Media File:'+FileStr;
        MediaFile:=PFCFilePath+ClassCombo.Text+'\'+PFCArticleNM+'\'+FileStr;
      end else
      begin
        PFCGroupBox.Caption:='Media File';
        MediaFile:='';
      end;
   end;
end;
//取得共用Aricle,找到最後共用的Article
procedure TArticlePic.GetShareAricle(LB:string);
var i:integer;
begin
   if LB='Assambly' then  LB:='A';
   if LB='Cutting' then  LB:='C';
   if LB='Packing' then  LB:='P';
   if LB='Stitching' then  LB:='S';
   //20150808  add  LB = F, O, I, T
   if LB='Conference' then LB:='F';
   if LB='OutsoleProcess' then LB:='O';
   if LB='PrintProcess' then LB:='I';
   if LB='TestReport' then LB:='T';
   //
   PFCArticleNM:='';
   with PFCQuery do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select XieXing+''-''+SheHao as PFCArticleNM,Article as MArticle from xxzl ');
     SQL.Add('where ARTICLE in (Select MArticle from PFCSKUmap where DArticle='''+UserArticle+''' and LB='''+LB+''') or (ARTICLE='''+UserArticle+''')');
     Active:=true;
     if Recordcount>0 then
     begin
       for i:=0 to RecordCount-1 do
       begin
         PFCArticleNM:=FieldByName('PFCArticleNM').AsString;
         if FieldByName('MArticle').AsString<>UserArticle then break; //找到使用母層的Article就可以了
         Next;
       end;
     end;
     Active:=false;
     //
   end;
end;
//列舉檢查可以看的PFC文件 -ClassComBo除去分類沒有實體檔案的item
procedure TArticlePic.ListAvailPFC();
var i,j:integer;
    FileStr:string;
begin
  ClassCombo.Clear;
  FileTypeCombo.Clear;
  for i:=0 to High(PFCClassTyep) do
  begin
    //先取得PFCArticleNM資訊,需要關聯PFC對照表取得目錄名稱 Ex. XieXing+'-'+SheHao
    GetShareAricle(PFCClassTyep[i]);
    for j:=0 to High(PFCFileType) do
    begin
      //檢查目錄下是否有PFC檔案 \\192.168.23.11\Public\PFC\分類\Article\  | avi or pdf or xls
      FileStr:=GetMediaFile(PFCFilePath+PFCClassTyep[i]+'\'+PFCArticleNM+'\',PFCFileType[j]);
      if FileStr<>'' then
      begin
        ClassCombo.Items.Add(PFCClassTyep[i]);
        ClassInfoCombo.Add(PFCClassInfo[i]);
        break;
      end;
    end;
  end;
  if ClassCombo.Items.Count>0 then
  begin
    for i:=0 to High(PFCFileType) do
      FileTypeCombo.Items.Add(PFCFileTypeDesc[i]);
    ClassCombo.ItemIndex:=0;
    FileTypeCombo.ItemIndex:=0;
  end;
end;
//
procedure TArticlePic.ClassComboChange(Sender: TObject);
begin
  GetPFCDocument();
   if ClassCombo.Text='Assambly' then
        begin
          Info.Caption:='Go/成型';
        end;
        if ClassCombo.Text='Cutting' then
        begin
          Info.Caption:='Chat/裁斷';
        end;
        if ClassCombo.Text='Stitching' then
        begin
          Info.Caption:='May/針車';
        end;
        if ClassCombo.Text='Conference' then
        begin
          Info.Caption:='Bao cao hoi nghi lam thu/試做會議報告';
        end;
        if ClassCombo.Text='OutsoleProcess' then
        begin
          Info.Caption:='De lon + Can cao su/大底流程';
        end;
        if ClassCombo.Text='PrintProcess' then
        begin
          Info.Caption:='Luu trinh in/印刷流程';
        end;
        if ClassCombo.Text='TestReport' then
        begin
          Info.Caption:='Bao cao thi nghiem/測試報告';
        end;
 // Info.Caption:=PFCClassInfo[ClassCombo.ItemIndex];
end;
//
procedure TArticlePic.FileTypeComboChange(Sender: TObject);
begin
  GetPFCDocument();
end;

procedure TArticlePic.QCImageDblClick(Sender: TObject);
begin
   if ToolPanel.Visible=true then
   begin
     ArticlePic.BorderStyle:=bsNone;
     ArticlePic.WindowState:=wsMaximized;
     ToolPanel.Visible:=false;
   end else
   begin
     ArticlePic.BorderStyle:=bsSizeable;
     ToolPanel.Visible:=true;
   end;
end;

end.
