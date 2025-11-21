unit SOPDocu_template1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls;

type
  TSOPDocu_template = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    //
    AppDir:string;
    TemplateList:TStringlist;
    { Private declarations }
    procedure ShowPreviewPanel();
    procedure PanelObjDbClick(Sender: TObject);
    procedure ListSOFTemplate(PathDir:string);
  public
    { Public declarations }
  end;

var
  SOPDocu_template: TSOPDocu_template;

implementation
  uses SOPDocu1,SOPFunit1,FunUnit;
{$R *.dfm}

procedure TSOPDocu_template.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=Cafree;
  TemplateList.Free;
end;
//
procedure TSOPDocu_template.FormDestroy(Sender: TObject);
begin
  SOPDocu_template:=nil;
end;
//產生9個Panel後續再看預覽用圖片或Html
procedure TSOPDocu_template.ShowPreviewPanel();
var i,j,index:integer;
    wid,hei:integer;
    PanelObj:TPanel;
    imgObj:TImage;
    FName:String;
begin
  wid:=SOPDocu_template.Width div 3;
  hei:=SOPDocu_template.Height div 3;
  index:=0;
  for i:=0 to  2 do
  begin
    for j:=0 to 2 do
    begin
      PanelObj:=TPanel.Create(self);
      PanelObj.Parent:=SOPDocu_template;
      PanelObj.Left:=j*wid;
      PanelObj.Top:=i*hei;
      PanelObj.Width:=wid;
      PanelObj.Height:=hei;
      PanelObj.Name:='Panel'+inttostr((j+1)+i*3);
      PanelObj.ShowHint:=true;
      //
      imgObj:=TImage.Create(self);
      imgObj.Parent:=PanelObj;
      imgObj.Name:='Image'+inttostr((j+1)+i*3);
      imgObj.Align:=alClient;
      imgObj.Stretch:=true;
      //
      if (index<=(TemplateList.Count-1)) then
      begin
        PanelObj.Hint:=TemplateList.Strings[index];
        PanelObj.Caption:=TemplateList.Strings[index];
        imgObj.Hint:=TemplateList.Strings[index];
        //預覽版面
        FName:=AppDir+'Html\Template\'+ChangeFileExt(TemplateList.Strings[index],'.jpg');

        if FileExists(FName)=true then
        begin
          imgObj.Picture.LoadFromFile(FName);
        end;
        //
        index:=index+1;
      end else
      begin
        PanelObj.Visible:=false;
      end;
      //PanelObj.OnDblClick:=PanelObjDbClick;
      imgObj.OnDblClick:=PanelObjDbClick;
    end;
  end;
end;

procedure TSOPDocu_template.ListSOFTemplate(PathDir:string);
var SR:TSearchRec;
begin
  TemplateList.Clear;
  try
      if FindFirst(PathDir + '*.htm', faArchive, SR) = 0 then
      begin
        repeat
            TemplateList.Add(SR.Name); //Fill the list
        until FindNext(SR) <> 0;
        FindClose(SR);
      end;
     //do your stuff
  finally
  end;
end;
//
procedure TSOPDocu_template.FormShow(Sender: TObject);
begin
  ListSOFTemplate(AppDir+'Html\Template\');
  ShowPreviewPanel;
end;
//複製Template到XieXIng+_+SheHao+_LB目錄
procedure TSOPDocu_template.PanelObjDbClick(Sender: TObject);
var htmlFile,cssFile,newFile,xmlFile,nxmlFile:String;
    tmpItem:TListItem;
    index:integer;
    IsBreak:boolean;
    FName:String;
begin
  //Create folder
  if(not DirectoryExists(AppDir+'\Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'\jquery-ui-1.12'))  then ForceDirectories(AppDir+'\Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'\jquery-ui-1.12');
  if(not DirectoryExists(AppDir+'\Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'\images'))  then ForceDirectories(AppDir+'\Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'\images');
  //Copy Folder
  SOPFunObj.DoCopyDir(AppDir+'\Html\Template\jquery-ui-1.12',AppDir+'\Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'\jquery-ui-1.12');
  SOPFunObj.DoCopyDir(AppDir+'\Html\Template\images',AppDir+'\Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'\images');
  //
  htmlFile:=TImage(Sender).Hint;
  cssFile:=ChangeFileExt(htmlFile,'.css');
  xmlFile:=ChangeFileExt(htmlFile,'.xml');
  //頁面index
  if SOPDocu.ListView.Items.Count=0 then
  begin
     newFile:='p1';
  end else
  begin
     index:=1;
     while IsBreak=false do
     begin
       index:=index+1;
       FName:=AppDir+'Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'\p'+inttostr(index)+'.htm';
       if FileExists(FName)=false then IsBreak:=true;
     end;
     newFile:='p'+inttostr(index);
  end;
  //Copy Html/CSS
  CopyFile(PChar(AppDir+'\Html\Template\'+htmlFile),PChar(AppDir+'\Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'\'+newFile+'.htm'),false);
  CopyFile(PChar(AppDir+'\Html\Template\'+CssFile),PChar(AppDir+'\Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'\'+CssFile),false);
  //XML
  if FileExists(AppDir+'\Html\Template\'+xmlFile)=true then
    CopyFile(PChar(AppDir+'\Html\Template\'+xmlFile),PChar(AppDir+'\Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'\'+newFile+'.xml'),false);
  //
  tmpItem:=SOPDocu.ListView.Items.Add;
  tmpItem.Caption:=newFile;
  Close;
end;

procedure TSOPDocu_template.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  TemplateList:=TStringlist.Create;
end;

end.
