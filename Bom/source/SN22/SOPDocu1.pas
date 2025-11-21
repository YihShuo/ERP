unit SOPDocu1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, StdCtrls, Registry, StrUtils, DateUtils,
  MsHtml, ActiveX, Axctrls, WinInet, Buttons, ExtCtrls, UExternalContainer,
  ComCtrls, ShellCtrls, GpTextFile, GPHugeF, Comobj, Menus, DB, DBTables,
  XMLDoc, XMLIntf, GridsEh, DBGridEh, EhlibBDE, iniFiles, SOPMyProcClass1,
  ShellAPI, DBGridEhImpExp;

type
  TSOPDocu = class(TForm)
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    BB1: TBitBtn;
    BBT4: TBitBtn;
    BBT5: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Panel3: TPanel;
    WebBrowser: TWebBrowser;
    Panel4: TPanel;
    ListView: TListView;
    SB1: TSpeedButton;
    SB2: TSpeedButton;
    PopupMenu: TPopupMenu;
    rename1: TMenuItem;
    N1: TMenuItem;
    Insert1: TMenuItem;
    Delete1: TMenuItem;
    ExeQuery: TQuery;
    SOPDB: TDatabase;
    SKULabel: TLabel;
    LBLabel: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    BBT6: TBitBtn;
    Panel5: TPanel;
    Label6: TLabel;
    Label22: TLabel;
    ArticleEdit: TEdit;
    Button3: TButton;
    BuyNoEdit: TEdit;
    Panel6: TPanel;
    BT2: TBitBtn;
    BT3: TBitBtn;
    BT4: TBitBtn;
    BT5: TBitBtn;
    BT6: TBitBtn;
    BT7: TBitBtn;
    BT1: TBitBtn;
    BT8: TBitBtn;
    BT9: TBitBtn;
    BT10: TBitBtn;
    BT11: TBitBtn;
    BT12: TBitBtn;
    BT13: TBitBtn;
    Panel7: TPanel;
    DBGridEh1: TDBGridEh;
    Splitter2: TSplitter;
    XXZL: TQuery;
    XXZLXieXing: TStringField;
    XXZLSheHao: TStringField;
    XXZLARTICLE: TStringField;
    XXZLS: TQuery;
    DS2: TDataSource;
    DS1: TDataSource;
    XXZLSUpd: TUpdateSQL;
    BBT7: TBitBtn;
    XXZLLB: TStringField;
    Panel8: TPanel;
    DBGrid1: TDBGridEh;
    Panel9: TPanel;
    Panel10: TPanel;
    BD5: TBitBtn;
    BD4: TBitBtn;
    BD2: TBitBtn;
    BD6: TBitBtn;
    DBGridEh2: TDBGridEh;
    KT_SOPCutS: TQuery;
    DS3: TDataSource;
    KT_SOPCutSUpd: TUpdateSQL;
    BD1: TBitBtn;
    BD3: TBitBtn;
    BBT8: TBitBtn;
    BBT9: TBitBtn;
    OpenDialog1: TOpenDialog;
    Splitter3: TSplitter;
    EditObjctCB: TRadioButton;
    EditCB: TRadioButton;
    MergCB: TRadioButton;
    KT_SOPCutSXieXing: TStringField;
    KT_SOPCutSSheHao: TStringField;
    KT_SOPCutSBWBH: TStringField;
    KT_SOPCutSSIZE: TStringField;
    KT_SOPCutSXXCC: TStringField;
    KT_SOPCutSUSERID: TStringField;
    KT_SOPCutSUSERDATE: TDateTimeField;
    KT_SOPCutSYN: TStringField;
    XXZLSXieXing: TStringField;
    XXZLSSheHao: TStringField;
    XXZLSBWBH: TStringField;
    XXZLSywsm: TStringField;
    XXZLSSOPBWBH: TStringField;
    XXZLSjoinnum: TSmallintField;
    XXZLSLRcom: TBooleanField;
    XXZLSLayer: TIntegerField;
    XXZLSpiece: TIntegerField;
    XXZLSuserdate: TDateTimeField;
    XXZLSuserid: TStringField;
    XXZLSYN: TStringField;
    XXZLSDFL: TStringField;
    Label3: TLabel;
    XieXingEdit: TEdit;
    Label4: TLabel;
    SheHaoEdit: TEdit;
    Label5: TLabel;
    JiJieEdit: TEdit;
    XXZLSYWPM: TStringField;
    XXZLSZWSM: TStringField;
    XXZLSZSJC: TStringField;
    XXZLXieMing: TStringField;
    BT14: TBitBtn;
    XXZLSPartID: TStringField;
    ArticlePopmenu: TPopupMenu;
    CopyArticle1: TMenuItem;
    XXZLSCLDH: TStringField;
    XXZLSvwsm: TStringField;
    BB8: TBitBtn;
    XXZLSIMGName: TStringField;
    SOPCutSPop: TPopupMenu;
    SOPCutSCopy: TMenuItem;
    SOPCutSPaste: TMenuItem;
    N2: TMenuItem;
    SaveDialog1: TSaveDialog;
    BD7: TBitBtn;
    XXZLSType: TStringField;
    DownSOP: TMenuItem;
    SaveDialog2: TSaveDialog;
    XXZLSOPFile: TStringField;
    XXZLSBWLB: TStringField;
    CB1: TCheckBox;
    XXZLSCSBH: TStringField;
    CB_Schedule: TCheckBox;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label7: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure ShellListView1AddFolder(Sender: TObject;
      AFolder: TShellFolder; var CanAdd: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ListViewClick(Sender: TObject);
    procedure WebBrowserDocumentComplete(Sender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BBT5Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure SB2Click(Sender: TObject);
    procedure SB1Click(Sender: TObject);
    procedure rename1Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBT6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure XXZLSAfterOpen(DataSet: TDataSet);
    procedure BT4Click(Sender: TObject);
    procedure BT6Click(Sender: TObject);
    procedure BT5Click(Sender: TObject);
    procedure XXZLAfterScroll(DataSet: TDataSet);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure BBT7Click(Sender: TObject);
    procedure MergCBClick(Sender: TObject);
    procedure EditCBClick(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BD6Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD1Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BBT8Click(Sender: TObject);
    procedure BBT9Click(Sender: TObject);
    procedure BT3Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BT14Click(Sender: TObject);
    procedure CopyArticle1Click(Sender: TObject);
    procedure EditObjctCBClick(Sender: TObject);
    procedure BB8Click(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure SOPCutSCopyClick(Sender: TObject);
    procedure SOPCutSPasteClick(Sender: TObject);
    procedure BT13Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure DBGrid1CellClick(Column: TColumnEh);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure BD7Click(Sender: TObject);
    procedure BT2Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DownSOPClick(Sender: TObject);
    procedure XXZLCalcFields(DataSet: TDataSet);
  private
    IsClickProcess:boolean;
    //WebZome
    FZoom: Integer;
    FLastZoom: Integer;
    //WebBrowser IInterface
    IsIELoadComplete:boolean;
    FContainer: TExternalContainer;
    //HTMLDoc:IHTMLDocument2;
    IsIE_Version:boolean;
    //
    MyProc:TMyProcClass;
    MyPara:TParameter;
    //
    BOM_N21_WebRoot:String;
    //Copy KT_SOPCUts全部尺碼紀錄部位別
    SOPCuts_BWBH_Copy:String;
    //
    SelectDBGrid:TDBGridEh;
    DCTFilePath: string;
    { Private declarations }
    procedure DecZoom;
    procedure IncZoom;
    procedure ApplyZoom(ZoomValue: Integer);
    //目前SelectedItem
    procedure SaveSelectedXMLHTMLCode();
    procedure SaveExportXLSHTMLCode(IsSingle:boolean);
    procedure ListViewInit();
    //順序清單
    procedure LoadDoc_SortList();
    procedure SaveDoc_SortList();
    //
    procedure ExcelListViewItem();
    procedure ExcelListViewItemAll();
    procedure DeleteListViewItem();
    procedure LoadListViewItem(tmpList:TStringlist);
    procedure ListViewItemMoveUpDown(lv : TListView; Item : TListItem; MoveUp, SetFocus : Boolean);
    //壓縮儲存 ERPDB
    procedure UploadZipFile2ERP();
    procedure DownloadZipFile2ERP();
    //儲存裁斷部位
    procedure QueryCache_ERPParamValue();
    procedure SaveClickTb_KT_SOPCut();
    procedure ListViewItemClick(IsSaveWebPage:boolean);
    //越文部位名稱
    procedure BWZLVN(Query:TQuery);
    //將網頁檔案發佈到Web跟目錄
    procedure Readini();
    procedure PublicishSOP2Web();
  public
    AppDir:string;
    //Aricle
    Article:string;
    XieXing:string;
    SheHao:string;
    LB:string;
    Selectindex:integer;
    //暫存Cache
    GERP_Value_XML_Last:string;
    { Public declarations }
    procedure ShowWebCallBack(Flag:string);
  end;

var
  SOPDocu: TSOPDocu;

//Web Room Size
const
  OLECMDID_OPTICAL_ZOOM = $0000003F;
  MinZoom = 10;
  MaxZoom = 1000;
  ZoomFactor = 5;
  DefaultZoom = 500;

implementation
   uses DM3,main1,SOPDocu_template1,SOP_BWBH1,SOPFunit1, SOPDocuCopy1, SOPAdd_XXZLS1, FunUnit;
{$R *.dfm}

//JavaScript Call Back
procedure TSOPDocu.ShowWebCallBack(Flag:string);
var  tmpList:TStringlist;
     FName:string;
     HTMLWindow: IHTMLWindow2;
     Text:WideString;
begin
  //編輯Cell
  if ((EditCB.Checked=false) and (MergCB.Checked=false)) then
  begin
    if Flag<>'' then
    begin
      tmpList:=FuncObj.SplitString(Flag,',');
      if tmpList.Count>=2 then
      begin
        if tmpList.Strings[0]='<BWZL>' then
        begin
          SOP_BWBH:=TSOP_BWBH.Create(self);
          SOP_BWBH.JSObjId:=tmpList.Strings[1]; // Html Input id
          SOP_BWBH.ShowModal();
        end;
        //新增文字或圖片
        if tmpList.Strings[0]='<AddImg>' then
        begin
          FName:=SOPFunObj.GetClipboardImag(); //檢查剪貼簿
          //
          HTMLWindow := SOPFunObj.HTMLDoc.parentWindow;
          HTMLWindow.execScript('PFCObj_AddImg('''+FName+''','''','''')', 'JavaScript');
        end;
        if tmpList.Strings[0]='<AddTxt>' then
        begin
          Text:=SOPFunObj.GetClipboardText();
          //
          SOPFunObj.SetJSVariable('ERP_Clipboard_Text',Text);
          HTMLWindow := SOPFunObj.HTMLDoc.parentWindow;
          HTMLWindow.execScript('PFCObj_AddTxt()', 'JavaScript');
        end;
      end;
      tmpList.Free;
    end;
  end;
end;


//
procedure TSOPDocu.FormKeyPress(Sender: TObject; var Key: Char);
begin

 if (Key=#13) then
  begin
    Keybd_Event(VK_LCONTROL, 0, 0, 0);    //Ctrl key down
    Keybd_Event(Ord('M'), MapVirtualKey(Ord('M'), 0), 0, 0); // 'M' key down
    Keybd_Event(Ord('M'), MapVirtualKey(Ord('M'), 0), KEYEVENTF_KEYUP, 0); // 'M' Key up
    Keybd_Event(VK_LCONTROL, 0, KEYEVENTF_KEYUP, 0); // Ctrl key up
  end;

end;

procedure TSOPDocu.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  Readini();
  //
  Article:='';//162066C;
  XieXing:='';//CON18U41L
  SheHao:='';//01
  LB:='Cutting';
  Selectindex:=-1;
  //
  SKULabel.Caption:=Article;
  LBLabel.Caption:=LB;
  //
  SOPFunObj:=TSOPFunit.Create;
  SOPFunObj.XieXing:=XieXing;
  SOPFunObj.SheHao:=SheHao;
  SOPFunObj.LB:=LB;
  SOPFunObj.AppDir:=AppDir;
  SOPFunObj.WebBrowser:=WebBrowser;
  SOPFunObj.ReadRegistry; //Setting registry using IE Version 11
  IsIE_Version:=SOPFunObj.ReadIE_Ver11();
  //
  if  DirectoryExists('\\'+main.ServerIP+'\liy_erp\Html\')=true then
     SOPFunObj.DoCopyDir('\\'+main.ServerIP+'\liy_erp\Html\',AppDir+'Html\');
  //
  FContainer := TExternalContainer.Create(WebBrowser);
  MyProc:=TMyProcClass.Create;
  //
  FZoom:=90;
  //
  SOPDB.Connected:=false;
  SOPDB.AliasName:=DM2.DBBOM.AliasName;
  SOPDB.params.Values['user name']:=DM2.G_SuserName; //DM2.DBBOM.params.Values['user name'];
  SOPDB.params.values['password']:=DM2.G_Spassword; //DM2.DBBOM.params.Values['password'];
  SOPDB.Params.Values['BLOB SIZE'] :='6400';

  DTP1.Date := StartOfTheMonth(Date);
  DTP2.Date := EndOfTheMonth(IncMonth(Date));
end;

procedure TSOPDocu.ShellListView1AddFolder(Sender: TObject;
  AFolder: TShellFolder; var CanAdd: Boolean);
var
  FileExt: string;
begin
  CanAdd := not AFolder.IsFolder;
  if CanAdd then
  begin
    FileExt := ExtractFileExt(AFolder.PathName);
    CanAdd := (FileExt = '.css') or (FileExt = '.png');
  end;
end;

//縮小
procedure TSOPDocu.DecZoom;
begin
  System.Dec(FZoom, ZoomFactor);
  if FZoom < MinZoom then
    FZoom := MinZoom;
  ApplyZoom(FZoom);
end;

//放大
procedure TSOPDocu.IncZoom;
begin
  System.Inc(FZoom, ZoomFactor);
  if FZoom > MaxZoom then
    FZoom := MaxZoom;
  ApplyZoom(FZoom);
end;

//縮放Webbrowser
procedure TSOPDocu.ApplyZoom(ZoomValue: Integer);
var
  pvaIn, pvaOut: OleVariant;
begin
  if ZoomValue = FLastZoom then
    Exit;
  FLastZoom := ZoomValue;
  pvaIn := ZoomValue;
  pvaOut := Null;
  WebBrowser.ControlInterface.ExecWB(OLECMDID_OPTICAL_ZOOM, OLECMDEXECOPT_DONTPROMPTUSER, pvaIn, pvaOut);
end;

//順序清單
procedure TSOPDocu.LoadDoc_SortList();
var FNameList:TStringList;
    FName:string;
    i:integer;
begin
  FName:=AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'\list.txt';
  FNameList:=TStringList.Create;
  if FileExists(FName)=true then FNameList.LoadFromFile(FName);
  LoadListViewItem(FNameList);
  FNameList.Free;
  Selectindex:=-1;
end;

//順序清單
procedure TSOPDocu.SaveDoc_SortList();
var FNameList:TStringList;
    FName:string;
    i:integer;
begin
  if ListView.Items.Count>0 then
  begin
    FName:=AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'\list.txt';
    FNameList:=TStringlist.Create;
    for i:=0 to ListView.Items.Count-1 do
    begin
       FNameList.Add(ListView.Items[i].Caption);
    end;
    FNameList.SaveToFile(FName);
  end;
end;

//載入 document Html清單
procedure TSOPDocu.LoadListViewItem(tmpList:TStringlist);
var SR:TSearchRec;
    tmpItem:TListItem;
    i:integer;
    FName:String;
begin
  try
      if tmpList.Count=0 then  //順序檔案清單空
      begin
        if FindFirst(AppDir+'Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'\'+'*.htm', faArchive, SR) = 0 then
        begin
          SOPDocu.ListView.Items.Clear;
          repeat
              tmpItem:=SOPDocu.ListView.Items.Add;
              tmpItem.Caption:=Copy(SR.Name,1,length(SR.Name)-4);
          until FindNext(SR) <> 0;
          FindClose(SR);
        end;
      end else
      begin
        SOPDocu.ListView.Items.Clear;
        for i:=0 to tmpList.Count-1 do
        begin
          FName:=AppDir+'Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'\'+tmpList.Strings[i]+'.htm';
          if FileExists(FName)=true then
          begin
            tmpItem:=SOPDocu.ListView.Items.Add;
            tmpItem.Caption:=tmpList.Strings[i];
          end;
        end;
      end;
      BB2.Enabled:=true;
      BB3.Enabled:=true;
      BB5.Enabled:=true;
      BB6.Enabled:=true;
      BB7.Enabled:=true;
      BB8.Enabled:=true;
  finally
  end;
end;

procedure TSOPDocu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveDoc_SortList();
  FContainer.Free;
  MyProc.Free;
  SOPFunObj.Free;
  Action:=CaFree;
end;

procedure TSOPDocu.ListViewItemClick(IsSaveWebPage:boolean);
var index:integer;
    HTMLWindow: IHTMLWindow2;
    FileNM:string;
    ERP_PFCOBJ_XML:WideString;
    //
    JSObjId,Value:string;
begin
  if IsClickProcess=true then exit;
  IsClickProcess:=true;
   Screen.Cursor := crHourGlass;//滑鼠指標
  //合併Cell關閉
  EditCB.Checked:=false;
  MergCB.Checked:=false;
  BBT6.Enabled:=false;
  BBT7.Enabled:=false;
  //取得ERP資訊  true 欄位尚未輸入完整
  if (Selectindex>-1) then
  begin
    if SOPFunObj.GetERPParamValue()=true then
    begin
      //IsClickProcess:=false;
      //Exit;
    end;
  end;
  //Save WebPage儲存網頁
  index:=-1;
  if ListView.Selected <> nil then
  begin
    index := ListView.Selected.Index;
    if IsSaveWebPage=true then
    begin
      if ((Selectindex<>index) and (Selectindex>=0)) then
      begin
        SOPFunObj.SaveHtmlXML(Selectindex,ListView.Items[Selectindex].Caption);
        SOPFunObj.SaveDocuHTMLCode(Selectindex,ListView.Items[Selectindex].Caption,false);
      end;
    end;
  end;
  if ( ((Selectindex<>index) or (IsSaveWebPage=false)) and (index>=0)) then
  begin
    IsIELoadComplete:=false;
    WebBrowser.Navigate(AppDir + 'Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'\'+ListView.Items[index].Caption+'.htm');
    SOPFunObj.HTMLDoc := WebBrowser.Document as IHTMLDocument2;
    while not IsIELoadComplete do
      application.ProcessMessages;
    //如果SKU和鞋名空白 Article & XieXimng
    HTMLWindow := SOPFunObj.HTMLDoc.parentWindow;

    JSObjId:='article';
    Value:=StringReplace(XXZL.fieldByName('Article').AsString, '''', '',[rfReplaceAll, rfIgnoreCase]);
    HTMLWindow.execScript('SetERPparamText('''+JSObjId+''','''+Value+''',''1'')', 'JavaScript');
    JSObjId:='xieming';
    Value:=StringReplace(XXZL.fieldByName('XieMing').AsString, '''', '',[rfReplaceAll, rfIgnoreCase]);
    HTMLWindow.execScript('SetERPparamText('''+JSObjId+''','''+Value+''',''1'')', 'JavaScript');
    //
    Selectindex:=index;
    SOPFunObj.LoadHtmlXML(index,ListView.Items[index].Caption);
  end;
  IsClickProcess:=false;
  Screen.Cursor := crDefault; //滑鼠指標
end;

procedure TSOPDocu.ListViewClick(Sender: TObject);
begin
  ListViewItemClick(true);
end;

procedure TSOPDocu.WebBrowserDocumentComplete(Sender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
begin
  IsIELoadComplete:=true;
end;

procedure TSOPDocu.DeleteListViewItem();
var index:integer;
begin
  index:=-1;
  if ListView.Selected <> nil then
  begin
    index := ListView.Selected.Index;
    if (index>=0) then
    begin
      SOPFunObj.DeleteDocHtml(index,ListView.Items[index].Caption);
      ListView.Selected.Delete;
      Selectindex:=-1;
      WebBrowser.Navigate('about:blank');
    end;
    //檢查是否還有Htm  如果沒有的話就刪除css
    if ListView.Items.Count=0 then
    begin
      SOPFunObj.ClearSOPFolderFile();
    end;
    //
  end;
end;

//單一頁面輸出
procedure TSOPDocu.ExcelListViewItem();
var index:integer;
begin
  index:=-1;
  if ListView.Selected <> nil then
  begin
    index := ListView.Selected.Index;
    if (index>=0) then
    begin
      SOPFunObj.Convert2Excel(index,ListView.Items[index].Caption);
    end;
  end;
end;

//全部頁面輸出
procedure TSOPDocu.ExcelListViewItemAll();
var FNList:String;
    i:integer;
begin
  FNList:='';
  for i:=0 to ListView.Items.Count-1 do
  begin
    FNList:=FNList+ListView.Items[i].Caption+',';
  end;
  if length(FNList)>0 then
  begin
    FNList:=Copy(FNList,1,length(FNList)-1);
    SOPFunObj.Convert2Excel(-1,FNList);
  end;
end;

procedure TSOPDocu.FormDestroy(Sender: TObject);
begin
  SOPDocu:=nil;
end;

//Load Init
procedure TSOPDocu.ListViewInit();
begin
  Selectindex:=-1;
  //
  SKULabel.Caption:=Article;
  LBLabel.Caption:=LB;

  //
  SOPFunObj.XieXing:=XieXing;
  SOPFunObj.SheHao:=SheHao;
  SOPFunObj.LB:=LB;
  WebBrowser.Navigate('about:blank');
  ListView.Items.Clear;
  GERP_Value_XML_Last:=SOPFunObj.LoadTxtFile(AppDir+'\Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'\GERP_Value_XML.xml');
  //
  BB2.Enabled:=false;
  BB3.Enabled:=false;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  BB7.Enabled:=false;
  BB8.Enabled:=false;
end;

procedure TSOPDocu.BB1Click(Sender: TObject);
begin
  //Support IE Version 11
  if IsIE_Version=false then
  begin
    Showmessage('Only Suport IE Browser vesion 11');
    Exit;
  end;
  //
  if SOPDocu.Article='' then Exit;
  ListViewInit();
  DownloadZipFile2ERP();
  if SOPFunObj.UnCompressHtml()=true then
  begin
    LoadDoc_SortList();
  end;
end;

procedure TSOPDocu.BB2Click(Sender: TObject);
begin
  SOPDocu_template:=TSOPDocu_template.Create(self);
  SOPDocu_template.ShowModal();
end;

procedure TSOPDocu.BBT4Click(Sender: TObject);
begin
  if Selectindex>-1 then
    IncZoom;
end;

procedure TSOPDocu.BBT5Click(Sender: TObject);
begin
  if Selectindex>-1 then
    DecZoom;
end;

procedure TSOPDocu.SaveExportXLSHTMLCode(IsSingle:boolean);
var i,index:integer;
begin
  //目前頁面
  index:=-1;
  if ListView.Selected <> nil then
  begin
    index := ListView.Selected.Index;
    if (index>=0) then
    begin
      SOPFunObj.SaveDocuHTMLCode(Selectindex,ListView.Items[index].Caption,true);
      SOPFunObj.SaveHtmlXML(Selectindex,ListView.Items[index].Caption);
    end;
  end;
  //其他頁面
  if IsSingle=false then
  begin
    IsClickProcess:=true;
    Screen.Cursor := crHourGlass;//滑鼠指標
    //合併Cell關閉
    EditCB.Checked:=false;
    MergCB.Checked:=false;
    BBT6.Enabled:=false;
    BBT7.Enabled:=false;
    for i:=0 to ListView.Items.Count-1 do
    begin
       if i<>index then
       begin
          //載入
          IsIELoadComplete:=false;
          WebBrowser.Navigate(AppDir + 'Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'\'+ListView.Items[i].Caption+'.htm');
          SOPFunObj.HTMLDoc := WebBrowser.Document as IHTMLDocument2;
          while not IsIELoadComplete do
            application.ProcessMessages;
          //
          Selectindex:=i;
          SOPFunObj.LoadHtmlXML(index,ListView.Items[i].Caption);
          ListView.Items[i].Selected;
          //最後要儲存Export XLS html
          SOPFunObj.SaveDocuHTMLCode(Selectindex,ListView.Items[i].Caption,true);
       end;
    end;
    IsClickProcess:=false;
    Screen.Cursor := crDefault; //滑鼠指標
  end;
end;

procedure TSOPDocu.SaveSelectedXMLHTMLCode();
var index:integer;
    IsClear_TableDispayNone:boolean;
begin
    index:=-1;
    if ListView.Selected <> nil then
    begin
      index := ListView.Selected.Index;
      if (index>=0) then
      begin
        SOPFunObj.SaveHtmlXML(Selectindex,ListView.Items[index].Caption);
        SOPFunObj.SaveDocuHTMLCode(Selectindex,ListView.Items[index].Caption,False);
      end;
    end;
    //
    SaveDoc_SortList();
end;

procedure TSOPDocu.BB7Click(Sender: TObject);
begin
  if messagedlg('Export Excel ?',mtCustom,[mbYes ,mbCancel], 0)=mrYes then
  begin
    if messagedlg('Export Single or All page ?',mtCustom,[mbYes ,mbNo], 0)=mrYes then
    begin
      //儲存XLS目前頁面
      SaveExportXLSHTMLCode(true);
      ExcelListViewItem();
    end else
    begin
      //要載入WebBrowser 和儲存
      SaveExportXLSHTMLCode(false);
      ExcelListViewItemAll();
    end;
  end;
  //
end;

procedure TSOPDocu.BB3Click(Sender: TObject);
begin
  if IsClickProcess=true then exit;
  IsClickProcess:=true;
  DeleteListViewItem();
  IsClickProcess:=false;
end;

procedure TSOPDocu.BBT1Click(Sender: TObject);
begin
  if Selectindex>-1 then
  SOPFunObj.DocHtml_AddImg;
end;

procedure TSOPDocu.BBT2Click(Sender: TObject);
begin
  if Selectindex>-1 then
  SOPFunObj.DocHtml_AddTxt;
end;

procedure TSOPDocu.BBT3Click(Sender: TObject);
begin
  if Selectindex>-1 then
  SOPFunObj.DocHtml_AddLie;
end;

//ListView上下移動
procedure TSOPDocu.ListViewItemMoveUpDown(lv : TListView; Item : TListItem; MoveUp, SetFocus : Boolean);
var
  DestItem : TListItem;
begin
  if (Item = nil) or
     ((Item.Index - 1 < 0) and MoveUp) or
     ((Item.Index + 1 >= lv.Items.Count) and (not MoveUp))
    then Exit;
  lv.Items.BeginUpdate;
  try
    if MoveUp then
      DestItem := lv.Items.Insert(Item.Index - 1)
    else
      DestItem := lv.Items.Insert(Item.Index + 2);
    DestItem.Assign(Item);
    lv.Selected := DestItem;
    Item.Free;
  finally
    lv.Items.EndUpdate;
  end;
  if SetFocus then lv.SetFocus;
  DestItem.MakeVisible(False);
end;

procedure TSOPDocu.SB2Click(Sender: TObject);
begin
  if IsClickProcess=true then exit;
  IsClickProcess:=true;
  ListViewItemMoveUpDown(ListView, ListView.Selected, False, True);//下移
  Selectindex:=-1;
  IsClickProcess:=false;
end;

procedure TSOPDocu.SB1Click(Sender: TObject);
begin
  if IsClickProcess=true then exit;
  IsClickProcess:=true;
  ListViewItemMoveUpDown(ListView, ListView.Selected, True, True);//下移
  Selectindex:=-1;
  IsClickProcess:=false;
end;

procedure TSOPDocu.rename1Click(Sender: TObject);
var value,oldName,newName:string;
    index:integer;
begin
  index:=-1;
  if ListView.Selected <> nil then
  begin
    index := ListView.Selected.Index;
    if (index>=0) then
    begin
      value := inputbox('Rename', 'Please type name', ListView.Items[index].Caption);
      if value<>ListView.Items[index].Caption then
      begin
        //
        oldName:=AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'\'+ListView.Items[index].Caption+'.xml';
        newName:=AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'\'+value+'.xml';
        if( (FileExists(oldName)=true) and (FileExists(newName)=false) ) then
        begin
          RenameFile(oldName,newName);
        end else
        begin
          Showmessage('File is exists, can''t rename ');
          exit;
        end;
        //
        oldName:=AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'\'+ListView.Items[index].Caption+'.htm';
        newName:=AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'\'+value+'.htm';

        if( (FileExists(oldName)=true) and (FileExists(newName)=false) ) then
        begin
          RenameFile(oldName,newName);
        end else
        begin
          Showmessage('File is exists, can''t rename ');
          exit;
        end;
        //
        ListView.Selected.Caption:=value;
      end;
    end;
  end;
  //
end;

procedure TSOPDocu.BB5Click(Sender: TObject);
begin
   if XXZLS.Active=false then
   begin
    Showmessage('Please open erp data ');
    Exit;
   end;
   //
   if messagedlg('Do you want to save HTML ?',mtCustom,[mbYes ,mbCancel], 0)=mrYes then
   begin
     //儲存目前頁面
     SaveSelectedXMLHTMLCode();
   end;
   //儲存到ERP表格資料KT_SOPCut
   SaveClickTb_KT_SOPCut();
   //上傳檔案
   if  SOPFunObj.CompressHtml()=true then
   begin
     UploadZipFile2ERP();
   end;

end;

procedure TSOPDocu.BB6Click(Sender: TObject);
begin
  ListViewItemClick(false);
end;

procedure TSOPDocu.UploadZipFile2ERP();
begin

  with ExeQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select LB FROM KT_SOPDoc ');
    SQL.Add('WHERE XieXing='''+XieXing+''' and SheHao='''+SheHao+''' and LB='''+LB+''' ');
    Active:=true;
    if RecordCount>0 then
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('UPDATE KT_SOPDoc SET SOPFile=:SOPFile,ref_XieXing=null,ref_SheHao=null, USERDATE=GetDate(),USERID='''+main.Edit1.Text+''' ');
      SQL.Add('WHERE XieXing='''+XieXing+''' and SheHao='''+SheHao+''' and LB='''+LB+''' ');
      ParamByName('SOPFile').LoadFromFile(AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'.7z',ftBlob);
      ExecSQL;
    end else
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Insert into KT_SOPDoc (XieXing, Shehao, LB, SOPFile, USERID, USERDATE )  ');
      SQL.Add('Values('''+XieXing+''','''+SheHao+''','''+LB+''',:SOPFile,'''+main.Edit1.Text+''',GetDate()) ');
      ParamByName('SOPFile').LoadFromFile(AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'.7z',ftBlob);
      ExecSQL;
    end;
  end;
  showmessage('Success');
end;

procedure TSOPDocu.DownloadZipFile2ERP();
begin
  with ExeQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select KT_SOPDoc.XieXing,KT_SOPDoc.SOPFile,ref_KT_SOPDoc.SOPFile as ref_SOPFile from KT_SOPDoc  ');
    SQL.Add('left join KT_SOPDoc as ref_KT_SOPDoc on KT_SOPDoc.ref_XieXing=ref_KT_SOPDoc.XieXing and KT_SOPDoc.ref_SheHao=ref_KT_SOPDoc.SheHao ');
    SQL.Add('WHERE KT_SOPDoc.XieXing='''+XieXing+''' and KT_SOPDoc.SheHao='''+SheHao+''' and KT_SOPDoc.LB='''+LB+''' ');
    Active:=true;
    if FieldByName('ref_SOPFile').IsNull=false then
    begin
        if(not DirectoryExists(AppDir+'\Html\'+XieXing+'_'+SheHao+'\'+LB))  then ForceDirectories(AppDir+'\Html\'+XieXing+'_'+SheHao+'\'+LB);
        TBlobField(FieldByName('ref_SOPFile')).SaveToFile(AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'.7z');
    end else
    begin
      if FieldByName('SOPFile').IsNull=false then
      begin
        if(not DirectoryExists(AppDir+'\Html\'+XieXing+'_'+SheHao+'\'+LB))  then ForceDirectories(AppDir+'\Html\'+XieXing+'_'+SheHao+'\'+LB);
        TBlobField(FieldByName('SOPFile')).SaveToFile(AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'.7z');
      end;
    end;
    Active:=false;
  end;

end;

//儲存更新ERP KT_SOPCut表格 不同表格須修改
procedure TSOPDocu.QueryCache_ERPParamValue();
   function UpdateTB_Cache(kerp:string;kvalue:string;erpList:TStringlist;valueList:TStringlist):boolean;
   var i,j:integer;
       kvalueList:TStringlist;
   begin
     // KeyValue Seperate by this ","
     if Pos(',',kvalue)>0 then
     begin
       kvalueList:=Funcobj.SplitString(Kvalue,',');
     end else
     begin
       kvalueList:=TStringlist.Create;
       kvalueList.Add(kvalue);
     end;
     //Update FieldName by Name
     for j:=0 to kvalueList.Count-1 do
     begin
       if XXZLS.Locate(kerp,kvalueList.Strings[j],[]) then
       begin
         XXZLS.Edit;
         for i:=0 to erpList.Count-1 do
         begin
           //funcObj.WriteErrorLog('更新DBH kvalue+':'+erpList.Strings[i]+':'+valueList.Strings[i]);
           if Copy(erpList.Strings[i],1,1)='@' then
           begin
              setlength(MyPara,2);
              MyPara[0]:=kvalueList.Strings[j];
              MyPara[1]:=valueList.Strings[i];
              MyProc.Call(Copy(erpList.Strings[i],2,length(erpList.Strings[i])-1), MyPara);   //函數名稱 KT_SOPCutCC 參數(0) 部位ID 參數(1)
           end else
           begin
             XXZLS.FieldByName(erpList.Strings[i]).Value:=valueList.Strings[i];
           end;
         end;
         XXZLS.Post;
       end;
     end;
     //
     kvalueList.Free;
   end;
var XMLDoc: IXMLDocument;
    NodeElement,Node1,Node2,Node3:IXMLNode;
    kerp,kvalue:string;
    erplist,valuelist:TStringlist;
    i,j:integer;
    SQL,ActionFlag:string;
begin
  if SOPFunObj.GERP_Value_XML<>'' then
  begin
     if XXZLS.Active=false then exit;
     if SOPFunObj.GERP_Value_XML=SOPDocu.GERP_Value_XML_Last then exit;//ERP欄位和上次一樣沒有需要更新。
     erplist:=TStringlist.Create;
     valuelist:=TStringlist.Create;
     //解析合併
     XMLDoc:=TXMLDocument.Create(nil);
     XMLDoc.LoadFromXML(SOPFunObj.GERP_Value_XML);
     SOPFunObj.SaveTxtFile(SOPFunObj.GERP_Value_XML,AppDir+'\Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'\GERP_Value_XML.xml');
     //funcObj.WriteErrorLog('XML:'+SOPFunObj.GERP_Value_XML); //XML參數
     BT4.Click;//Modify按鈕
     NodeElement := XMLDoc.ChildNodes.FindNode('data');
     if (NodeElement <> nil) then
     begin
       for i:=0  to NodeElement.ChildNodes.Count-1 do
       begin
         Node1:=NodeElement.ChildNodes[i];
         kerp:=Node1.ChildNodes.FindNode('kerp').Text;
         kvalue:=Node1.ChildNodes.FindNode('kvalue').Text;
         //
         erplist.Clear;
         valueList.Clear;
         //
         Node2:=Node1.ChildNodes.FindNode('d');
         for j:=0 to Node2.ChildNodes.Count-1 do
         begin
           Node3:=Node2.ChildNodes[j];
           if  Node3<>nil then
           begin
             if Node3.ChildNodes.FindNode('erp')<>nil then
               erplist.Add(Node3.ChildNodes.FindNode('erp').Text);
             if Node3.ChildNodes.FindNode('value')<>nil then
               valuelist.Add(Node3.ChildNodes.FindNode('value').Text);
           end;
         end;
         if ((erplist.Count=valuelist.Count) and (erplist.Count>0)) then
         begin
           UpdateTB_Cache(kerp,kvalue,erplist,valuelist);
         end;
         //
       end;
     end;
     //
     BT5.Click;//Save按鈕
     SOPDocu.GERP_Value_XML_Last:=SOPFunObj.GERP_Value_XML; //ERP欄位和上次一樣沒有需要更新，以避免每次Save都更新資料庫
     erplist.Free;
     valuelist.Free;
  end;
end;

procedure TSOPDocu.BBT6Click(Sender: TObject);
var HTMLWindow: IHTMLWindow2;
begin
  if Selectindex>-1 then
  begin
    HTMLWindow := SOPFunObj.HTMLDoc.parentWindow;
    HTMLWindow.execScript('ClickMergeCell()', 'JavaScript'); //Mergce Cell
  end;
end;

//儲存ERP資料
procedure TSOPDocu.SaveClickTb_KT_SOPCut();
begin
  //取得ERP資訊  true 欄位尚未輸入完整
  if (Selectindex>-1) then
  begin
    if SOPFunObj.GetERPParamValue()=true then  //資訊不完整有問題
    begin
      Exit;
    end else
    begin
      QueryCache_ERPParamValue();
    end;
  end;
end;

procedure TSOPDocu.Button3Click(Sender: TObject);
begin
  if ((CB_Schedule.Checked = false) AND (ArticleEdit.Text = '') AND (BuyNoEdit.Text = '') AND (XieXingEdit.Text = '') AND (JiJieEdit.Text = '')) then
  begin
    ShowMessage('At least one search condition is required');
    Exit;
  end;

  with XXZL do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT XXZL.XieXing, XXZL.SheHao, XXZL.Article, XXZL.XieMing, CASE WHEN KT_SOPDoc.LB IS NOT NULL THEN ISNULL(XL.Article, XXZL.Article) ELSE NULL END AS LB FROM XXZL');
    SQL.Add('LEFT JOIN KT_SOPDoc ON KT_SOPDoc.XieXing = XXZL.XieXing AND KT_SOPDoc.SheHao = XXZL.SheHao');
    SQL.Add('LEFT JOIN XXZL XL ON XL.XieXing = KT_SOPDoc.Ref_XieXing AND XL.Shehao = KT_SOPDoc.Ref_SheHao');
    if (CB_Schedule.Checked) then
    begin
      SQL.Add('LEFT JOIN (');
      SQL.Add('  SELECT DISTINCT DDZL.XieXing, DDZL.SheHao FROM schedule_crawler AS SC');
      SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
      SQL.Add('  WHERE SC.schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
      SQL.Add(') AS SC ON SC.XieXing = XXZL.XieXing AND SC.SheHao = XXZL.SheHao');
    end;
    SQL.Add('WHERE XXZL.ARTICLE LIKE ''' + ArticleEdit.Text + '%'' AND XXZL.XieXing LIKE ''' + XieXingEdit.Text + '%'' AND XXZL.SheHao LIKE ''' + SheHaoEdit.Text + '%'' AND XXZL.JiJie LIKE ''' + JIJIEEdit.Text + '%''');
    if (BuyNoEdit.Text <> '') then
      SQL.Add('AND EXISTS (SELECT XieXing, SheHao FROM DDZL WHERE DDZL.XieXing = XXZL.XieXing AND DDZL.SheHao = XXZL.SheHao AND DDZL.BUYNO LIKE ''' + BuyNoEdit.Text + '%'' GROUP BY XieXing, SheHao)');
    if (CB_Schedule.Checked) then
      SQL.Add('AND SC.XieXing IS NOT NULL');
    SQL.Add('ORDER BY XXZL.XieXing, XXZL.SheHao');
    Active:=true;
  end;

  with XXZLS do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select * from (');
    SQL.Add('  select XXZLS.XieXing, XXZLS.SheHao, XXZLS.BWBH, bwzl.ywsm, KT_SOPcut.BWBH as SOPBWBH, KT_SOPcut.Type, KT_SOPcut.joinnum,');
    SQL.Add('  KT_SOPcut.LRcom, KT_SOPcut.Layer, KT_SOPcut.piece, KT_SOPcut.PartID, KT_SOPcut.userdate, KT_SOPcut.userid, KT_SOPcut.YN,');
    SQL.Add('  KT_SOPcut.IMGName, XXBWFLS.DFL, CLZL.YWPM, BWZL.ZWSM, XXZLS.CSBH, ZSZL.ZSJC, CLZL.CLDH, bwzlvn.vwsm, XXZLS.BWLB from XXZLS');
    SQL.Add('  left join CLZL on CLZL.cldh = XXZLS.CLBH');
    SQL.Add('  left join xxbwfl on xxbwfl.xiexing = XXZLS.xiexing and xxbwfl.bwbh = XXZLS.bwbh');
    SQL.Add('  left join XXBWFLS on XXBWFLS.FLBH = xxbwfl.FLBH');
    SQL.Add('  left join bwzl on XXZLS.BWBH = bwzl.bwdh');
    SQL.Add('  left join KT_SOPcut on XXZLS.BWBH = KT_SOPcut.BWBH and XXZLS.XieXing = KT_SOPcut.XieXing and XXZLS.SheHao = KT_SOPcut.SheHao');
    SQL.Add('  left join ZSZL on ZSZL.zsdh = XXZLS.CSBH');
    SQL.Add('  left join BWZLVN on BWZLVN.BWDH = bwzl.BWDH');
    SQL.Add('  where XXZLS.XieXing = :XieXing and XXZLS.SheHao = :SheHao');
    SQL.Add('  union all');
    SQL.Add('  select KT_SOPcut.XieXing, KT_SOPcut.SheHao, KT_SOPcut.BWBH, bwzl.ywsm, KT_SOPcut.BWBH as SOPBWBH, KT_SOPcut.Type, KT_SOPcut.joinnum,');
    SQL.Add('  KT_SOPcut.LRcom, KT_SOPcut.Layer, KT_SOPcut.piece, KT_SOPcut.PartID, KT_SOPcut.userdate, KT_SOPcut.userid, KT_SOPcut.YN, KT_SOPcut.IMGName,');
    SQL.Add('  XXBWFLS.DFL, null as YWPM, BWZL.ZWSM, XXZLS.CSBH, null as ZSJC, null as CLDH, bwzlvn.vwsm, XXZLS.BWLB from KT_SOPcut');
    SQL.Add('  left join xxbwfl on xxbwfl.xiexing = KT_SOPcut.xiexing and xxbwfl.bwbh = KT_SOPcut.bwbh');
    SQL.Add('  left join XXBWFLS on XXBWFLS.FLBH = xxbwfl.FLBH');
    SQL.Add('  left join bwzl on KT_SOPcut.BWBH = bwzl.bwdh');
    SQL.Add('  left join BWZLVN on BWZLVN.BWDH = bwzl.BWDH');
    SQL.Add('  left join XXZLS on xxbwfl.xiexing = XXZLS.xiexing and xxbwfl.bwbh = XXZLS.bwbh');
    SQL.Add('  where KT_SOPcut.XieXing = :XieXing  and KT_SOPcut.SheHao = :SheHao');
    SQL.Add('  and not exists (Select BWBH from XXZLS where XXZLS.XieXing = :XieXing and XXZLS.SheHao = :SheHao and XXZLS.BWBH = KT_SOPcut.BWBH and XXZLS.XieXing = KT_SOPcut.XieXing and XXZLS.SheHao = KT_SOPcut.SheHao)');
    SQL.Add(') AS XXZL');
    if (CB1.Checked = false) then
      SQL.Add('WHERE CSBH NOT IN (''JNGR2'')');
    SQL.Add('order by IsNull(PartID, ''Z''), case when DFL = ''C'' then 1 else 2 end, BWBH');
    Active := true;
  end;
  
  KT_SOPCutS.Active:=true;
  BT13.Enabled:=true;
end;

procedure TSOPDocu.XXZLSAfterOpen(DataSet: TDataSet);
begin
  if XXZLS.RecordCount>0 then
  begin
    BT2.Enabled:=true;
    BT3.Enabled:=true;
    BT4.Enabled:=true;
    BD1.Enabled:=true;
    BD2.Enabled:=true;
    BD3.Enabled:=true;
    BD6.Enabled:=true;
    BD7.Enabled:=true;
    SOPCutSCopy.Enabled:=true;
    SOPCutSPaste.Enabled:=true;
    //
    with ExeQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select Distinct SIZE from KT_SOPCutS where XieXing='''+XXZLS.FieldByName('XieXing').AsString+''' and SheHao='''+XXZLS.FieldByName('SheHao').AsString+''' order by SIZE ');
      Active:=true;
      DBGridEh2.Columns[1].PickList.Clear;
      While not Eof do
      begin
        DBGridEh2.Columns[1].PickList.Add(FieldByName('SIZE').AsString);
        Next;
      end;
      Active:=false;
    end;
  end;
end;

procedure TSOPDocu.BT4Click(Sender: TObject);
begin
  //
  with XXZLS do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    Edit;
  end;
  //
  BT5.Enabled:=true;
  BT6.Enabled:=true;
end;

procedure TSOPDocu.BT6Click(Sender: TObject);
begin
  with XXZLS do
  begin
    Active:=false;
    RequestLive:=false;
    CachedUpdates:=false;
    Active:=true;
  end;
  BT5.Enabled:=false;
  BT6.Enabled:=false;
  KT_SOPCutS.Active:=true;
  DBGrid1.columns[0].ButtonStyle:=cbsNone;
end;
//儲存越文部位名稱
procedure TSOPDocu.BWZLVN(Query:TQuery);
begin
  if Query.FieldByName('VWSM').OldValue<>Query.FieldByName('VWSM').Value then
  begin
    with ExeQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('if exists(select BWDH from bwzlvn where bwdh='''+Query.FieldByName('BWBH').AsString+''')');
      SQL.Add('BEGIN ');
      SQL.Add('  Update bwzlvn set vwsm='''+Query.FieldByName('VWSM').AsString+''',USERID='''+main.Edit1.Text+''',USERDATE=GetDate() where bwdh='''+Query.FieldByName('BWBH').AsString+''' ');
      SQL.Add('END ELSE');
      SQL.Add('BEGIN');
      SQL.Add('  Insert into bwzlvn ');
      SQL.Add('    (bwdh, vwsm, USERID, USERDATE, YN) ');
      SQL.Add('  Values');
      SQL.Add('    ('''+Query.FieldByName('BWBH').AsString+''','''+Query.FieldByName('VWSM').AsString+''','''+main.Edit1.Text+''',GETDATE(),1)');
      SQL.Add('END ');
      ExecSQL();
    end;
  end;
end;

procedure TSOPDocu.BT5Click(Sender: TObject);
var i:integer;
begin
   //
   KT_SOPCutS.Active:=false;
   XXZLS.First;
   for i:=0 to XXZLS.RecordCount-1 do
   begin
     case XXZLS.updatestatus of
       usinserted:
       begin
            XXZLS.edit;
            XXZLS.FieldByName('XieXing').Value:=XXZL.FieldByName('XieXing').Value;
            XXZLS.FieldByName('SheHao').Value:=XXZL.FieldByName('SheHao').Value;
            if XXZLS.FieldByName('Layer').IsNull=false then
            begin
              if XXZLS.FieldByName('piece').IsNull=true then
                XXZLS.FieldByName('piece').Value:='2';
              if XXZLS.FieldByName('joinnum').IsNull=true then
                XXZLS.FieldByName('joinnum').Value:=1;
            end;
            XXZLS.FieldByName('LRcom').Value:=true;
            XXZLS.FieldByName('userID').Value:=main.edit1.text;
            XXZLS.FieldByName('userdate').Value:=Date;
            XXZLS.FieldByName('YN').Value:=1;
            XXZLSUpd.Apply(ukinsert);
       end;
       usmodified:
       begin
         if XXZLS.FieldByName('SOPBWBH').IsNull then
         begin
            XXZLS.edit;
            if XXZLS.FieldByName('Layer').IsNull=false then
            begin
              if XXZLS.FieldByName('piece').IsNull=true then
                XXZLS.FieldByName('piece').Value:='2';
              if XXZLS.FieldByName('joinnum').IsNull=true then
                XXZLS.FieldByName('joinnum').Value:=1;
            end;
            XXZLS.FieldByName('LRcom').Value:=true;
            XXZLS.FieldByName('userID').Value:=main.edit1.text;
            XXZLS.FieldByName('userdate').Value:=Date;
            XXZLS.FieldByName('YN').Value:=1;
            XXZLSUpd.Apply(ukinsert);
         end else
         begin
            if XXZLS.FieldByName('YN').Value='0' then
            begin
              XXZLSUpd.Apply(ukDelete);
            end else
            begin
              XXZLS.edit;
              if XXZLS.FieldByName('Layer').IsNull=false then
              begin
                if XXZLS.FieldByName('piece').IsNull=true then
                  XXZLS.FieldByName('piece').Value:='2';
                if XXZLS.FieldByName('joinnum').IsNull=true then
                  XXZLS.FieldByName('joinnum').Value:=1;
              end;
              XXZLS.FieldByName('userID').Value:=main.edit1.text;
              XXZLS.FieldByName('userdate').Value:=Date;
              XXZLSUpd.Apply(ukmodify);
            end;
         end;
       end;
     end;
     //越文部位
     BWZLVN(XXZLS);
     XXZLS.Next;
   end;
  //
  with ExeQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select BWBH from KT_SOPCut where XieXing='''+XXZL.FieldByName('XieXing').AsString+''' and SheHao='''+XXZL.FieldByName('SheHao').AsString+''' and layer is not null ');
    Active:=true;
    if RecordCount>0 then
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('IF NOT EXISTS (Select LB from KT_SOPDoc where XieXing='''+XXZL.FieldByName('XieXing').AsString+''' and SheHao='''+XXZL.FieldByName('SheHao').AsString+''' and LB=''Cutting'' )');
      SQL.Add('Begin');
      SQL.Add('  Insert into KT_SOPDoc');
      SQL.Add('  Select  XieXing,SheHao,''Cutting'' as LB,null,null,null,'''+main.Edit1.Text+''' as USERID,MAX(USERDATE) as USERDATE,''1'' as YN from KT_SOPcut');
      SQL.Add('  where XieXing='''+XXZL.FieldByName('XieXing').AsString+''' and SheHao='''+XXZL.FieldByName('SheHao').AsString+''' ');
      SQL.Add('  Group by XieXing,SheHao');
      SQL.Add('End');
      ExecSQL;
    end else
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Delete from KT_SOPDoc where XieXing='''+XXZL.FieldByName('XieXing').AsString+''' and SheHao='''+XXZL.FieldByName('SheHao').AsString+''' and LB=''Cutting'' ');
      ExecSQL;
    end;
    Active:=false;
  end;
  XXZLS.active:=false;
  XXZLS.cachedupdates:=false;
  XXZLS.requestlive:=false;
  XXZLS.active:=true;
  BT5.Enabled:=false;
  BT6.Enabled:=false;
  KT_SOPCutS.Active:=true;
  DBGrid1.columns[0].ButtonStyle:=cbsNone;
end;
//
procedure TSOPDocu.XXZLAfterScroll(DataSet: TDataSet);
begin
  //
  Article:=XXZL.FieldByname('Article').AsString;
  XieXing:=XXZL.FieldByname('XieXing').AsString;
  SheHao:=XXZL.FieldByname('SheHao').AsString;
  LB:='Cutting';
  ListViewInit();
end;

procedure TSOPDocu.DBGridEh1DblClick(Sender: TObject);
begin
  //PC1.ActivePageIndex:=1;

  if (DBGridEh1.SelectedField.FieldName = 'SOPFile') and (XXZL.FieldByName('SOPFile').AsString <> '') and (BB5.Enabled = false) then
  ShellExecute(0, 'open', PChar(DCTFilePath+XXZL.FieldByName('Article').AsString+'.pdf'), nil, nil, SW_Normal);

end;

procedure TSOPDocu.BBT7Click(Sender: TObject);
var HTMLWindow: IHTMLWindow2;
begin
  if Selectindex>-1 then
  begin
    HTMLWindow := SOPFunObj.HTMLDoc.parentWindow;
    HTMLWindow.execScript('ClickSplitCell()', 'JavaScript'); //Mergce Cell
  end;
end;

procedure TSOPDocu.MergCBClick(Sender: TObject);
begin
  if MergCB.Checked=true then
  begin
    SOPFunObj.SetJSVariable('ERP_Cell_Ismerge','Y');
    BBT6.Enabled:=true;
    BBT7.Enabled:=true;
    BBT8.Enabled:=true;
    BBT9.Enabled:=true;
    SOPFunObj.SetJSVariable('ERP_Cell_IsEdit','N');
  end;
end;

procedure TSOPDocu.EditCBClick(Sender: TObject);
begin
  if EditCB.Checked=true then
  begin
    SOPFunObj.SetJSVariable('ERP_Cell_Ismerge','N');
    BBT6.Enabled:=false;
    BBT7.Enabled:=false;
    BBT8.Enabled:=false;
    BBT9.Enabled:=false;
    SOPFunObj.SetJSVariable('ERP_Cell_IsEdit','Y');
  end;
end;

procedure TSOPDocu.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

  if Not XXZl.FieldByName('LB').IsNull  then
  begin
    if XXZl.FieldByName('Article').AsString=XXZl.FieldByName('LB').AsString then
      DBGridEh1.canvas.font.color:=clBlue;
    if XXZl.FieldByName('Article').AsString<>XXZl.FieldByName('LB').AsString then
      DBGridEh1.canvas.font.color:=clGreen;
  end;

end;

procedure TSOPDocu.BD6Click(Sender: TObject);
var IsInsert:boolean;
    SKUGend:string;
begin

 //
 IsInsert:=false;
 if KT_SOPCutS.RecordCount>0 then
 begin
    if messagedlg('Do you want to import again ?',mtCustom,[mbYes ,mbCancel], 0)=mrYes then
    begin
       with ExeQuery do
       begin
         Active:=false;
         SQL.Clear;
         SQL.Add('Delete from KT_SOPCutS ');
         SQL.Add('where XieXing='''+XXZLS.FieldByName('XieXing').AsString+''' ');
         SQL.Add('      and SheHao='''+XXZLS.FieldByName('SheHao').AsString+''' ');
        ExecSQL();
       end;
       IsInsert:=true;
    end;
 end else
 begin
   IsInsert:=true;
 end;
 if IsInsert=true then
 begin
   with ExeQuery do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Insert into KT_SOPCutS');
     SQL.Add('Select '''+XXZLS.FieldByName('XieXing').AsString+''' as XieXing,'''+XXZLS.FieldByName('SheHao').AsString+'''as SheHao, ');
     SQL.Add('       '''+XXZLS.FieldByName('BWBH').AsString+''' as BWBH,XXCC as SIZE,GJCC as XXCC,'''+main.Edit1.Text+''' as USERID,GetDate() as USERDATE,1 as YN from  XXGJS where XieXing='''+XXZLS.FieldByName('XieXing').AsString+''' and GJLB=''100'' ');
     ExecSQL();
   end;
   Showmessage('Success');
   KT_SOPCutS.Active:=false;
   KT_SOPCutS.Active:=true;
 end;
 //
end;

procedure TSOPDocu.BD2Click(Sender: TObject);
begin
  with KT_SOPCutS do
  begin
    requestlive:=true;
    cachedupdates:=true;
  end;
  BD4.Enabled:=true;
  BD5.Enabled:=true;
end;

procedure TSOPDocu.BD5Click(Sender: TObject);
begin
  with KT_SOPCutS do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BD4.Enabled:=true;
  BD5.Enabled:=true;
end;

procedure TSOPDocu.BD4Click(Sender: TObject);
var i:integer;
begin
  //
  KT_SOPCutS.first;
  for i:=1 to KT_SOPCutS.RecordCount do
  begin
    case KT_SOPCutS.updatestatus of
      usinserted:
      begin
          if (KT_SOPCutS.FieldByName('SIZE').IsNull=true) then
          begin
            KT_SOPCutS.Delete;
          end else
          begin
            KT_SOPCutS.edit;
            KT_SOPCutS.FieldByName('XieXing').Value:=XXZLS.FieldByName('XieXing').AsString;
            KT_SOPCutS.FieldByName('SheHao').Value:=XXZLS.FieldByName('SheHao').AsString;
            KT_SOPCutS.FieldByName('BWBH').Value:=XXZLS.FieldByName('BWBH').AsString;
            KT_SOPCutS.FieldByName('userID').Value:=main.edit1.text;
            KT_SOPCutS.FieldByName('userdate').Value:=Date();
            KT_SOPCutS.FieldByName('YN').Value:='1';
            KT_SOPCutSUpd.apply(ukinsert);
          end;
      end;
      usmodified:
      begin
        if KT_SOPCutS.fieldbyname('YN').value='0'then
        begin
          KT_SOPCutSUpd.apply(ukdelete);
        end else
        begin
          KT_SOPCutS.edit;
          KT_SOPCutS.FieldByName('userID').Value:=main.edit1.text;
          KT_SOPCutS.FieldByName('userdate').Value:=Date();
          KT_SOPCutSUpd.apply(ukmodify);
        end;
      end;
    end;

    KT_SOPCutS.Next;
  end;
  //
  KT_SOPCutS.active:=false;
  KT_SOPCutS.cachedupdates:=false;
  KT_SOPCutS.requestlive:=false;
  KT_SOPCutS.active:=true;
  BD4.enabled:=false;
  BD5.enabled:=false;
end;

procedure TSOPDocu.BD1Click(Sender: TObject);
begin
  with KT_SOPCutS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BD4.Enabled:=true;
  BD5.Enabled:=true;  
end;

procedure TSOPDocu.BD3Click(Sender: TObject);
begin
  with KT_SOPCutS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  //
  BD4.Enabled:=true;
  BD5.Enabled:=true;
end;

procedure TSOPDocu.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if KT_SOPCutS.FieldByName('YN').value='0' then
  begin
    DBGridEh2.canvas.font.color:=clred;
  end;
end;

procedure TSOPDocu.BBT8Click(Sender: TObject);
var HTMLWindow: IHTMLWindow2;
begin
  if Selectindex>-1 then
  begin
    HTMLWindow := SOPFunObj.HTMLDoc.parentWindow;
    HTMLWindow.execScript('ClickCopyCell()', 'JavaScript'); //Mergce Cell
  end;
end;

procedure TSOPDocu.BBT9Click(Sender: TObject);
var HTMLWindow: IHTMLWindow2;
begin
  if Selectindex>-1 then
  begin
    HTMLWindow := SOPFunObj.HTMLDoc.parentWindow;
    HTMLWindow.execScript('ClickPastCell()', 'JavaScript'); //Mergce Cell
  end;
end;

procedure TSOPDocu.BT3Click(Sender: TObject);
begin
  if KT_SOPCutS.recordcount>0 then
  begin
    showmessage('Pls delete the order detail first.');
    abort;
  end;
  with XXZLS do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  //
  BT5.Enabled:=true;
  BT6.Enabled:=true;
end;

procedure TSOPDocu.DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  //
  if  XXZlS.FieldByName('DFL').Value='C'  then
  begin
    DBGrid1.canvas.font.color:=clBlue;
  end;
  if  XXZlS.FieldByName('YN').Value='0'  then
  begin
    DBGrid1.canvas.font.color:=clRed;
  end;
  //
end;

procedure TSOPDocu.BT14Click(Sender: TObject);
var JSObjId,Value:string;
    NowPagID,PageID,PID,PIDNum:string;
    HTMLWindow: IHTMLWindow2;
    i,j:integer;
    //紀錄多個部位用在同一個PID
    PIDList,BWBHList:TStringlist;
begin
  if XXZLS.Active=false then exit;
  if XXZLS.RequestLive=true then exit;
  if ((SOPFunObj.HTMLDoc<>nil) and (Selectindex>-1)) then
  begin
    XXZLS.First;
    HTMLWindow := SOPFunObj.HTMLDoc.parentWindow;
    NowPagID:='';
    PIDList:=TStringlist.Create;
    BWBHList:=TStringlist.Create;

    for i:=0 to XXZLS.RecordCount-1 do
    begin
      PID:=XXZLS.fieldByName('PartID').AsString;
      if PID<>'' then
      begin
        PageID:=Copy(PID,1,length(PID)-1);
        PIDNum:=Copy(PID,length(PID),1);
        //點選Load WebPage
        if NowPagID<>PageID then
        for j:=0 to ListView.Items.Count-1 do
        begin
           if ListView.Items[j].Caption=PageID then
           begin
             ListView.Items[j].Selected:=true;
             ListViewItemClick(true);
             NowPagID:=ListView.Items[j].Caption;
             //Article & XieXimng
             JSObjId:='article';
             Value:=XXZL.fieldByName('Article').AsString;
             HTMLWindow.execScript('SetERPparamText('''+JSObjId+''','''+Value+''',''1'')', 'JavaScript');
             JSObjId:='xieming';
             Value:=XXZL.fieldByName('XieMing').AsString;
             HTMLWindow.execScript('SetERPparamText('''+JSObjId+''','''+Value+''',''1'')', 'JavaScript');
             //
             break;
           end;
        end;
        if NowPagID<>'' then
        begin
          //多個部位用在同一個PID
          JSObjId:='erp'+PIDNum+'1';
          Value:=XXZLS.fieldByName('BWBH').AsString;
          j:=PIDList.IndexOf(PID);
          if  j>-1  then
          begin
           BWBHList.Strings[j]:=BWBHList.Strings[j]+','+Value;
           Value:=BWBHList.Strings[j];
          end else
          begin
            PIDList.Add(PID);
            BWBHList.Add(Value);
          end;
          HTMLWindow.execScript('SetERPparamValue('''+JSObjId+''','''+Value+''')', 'JavaScript');

          //部位名稱
          JSObjId:='erp'+PIDNum;
          Value:=XXZLS.fieldByName('YWSM').AsString+XXZLS.fieldByName('ZWSM').AsString;
          HTMLWindow.execScript('SetERPparamText('''+JSObjId+''','''+Value+''',''0'')', 'JavaScript');
          //層數
          JSObjId:='erp'+PIDNum+'3';
          Value:=XXZLS.fieldByName('Layer').AsString;
          HTMLWindow.execScript('SetERPparamText('''+JSObjId+''','''+Value+''',''1'')', 'JavaScript');
          //左右腳共用數
          JSObjId:='erp'+PIDNum+'5';
          if XXZLS.fieldByName('LRcom').Value=true then Value:='1' else Value:='0';
          HTMLWindow.execScript('SetERPparamText_LRcom('''+JSObjId+''','''+Value+''')', 'JavaScript');
        end;
      end;
      XXZLS.Next;
    end;
    PIDList.Free;
    BWBHList.Free;
  end;

end;

procedure TSOPDocu.CopyArticle1Click(Sender: TObject);
begin
  if XXZL.Active=false then Exit;
  if SOPDocuCopy=nil then
  begin
    SOPDocuCopy:=TSOPDocuCopy.Create(self);
    SOPDocuCopy.SetArticleInfo(XXZL.FieldByName('XieXing').AsString,XXZL.FieldByName('SheHao').AsString);
    SOPDocuCopy.XieXingEdit.Text:=XXZL.FieldByName('XieXing').AsString;
    SOPDocuCopy.Show;
  end;
end;

procedure TSOPDocu.EditObjctCBClick(Sender: TObject);
begin
  if EditObjctCB.Checked=true then
  begin
    SOPFunObj.SetJSVariable('ERP_Cell_Ismerge','N');
    BBT6.Enabled:=false;
    BBT7.Enabled:=false;
    BBT8.Enabled:=false;
    BBT9.Enabled:=false;
    SOPFunObj.SetJSVariable('ERP_Cell_IsEdit','N');
  end;
end;
//
procedure TSOPDocu.readini();
var MyIni :Tinifile;
begin
  BOM_N21_WebRoot:='\\192.168.23.5\CutDispatch\';
  DCTFilePath := '\\192.168.123.112\mes\SOP\';
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      BOM_N21_WebRoot:=MyIni.ReadString('SOP','BOM_N21_WebRoot','\\192.168.23.5\CutDispatch\');
      DCTFilePath:=MyIni.ReadString('SOP','BOM_N22_DCTFilePath','\\192.168.123.112\mes\SOP\');
    finally
      MyIni.Free;
    end;
  end;

end;

//複製檔案到Web跟目錄
procedure TSOPDocu.PublicishSOP2Web();
begin
  if  DirectoryExists(BOM_N21_WebRoot)=true then
  begin
     if not DirectoryExists(BOM_N21_WebRoot+XXZL.fieldByName('XieXing').AsString+'_'+XXZL.FieldByName('SheHao').AsString+'\Cutting\') then
        ForceDirectories(BOM_N21_WebRoot+XXZL.fieldByName('XieXing').AsString+'_'+XXZL.FieldByName('SheHao').AsString+'\Cutting\');
     SOPFunObj.DoCopyDir(AppDir+'Html\'+XXZL.fieldByName('XieXing').AsString+'_'+XXZL.FieldByName('SheHao').AsString+'\Cutting\',BOM_N21_WebRoot+XXZL.fieldByName('XieXing').AsString+'_'+XXZL.FieldByName('SheHao').AsString+'\Cutting\');
  end;
  //
  if messagedlg('Open FireFox Web Preview ?',mtCustom,[mbYes ,mbCancel], 0)=mrYes then
  begin
    ShellExecute(Handle, 'open', 'firefox', Pchar('http://192.168.23.5:84/'+XXZL.fieldByName('XieXing').AsString+'_'+XXZL.FieldByName('SheHao').AsString+'/Cutting/p1.htm?load='), nil, SW_SHOWNORMAL);
  end;
  showmessage('Publicish to Web OK');
end;
//
procedure TSOPDocu.BB8Click(Sender: TObject);
begin
    PublicishSOP2Web();
end;

procedure TSOPDocu.PC1Change(Sender: TObject);
begin
  if PC1.ActivePage=TabSheet2 then
  begin
    KeyPreview := false;
  end else
  begin
    KeyPreview := true;
  end;
end;

procedure TSOPDocu.SOPCutSCopyClick(Sender: TObject);
begin
  if XXZL.Active=false then exit;
  if KT_SOPCutS.Active=true then
  SOPCuts_BWBH_Copy:=KT_SOPCutS.FieldByName('BWBH').AsString;
end;

procedure TSOPDocu.SOPCutSPasteClick(Sender: TObject);
begin
   if XXZL.Active=false then exit;
   if messagedlg('Do you want to Copy SIZE from '+SOPCuts_BWBH_Copy+' ?',mtCustom,[mbYes ,mbCancel], 0)=mrYes then
   begin
      KT_SOPCutS.Active:=false;
      with ExeQuery do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Delete from KT_SOPCutS where XieXing='''+XXZLS.FieldByName('XieXing').AsString+''' and SheHao='''+XXZLS.FieldByName('SheHao').AsString+''' and BWBH='''+XXZLS.FieldByName('BWBH').AsString+''' ');
        SQL.Add('Insert into KT_SOPCutS ');
        SQL.Add('select XieXing,SheHao,'''+XXZLS.FieldByName('BWBH').AsString+''' as BWBH,SIZE,XXCC,USERID,USERDATE,YN ');
        SQL.Add('from KT_SOPCutS ');
        SQL.Add('where  XieXing='''+XXZLS.FieldByName('XieXing').AsString+''' and SheHao='''+XXZLS.FieldByName('SheHao').AsString+''' and BWBH='''+SOPCuts_BWBH_Copy+''' ');
        ExecSQL();
      end;
      Showmessage('Success');
      KT_SOPCutS.Active:=true;
   end;
end;

procedure TSOPDocu.BT13Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
begin
    tdbgh := SelectDBGrid;
    if (tdbgh is TDBGridEh) then
      if SaveDialog1.Execute then
      begin
        case SaveDialog1.FilterIndex of
          1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
          2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
          3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
          4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
          5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
        else
          ExpClass := nil; Ext := '';
        end;
        if ExpClass <> nil then
        begin
          if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
            SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
          SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,true);
          if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
            shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
        end;
      end;

end;

procedure TSOPDocu.DBGridEh1CellClick(Column: TColumnEh);
begin
  SelectDBGrid:=DBGridEh1;
end;

procedure TSOPDocu.DBGrid1CellClick(Column: TColumnEh);
begin
  SelectDBGrid:=DBGrid1;
end;

procedure TSOPDocu.DBGridEh2CellClick(Column: TColumnEh);
begin
  SelectDBGrid:=DBGridEh2;
end;

procedure TSOPDocu.BD7Click(Sender: TObject);
begin
  with KT_SOPCutS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    First;
    while not eof do
    begin
     edit;
     fieldbyname('YN').Value:='0';
     next;
    end;
  end;
  //
  BD4.Enabled:=true;
  BD5.Enabled:=true;
end;

procedure TSOPDocu.BT2Click(Sender: TObject);
begin
  //
  with XXZLS do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    Insert;
  end;
  //
  BT5.Enabled:=true;
  BT6.Enabled:=true;
  DBGrid1.columns[0].ButtonStyle:=cbsEllipsis;
  
end;

procedure TSOPDocu.DBGrid1EditButtonClick(Sender: TObject);
begin
   if  DBGrid1.SelectedField.FieldName='BWBH' then
   begin
     SOPAdd_XXZLS:=TSOPAdd_XXZLS.Create(self);
     SOPAdd_XXZLS.Show;
   end;
end;

procedure TSOPDocu.DownSOPClick(Sender: TObject);
begin
  if not XXZL.FieldByName('Article').IsNull then
  begin
    SaveDialog2.FileName := XXZL.FieldByName('Article').AsString+'.pdf';
    if FileExists(DCTFilePath+XXZL.FieldByName('Article').AsString+'.pdf') then
    begin
      if not SaveDialog2.Execute then
        abort;

      try
         if trim(SaveDialog2.FileName)='' then
             SaveDialog2.FileName:= XXZL.FieldByName('Article').AsString+'.pdf';

            CopyFile(PChar(DCTFilePath+XXZL.FieldByName('Article').AsString+'.pdf'), PChar(SaveDialog2.FileName), False);
          Showmessage('DownLoad success!');
          {if Application.MessageBox('DownLoad success ! Do you want to open the download file?','Open File',MB_YESNO) = IDYES then
              shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);  }

      except
        showmessage('Can not Download ! Try again !');
      end;
    end else
    begin
       showmessage('No file !');
       abort;
    end;
  end;  
end;

procedure TSOPDocu.XXZLCalcFields(DataSet: TDataSet);
begin
   if FileExists(DCTFilePath+XXZL.FieldByName('Article').AsString+'.pdf') then
   begin
      XXZL.FieldByName('SOPFile').AsString:= XXZL.FieldByName('Article').AsString;
   end;
end;

end.
