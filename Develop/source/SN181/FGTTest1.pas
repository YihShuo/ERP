unit FGTTest1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids , StdCtrls, DBCtrls, Mask, Buttons,
  ExtCtrls,comobj, GridsEh, DBGridEh, ComCtrls, Menus, ShellAPI, Zlib,DBGridEhImpExp,
  OleServer, ExcelXP;

type
  TFGTTest = class(TForm)
    Panel1: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    Button1: TButton;
    Qry_Edit: TQuery;
    DS_Edit: TDataSource;
    bbt6: TBitBtn;
    edt1: TEdit;
    lbl2: TLabel;
    lbl1: TLabel;
    lbl3: TLabel;
    UpdateSQL1: TUpdateSQL;
    Label1: TLabel;
    edt3: TEdit;
    Label2: TLabel;
    edt4: TEdit;
    Qry_EditArticle: TStringField;
    Qry_EditStage: TStringField;
    Qry_EditSendDate: TDateTimeField;
    Qry_EditFGT01: TStringField;
    Qry_EditFGT02: TStringField;
    Qry_EditFGT04: TStringField;
    Qry_EditFGT05: TStringField;
    Qry_EditFGT08: TStringField;
    Qry_EditFGT13: TStringField;
    Qry_EditFGT07_13: TStringField;
    Qry_EditFGT13_14: TStringField;
    Qry_EditFGT22: TStringField;
    Qry_EditFGT64: TStringField;
    Qry_EditFGT68: TStringField;
    Qry_EditFGT30: TStringField;
    Qry_EditRESULT: TStringField;
    Qry_EditRemark: TStringField;
    Qry_EditUSERDATE: TDateTimeField;
    Qry_EditUSERID: TStringField;
    Qry_EditXieMing: TStringField;
    Qry_EditDEVCODE: TStringField;
    Qry_EditFD: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGridEh;
    DBGridEh1: TDBGridEh;
    DBGridEh_FGT: TDBGridEh;
    Splitter1: TSplitter;
    Qry_Browse: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    DateTimeField1: TDateTimeField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    DateTimeField2: TDateTimeField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    Qry_FGT: TQuery;
    StringField21: TStringField;
    StringField22: TStringField;
    DateTimeField3: TDateTimeField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField36: TStringField;
    DateTimeField4: TDateTimeField;
    StringField37: TStringField;
    DS_Browse: TDataSource;
    qry1: TQuery;
    DS_FGT: TDataSource;
    strngfldQuery1File_Name: TStringField;
    pm1: TPopupMenu;
    S1: TMenuItem;
    S2: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    fltfldQuery1File_Size: TFloatField;
    blbfldQuery2Picture: TBlobField;
    ExcelApplication1: TExcelApplication;
    Qry_EditFGT78: TStringField;
    Qry_BrowseFGT78: TStringField;
    Qry_EditDropped: TBooleanField;
    Label5: TLabel;
    cbb2: TComboBox;
    Label7: TLabel;
    cbb1: TComboBox;
    Qry_BrowsexxzlDropped: TBooleanField;
    TabSheet3: TTabSheet;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    lbl22: TLabel;
    lbl23: TLabel;
    lbl24: TLabel;
    lbl25: TLabel;
    lbl26: TLabel;
    lbl27: TLabel;
    lbl28: TLabel;
    lbl29: TLabel;
    lbl30: TLabel;
    lbl31: TLabel;
    lbl32: TLabel;
    lbl33: TLabel;
    lbl34: TLabel;
    mmo1: TMemo;
    ts1: TTabSheet;
    shp1: TShape;
    lbl35: TLabel;
    lbl36: TLabel;
    lbl37: TLabel;
    lbl38: TLabel;
    shp2: TShape;
    shp3: TShape;
    lbl39: TLabel;
    shp5: TShape;
    shp6: TShape;
    shp8: TShape;
    shp9: TShape;
    lbl45: TLabel;
    shp10: TShape;
    lbl49: TLabel;
    lbl51: TLabel;
    lbl46: TLabel;
    lbl47: TLabel;
    shp4: TShape;
    shp7: TShape;
    shp11: TShape;
    lbl40: TLabel;
    lbl42: TLabel;
    Shape1: TShape;
    Label3: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Label4: TLabel;
    shp12: TShape;
    lbl41: TLabel;
    lbl43: TLabel;
    lbl44: TLabel;
    Qry_EditFastTrack: TBooleanField;
    Qry_BrowseCS1_RESULT: TStringField;
    Qry_FGTFastTrack: TBooleanField;
    edt2: TEdit;
    CheckBox1: TCheckBox;
    Chk_Dropped: TCheckBox;
    Qry_BrowseCS1_SendDate: TStringField;
    Qry_FGTFile_Name: TStringField;
    Qry_FGTFile_Size: TFloatField;
    Qry_FGTDropped: TBooleanField;
    Update_FGT: TUpdateSQL;
    PopupMenu2: TPopupMenu;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    Delete1: TMenuItem;
    N4: TMenuItem;
    Upload1: TMenuItem;
    Download1: TMenuItem;
    DeleteReport1: TMenuItem;
    N5: TMenuItem;
    Qry_FGTFGT78: TStringField;
    Qry_FGTFGT07: TStringField;
    Pop_Edit: TPopupMenu;
    Excel2: TMenuItem;
    Qry_BrowseFGT28: TStringField;
    Qry_BrowseCT09: TStringField;
    Qry_BrowseCT05: TStringField;
    Qry_FGTFGT28: TStringField;
    Qry_FGTCT09: TStringField;
    Qry_FGTCT05: TStringField;
    Memo1: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure Qry_EditAfterOpen(DataSet: TDataSet);
    procedure bbt6Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumnEh);
    procedure Qry_EditFGT01Change(Sender: TField);
    procedure S1Click(Sender: TObject);
    procedure S2Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh_FGTDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure StringField23Change(Sender: TField);
    procedure Upload1Click(Sender: TObject);
    procedure Download1Click(Sender: TObject);
    procedure DeleteReport1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Excel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGTTest: TFGTTest;
  NDate:TDate;

implementation

uses main1, Calendar1, AdiColor1;


{$R *.dfm}

procedure TFGTTest.FormCreate(Sender: TObject);
var i:integer;
begin
with qry1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
PageControl1.ActivePageIndex:=1;
end;

procedure TFGTTest.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if Qry_Edit.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
  begin
    action:=Cafree;
    AdiColor:=nil;
  end;
   
end;

procedure TFGTTest.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TFGTTest.Button1Click(Sender: TObject);
begin

if  ((length(edt1.Text)=0) and (length(edt2.Text)=0) ) then
   begin
     showmessage('Pls keyin Season or Article !');
     exit ;
   end;

if checkbox1.Checked then
   begin
      DBGridEh1.RowHeight := 40;
      DBGridEh1.Columns[1].Visible := TRUE ;
   END
   else
   begin
      DBGridEh1.RowHeight := 0;
      DBGridEh1.Columns[1].Visible := FALSE;
   END;

if not Qry_Edit.RequestLive then
  begin
    {
    with Qry_Edit do
      begin
        active:=false;
        sql.Clear;
        sql.add('select FGT_TEST.Article,FGT_TEST.Stage,FGT_TEST.SendDate,FGT_TEST.FGT01,FGT_TEST.FGT02 ');
        sql.add(' ,FGT_TEST.FGT04,FGT_TEST.FGT05,FGT_TEST.FGT08,FGT_TEST.FGT13,FGT_TEST.FGT07_13 ');
        sql.add(' ,FGT_TEST.FGT13_14,FGT_TEST.FGT22,FGT_TEST.FGT64,FGT_TEST.FGT68,FGT_TEST.FGT78 ');
        sql.add(' ,FGT_TEST.FGT30,FGT_TEST.RESULT,FGT_TEST.Remark,FGT_TEST.USERDATE,FGT_TEST.USERID ');
        sql.add(' ,FGT_TEST.File_Name,FGT_TEST.File_Size,FGT_TEST.Dropped,FastTrack ');
        sql.add(' ,KFxxzl.XieMing,KFxxzl.DEVCODE,xxzlKF.FD ');
        sql.add('  from FGT_TEST ');
        sql.Add('  left join KFxxzl on KFxxzl.ARTICLE=FGT_TEST.ARTICLE ');
        sql.Add('  left join xxzlKF on xxzlkf.xiexing=kfxxzl.XieXing and xxzlkf.SheHao=kfxxzl.SheHao and xxzlkf.YN=''N'' ');
        sql.add('  where  FGT_TEST.Dropped = ''0'' ');
        if  length(edt1.Text) > 0 then
            sql.add(' and FGT_TEST.article='+''''+edt1.Text+'''');
        if  length(edt3.Text) > 0 then
            sql.add(' and xxzlKF.FD like '+''''+'%'+edt3.Text+'%''');
        if  length(edt4.Text) > 0 then
            sql.add(' and FGT_TEST.stage='+''''+edt4.Text+'''');
        if  length(edt2.Text) > 0 then
            sql.add(' and KFxxzl.JiJie='+''''+edt2.Text+'''');
        if  length(cbb1.Text) > 0 then
            sql.add(' and isnull(xxzlkf.category,'''') like '+'''%'+cbb1.Text+'%'+'''');
        if  length(cbb2.Text) > 0 then
            sql.add(' and isnull(xxzlkf.DevType,'''') like '+'''%'+cbb2.Text+'%'+'''');
        active:=true;
      end;
    }
    with Qry_Browse do
      begin
        active:=false;
        sql.Clear;
        sql.add('select ShoePicture.Picture,KFxxzl.article  ');
        sql.add(' ,FGT_TEST.Stage,FGT_TEST.SendDate,FGT_TEST.FGT01,FGT_TEST.FGT02 ');
        sql.add(' ,FGT_TEST.FGT04,FGT_TEST.FGT05,FGT_TEST.FGT08,FGT_TEST.FGT13,FGT_TEST.FGT07_13 ');
        sql.add(' ,FGT_TEST.FGT13_14,FGT_TEST.FGT22,FGT_TEST.FGT64,FGT_TEST.FGT68,FGT_TEST.FGT78 ');
        sql.add(' ,FGT_TEST.FGT30,FGT_TEST.RESULT,FGT_TEST.Remark,FGT_TEST.USERDATE,FGT_TEST.USERID ');
        sql.add(' ,FGT_TEST.FGT28,FGT_TEST.CT05,FGT_TEST.CT09');
        sql.add(' ,case FGT_TEST.FastTrack when 1 then ''FastTrack'' else FGT_TEST_CS1.RESULT end as CS1_RESULT ');
        sql.add(' ,case FGT_TEST.FastTrack when 1 then ''FastTrack'' else CONVERT(CHAR(10),FGT_TEST_CS1.SendDate, 120)  end AS CS1_SendDate ');
        sql.add(' ,KFxxzl.XieMing,KFxxzl.DEVCODE,kfxxzl.FD ,xxzlKF.Dropped as xxzlDropped ');
        sql.add(' from KFxxzl ');
        sql.Add('   left join (select FGT_TEST.ARTICLE,MAX(FGT_TEST.SendDate) AS SendDate from FGT_TEST where (Stage=''SM2'' ) and FGT_TEST.Dropped=0 GROUP BY FGT_TEST.ARTICLE )');
        sql.Add('              FGT_SD on KFxxzl.ARTICLE=FGT_SD.ARTICLE ');
        sql.Add('   left join FGT_TEST on KFxxzl.ARTICLE=FGT_TEST.ARTICLE AND FGT_TEST.SendDate=FGT_SD.SendDate and FGT_TEST.Dropped=0 ');
        sql.Add('   left join (select FGT_TEST.ARTICLE,MAX(FGT_TEST.SendDate) AS SendDate from FGT_TEST where (Stage=''PRO'' OR Stage=''SMU'') and FGT_TEST.Dropped=0 GROUP BY FGT_TEST.ARTICLE ) ');
        sql.Add('              FGT_SD_CS1 on KFxxzl.ARTICLE=FGT_SD_CS1.ARTICLE ');
        sql.Add('   left join (select ARTICLE,RESULT,SendDate,Dropped from FGT_TEST where Stage=''PRO'' OR Stage=''SMU'') FGT_TEST_CS1 on KFxxzl.ARTICLE=FGT_TEST_CS1.ARTICLE AND FGT_TEST_CS1.SendDate=FGT_SD_CS1.SendDate and FGT_TEST_CS1.Dropped =0 ');
        if checkbox1.Checked then
           sql.Add('left join ShoePicture ShoePicture on ShoePicture.ARTICLE=KFxxzl.ARTICLE ')
        ELSE
           sql.Add('left join ShoePictureBlank ShoePicture on ShoePicture.ARTICLE=KFxxzl.ARTICLE ');
        sql.Add('   left join xxzlKF on xxzlkf.xiexing=kfxxzl.XieXing and xxzlkf.SheHao=kfxxzl.SheHao');// and xxzlkf.YN=''N'' ');
        sql.add(' where isnull(xxzlkf.LookSee,0)=0 ');
        if  length(edt1.Text) > 0 then
            sql.add(' and KFxxzl.article='+''''+edt1.Text+'''');
        if  length(edt3.Text) > 0 then
            sql.add(' and kfxxzl.FD = '+''''+edt3.Text+'''');
        if  length(edt2.Text) > 0 then
            sql.add(' and KFxxzl.JiJie='+''''+edt2.Text+'''');
        if  length(cbb1.Text) > 0 then
            sql.add(' and isnull(kfxxzl.category,'''') = '''+cbb1.Text+'''');
        if  length(cbb2.Text) > 0 then
            sql.add(' and isnull(kfxxzl.DevType,'''') = '''+cbb2.Text+'''');
        if  chk_Dropped.Checked then
            sql.add(' and isnull(xxzlkf.Dropped,0)=0 and isnull(xxzlkf.Transfer,0)=0 ');
        sql.add('Order by kfxxzl.DevType,kfxxzl.category,kfxxzl.FD');
        memo1.text:=sql.text;
        active:=true;
      end;

    with Qry_FGT do
      begin
        active:=false;
        sql.Clear;
        sql.add('Select  ');
        sql.add(' FGT_TEST.Article,FGT_TEST.Stage,FGT_TEST.SendDate,FGT_TEST.FGT01,FGT_TEST.FGT02 ');
        sql.add(' ,FGT_TEST.FGT04,FGT_TEST.FGT05,FGT_TEST.FGT07,FGT_TEST.FGT08,FGT_TEST.FGT13,FGT_TEST.FGT07_13 ');
        sql.add(' ,FGT_TEST.FGT13_14,FGT_TEST.FGT22,FGT_TEST.FGT64,FGT_TEST.FGT68,FGT_TEST.FGT78 ');
        sql.add(' ,FGT_TEST.FGT30,FGT_TEST.RESULT,FGT_TEST.Remark,FGT_TEST.USERDATE,FGT_TEST.USERID,FastTrack ');
        sql.add(' ,FGT_TEST.Dropped,FGT_TEST.File_Name,FGT_TEST.File_Size');
        sql.add(' ,FGT_TEST.FGT28,FGT_TEST.CT05,FGT_TEST.CT09  from FGT_TEST ');
        sql.Add('  left join KFxxzl on KFxxzl.ARTICLE=FGT_TEST.ARTICLE ');
        sql.Add('  left join xxzlKF on xxzlkf.xiexing=kfxxzl.XieXing and xxzlkf.SheHao=kfxxzl.SheHao');// and xxzlkf.YN=''N'' ');
        sql.add(' where FGT_TEST.article=:article and FGT_TEST.Dropped=0 ');
        active:=true;
      end;



  end
  else
    begin
      showmessage('Pls save data first.');
    end;

bbt6.Enabled:=true;    
end;

procedure TFGTTest.BB1Click(Sender: TObject);
var
  yr,itm : string;
  yy,mm,dd:word;
begin

with Qry_Edit do
  begin
//    locate('ADICOLOR', yr,[]);
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
  DBGrid1.columns[5].ButtonStyle:=cbsAuto;
  DBGrid1.columns[6].ButtonStyle:=cbsAuto;
  DBGrid1.columns[7].ButtonStyle:=cbsAuto;
  DBGrid1.columns[8].ButtonStyle:=cbsAuto;
  DBGrid1.columns[9].ButtonStyle:=cbsAuto;
  DBGrid1.columns[10].ButtonStyle:=cbsAuto;
  DBGrid1.columns[11].ButtonStyle:=cbsAuto;
  DBGrid1.columns[12].ButtonStyle:=cbsAuto;
  DBGrid1.columns[13].ButtonStyle:=cbsAuto;
  DBGrid1.columns[14].ButtonStyle:=cbsAuto;
  DBGrid1.columns[15].ButtonStyle:=cbsAuto;
  DBGrid1.columns[16].ButtonStyle:=cbsAuto;
  DBGrid1.columns[17].ButtonStyle:=cbsAuto;
  DBGrid1.columns[19].ButtonStyle:=cbsAuto;

PageControl1.ActivePage.Name:='TabSheet1';

bb1.Enabled:=false;
bb2.enabled:=true;
bb4.enabled:=true;
bb5.enabled:=true;
//dbgrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TFGTTest.BB3Click(Sender: TObject);
begin
with Qry_Edit do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Qry_Edit.edit;
  end;
  DBGrid1.columns[5].ButtonStyle:=cbsAuto;
  DBGrid1.columns[6].ButtonStyle:=cbsAuto;
  DBGrid1.columns[7].ButtonStyle:=cbsAuto;
  DBGrid1.columns[8].ButtonStyle:=cbsAuto;
  DBGrid1.columns[9].ButtonStyle:=cbsAuto;
  DBGrid1.columns[10].ButtonStyle:=cbsAuto;
  DBGrid1.columns[11].ButtonStyle:=cbsAuto;
  DBGrid1.columns[12].ButtonStyle:=cbsAuto;
  DBGrid1.columns[13].ButtonStyle:=cbsAuto;
  DBGrid1.columns[14].ButtonStyle:=cbsAuto;
  DBGrid1.columns[15].ButtonStyle:=cbsAuto;
  DBGrid1.columns[16].ButtonStyle:=cbsAuto;  
  DBGrid1.columns[17].ButtonStyle:=cbsAuto;
  DBGrid1.columns[19].ButtonStyle:=cbsAuto;
  
bb2.enabled:=true;
bb4.enabled:=true;
bb5.enabled:=true;
//dbgrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TFGTTest.BB4Click(Sender: TObject);
var i:integer;
begin
try
//if Qry_Edit.requestlive then
  //begin
//    AdiColor.FormCreate(Sender);
    Qry_Edit.first;
    for i:=1 to Qry_Edit.RecordCount do
    begin
      case Qry_Edit.updatestatus of
      usmodified:
        begin
         Qry_Edit.edit;
         Qry_Edit.fieldbyname('userid').Value:=main.edit1.text;
         Qry_Edit.fieldbyname('userdate').Value:=formatdatetime('yyyy/MM/dd hh:mm:ss',Ndate);
         updatesql1.apply(ukmodify);
        end;
      usinserted:
        begin
         Qry_Edit.edit;
         if Qry_Edit.fieldbyname('RESULT').isnull then
            Qry_Edit.fieldbyname('RESULT').Value:='Wait';
         Qry_Edit.fieldbyname('userid').Value:=main.edit1.text;
         Qry_Edit.fieldbyname('userdate').Value:=formatdatetime('yyyy/MM/dd hh:mm:ss',Ndate);
         Qry_Edit.fieldbyname('Dropped').Value:=0;
         UpdateSQL1.apply(ukinsert);
        end;

      end;
      Qry_Edit.next;
    end;
  DBGrid1.columns[5].ButtonStyle:=cbsnone;
  DBGrid1.columns[6].ButtonStyle:=cbsnone;
  DBGrid1.columns[7].ButtonStyle:=cbsnone;
  DBGrid1.columns[8].ButtonStyle:=cbsnone;
  DBGrid1.columns[9].ButtonStyle:=cbsnone;
  DBGrid1.columns[10].ButtonStyle:=cbsnone;
  DBGrid1.columns[11].ButtonStyle:=cbsnone;
  DBGrid1.columns[12].ButtonStyle:=cbsnone;
  DBGrid1.columns[13].ButtonStyle:=cbsnone;
  DBGrid1.columns[14].ButtonStyle:=cbsnone;
  DBGrid1.columns[15].ButtonStyle:=cbsnone;
  DBGrid1.columns[16].ButtonStyle:=cbsnone;
  DBGrid1.columns[17].ButtonStyle:=cbsnone;
  DBGrid1.columns[19].ButtonStyle:=cbsnone;
Qry_Edit.active:=false;
Qry_Edit.cachedupdates:=false;
Qry_Edit.requestlive:=false;
Qry_Edit.active:=true;
bb1.Enabled:=true;
bb4.enabled:=false;
bb5.enabled:=false;
bb2.enabled:=true;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;

end;


procedure TFGTTest.BB5Click(Sender: TObject);
begin
with Qry_Edit do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  DBGrid1.columns[5].ButtonStyle:=cbsnone;
  DBGrid1.columns[6].ButtonStyle:=cbsnone;
  DBGrid1.columns[7].ButtonStyle:=cbsnone;
  DBGrid1.columns[8].ButtonStyle:=cbsnone;
  DBGrid1.columns[9].ButtonStyle:=cbsnone;
  DBGrid1.columns[10].ButtonStyle:=cbsnone;
  DBGrid1.columns[11].ButtonStyle:=cbsnone;
  DBGrid1.columns[12].ButtonStyle:=cbsnone;
  DBGrid1.columns[13].ButtonStyle:=cbsnone;
  DBGrid1.columns[14].ButtonStyle:=cbsnone;
  DBGrid1.columns[15].ButtonStyle:=cbsnone;
  DBGrid1.columns[16].ButtonStyle:=cbsnone;
  DBGrid1.columns[17].ButtonStyle:=cbsnone;
  DBGrid1.columns[19].ButtonStyle:=cbsnone;
  
bb2.enabled:=true;
bb4.enabled:=false;
bb5.enabled:=false;
//dbgrid1.columns[0].ButtonStyle:=cbsNone;
end;

procedure TFGTTest.BB6Click(Sender: TObject);
begin
close;
end;

procedure TFGTTest.Qry_EditAfterOpen(DataSet: TDataSet);
begin
//bb2.enabled:=true;
//BB1.Enabled:=true;
//BB3.Enabled:=true;
//bbt5.Enabled:=true;
bbt6.Enabled:=true;
end;

procedure TFGTTest.bbt6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
    LCID    : integer;
    aWorkBook   : _Workbook;
    aSheet      : Variant;
    FPicture    : OleVariant;
begin
 {
  if pagecontrol1.TabIndex = 0 then
  begin
  if  Qry_Browse.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('沒有安裝Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   Qry_Edit.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=Qry_Edit.fields[i].FieldName;
          end;

        Qry_Edit.First;
        j:=2;
        while   not   Qry_Edit.Eof   do
          begin
            for   i:=0   to   Qry_Edit.fieldCount-1   do
            begin
              eclApp.Cells(j,i+1):=Qry_Edit.Fields[i].Value;
            end;
          Qry_Edit.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
  end
  else
 }

  if  Qry_Browse.active  then
    begin
    Qry_FGT.Active:=false;
    try
        ExcelApplication1.Connect;
//        LCID := GetUserDefaultLCID();
        lcid := 1033; //en-us
        aWorkBook   :=   ExcelApplication1.Workbooks.Add(EmptyParam,LCID);
        aSheet   :=   aWorkBook.Sheets[1] as _WorkSheet;
            aSheet.PageSetUp.PaperSize:=xlPaperA4; //Paper type A4
            aSheet.PageSetUp.LeftMargin:=45; //0.675" Left Margin
            aSheet.PageSetUp.TopMargin:=18; //0.25"
            aSheet.PageSetUp.BottomMargin:=45; //0.675"
            aSheet.PageSetUp.Orientation:=2; //縱向打印（landscape）=2, portrait=1
        asheet.Rows.EntireRow.RowHeight := 2/0.035; // 1厘米
        asheet.Rows[1].RowHeight := 3/0.035; // 3厘米
        asheet.Rows[2].RowHeight := 1/0.035; // 1厘米
        asheet.Rows[3].RowHeight := 1/0.035; // 1厘米
        asheet.Columns[1].ColumnWidth := 12; // 10字符個數
        asheet.Columns[2].ColumnWidth := 7; // 10字符個數 Article
        asheet.Columns[3].ColumnWidth := 24; // 20字符個數
        asheet.Columns[18].ColumnWidth := 6; // CR2 Result
        asheet.Columns[19].ColumnWidth := 15; // Remark
        asheet.Columns[20].ColumnWidth := 12; // Remark
        asheet.Columns[19].WrapText := True;   // Remark自動縮行
        asheet.Columns[20].WrapText := True;   // CS1 Result自動縮行
        asheet.range['A1:'+ chr(64+Qry_Browse.fieldcount-6)+'1'].merge; //抬頭合併

        aSheet.Cells.Item[1,1].value := 'LYV FGT Test Tracking Report';
        aSheet.Cells.item[1,1].font.size:='20';
        aSheet.Cells.item[1,1].font.bold:=true;
        aSheet.Cells.item[1,1].font.color:=clBlue;
        aSheet.Cells.item[1,1].HorizontalAlignment:= xlCenter;
        aSheet.Cells.Item[2,5].value := 'CR2';
        aSheet.Cells.item[2,5].HorizontalAlignment:= xlCenter;
        asheet.range['E2:S2'].merge; //第二行抬頭合併
        aSheet.Cells.Item[2,20].value := 'CS1';
        aSheet.Cells.item[2,20].HorizontalAlignment:= xlCenter;

        for   i:=0   to   Qry_Browse.fieldcount-8   do
          begin
              aSheet.Cells.Item[3,i+1].value:=Qry_Browse.fields[i].FieldName;
          end;
        aSheet.Cells.Item[3,3].value := 'Shoe Name';
        aSheet.Cells.Item[3,4].value := 'Dev Code';        
        aSheet.Cells.Item[3,18].value := 'Result';
        aSheet.Cells.Item[3,20].value := 'Result';

        aSheet.Cells.item[3,4].font.size:='8';
        aSheet.Cells.item[3,4].ColumnWidth := 4; // 4字符個數
        asheet.range['E3:Q3'].ColumnWidth := 3; // 2字符個數
        asheet.range['E3:Q3'].font.size:='9';
        asheet.range['L3:L3'].font.size:='8';
        asheet.range['I3:I3'].font.size:='8';
        asheet.range['D3:Q3'].WrapText := True;
        asheet.range['A2:T3'].Interior.Colorindex:=20;  //塗顏色
        Qry_Browse.First;
        j:=4;
        while   not   Qry_Browse.Eof   do
          begin
            for   i:=0   to  Qry_Browse.fieldcount-8  do
            begin
              if i<>0 then
                begin
                  aSheet.Cells.Item[j,i+1].value:=Qry_Browse.Fields[i].value;
                  //if  (aSheet.Cells.Item[j,i+1].value = 'RM') or (aSheet.Cells.Item[j,i+1].value = 'Fail') then
                  //begin
                  //   aSheet.Cells.Item[j,i+1].value := 'Fail';
                  //   aSheet.Cells.Item[j,i+1].font.color:=clRed;
                  //end;
                end
              else
                begin

                  TBlobField(Qry_Browse.FieldByName('picture')).SaveToFile('C:\ERP\shoe.bmp');
                  IF NOT Qry_Browse.FieldByName('picture').ISNULL THEN
                     FPicture:=asheet.Pictures.Insert('C:\ERP\shoe.bmp')
                  else
                     FPicture:=asheet.Pictures.Insert('C:\ERP\shoe_Blank.bmp');
                  FPicture.Left:=5;
                  FPicture.Top:=(j-2) * 57 + 43;
                  FPicture.ShapeRange.LockAspectRatio  :=   False;
                  FPicture.ShapeRange.Height := 30;
                  FPicture.ShapeRange.Width := 60;
                  FPicture.ShapeRange.Rotation := 0;

                end;
            end;
          Qry_Browse.Next;
          inc(j);
          end;
        asheet.range['A4:D'+inttostr(j-1)].Interior.Colorindex:=19;
        for i:=1 to 3 do
          aSheet.Range['A2:T'+inttostr(j-1)].Borders[i].Weight := 2;
        aSheet.Range['A'+inttostr(j-1)+':T'+inttostr(j-1)].Borders[4].Weight := 2;
        ExcelApplication1.Visible[LCID]   :=   True;
        ExcelApplication1.Disconnect;
        showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
    Qry_FGT.Active:=true;    

end;

procedure TFGTTest.BB2Click(Sender: TObject);
begin
with Qry_Edit do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('Dropped').Value:='1';
  end;
BB4.Enabled:=true;
BB5.Enabled:=true;
dbgrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TFGTTest.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
 if   Qry_Edit.FieldByName('dropped').AsBoolean   then     DBGrid1.Canvas.Brush.Color:=clRed;

 if   Qry_Edit.Fieldbyname('RESULT').AsString ='Fail' then DBGrid1.Canvas.font.color:=clRed ;

    DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFGTTest.FormDestroy(Sender: TObject);
begin
  FGTTest := nil;

end;

procedure TFGTTest.DBGrid1CellClick(Column: TColumnEh);
begin
 //Making the drop-down pick list appear faster
  IF bb4.enabled=true then
     begin
       if Column.PickList.Count > 0 then
       begin
         keybd_event(VK_F2,0,0,0);
         keybd_event(VK_F2,0,KEYEVENTF_KEYUP,0);
         keybd_event(VK_MENU,0,0,0);
         keybd_event(VK_DOWN,0,0,0);
         keybd_event(VK_DOWN,0,KEYEVENTF_KEYUP,0);
         keybd_event(VK_MENU,0,KEYEVENTF_KEYUP,0);
       end;
     end;  
end;

procedure TFGTTest.Qry_EditFGT01Change(Sender: TField);
begin
  if ((Qry_Edit.fieldbyname('FGT01').Value='RM')or
      (Qry_Edit.fieldbyname('FGT02').Value='RM')or
      (Qry_Edit.fieldbyname('FGT04').Value='RM')or
      (Qry_Edit.fieldbyname('FGT05').Value='RM')or
      (Qry_Edit.fieldbyname('FGT08').Value='RM')or
      (Qry_Edit.fieldbyname('FGT13').Value='RM')or
      (Qry_Edit.fieldbyname('FGT07_13').Value='RM')or
      (Qry_Edit.fieldbyname('FGT13_14').Value='RM')or
      (Qry_Edit.fieldbyname('FGT22').Value='RM')or
      (Qry_Edit.fieldbyname('FGT64').Value='RM')or
      (Qry_Edit.fieldbyname('FGT68').Value='RM')or
      (Qry_Edit.fieldbyname('FGT78').Value='RM')or
      (Qry_Edit.fieldbyname('FGT30').Value='RM') )
     then
       Qry_Edit.fieldbyname('RESULT').Value:='Fail'
     else
       Qry_Edit.fieldbyname('RESULT').Value:='Pass';

end;

procedure CompressIt(var CompressedStream: TMemoryStream; const CompressionLevel: TCompressionLevel);

// 參數是傳遞的流和壓縮方式

var

   SourceStream: TCompressionStream; 

   DestStream: TMemoryStream;

   Count: int64; //注意，此處修改了,原來是int

begin

   //獲得流的原始尺寸

   Count := CompressedStream.Size; 

   DestStream := TMemoryStream.Create;

   SourceStream := TCompressionStream.Create(CompressionLevel, DestStream);

   try 

      //SourceStream中保存著原始的流

      CompressedStream.SaveToStream(SourceStream); 

      //將原始流進行壓縮， DestStream中保存著壓縮後的流

      SourceStream.Free;

      CompressedStream.Clear;

      //寫入原始圖像的尺寸

      CompressedStream.WriteBuffer(Count, SizeOf(Count));

      //寫入經過壓縮的流

      CompressedStream.CopyFrom(DestStream, 0);

   finally

      DestStream.Free;

   end;

end;

procedure UnCompressit(const CompressedStream: TMemoryStream; var UnCompressedStream: TMemoryStream);

//參數 壓縮過的流，解壓後的流

var

   SourceStream: TDecompressionStream;

   DestStream: TMemoryStream;

   Buffer: PChar;

   Count: int64;

begin

   //從被壓縮的圖像流中讀出原始的尺寸

   CompressedStream.ReadBuffer(Count, SizeOf(Count));

   //根據尺寸大小為將要讀入的原始流分配內存塊

   GetMem(Buffer, Count);

   DestStream := TMemoryStream.Create;

   SourceStream := TDecompressionStream.Create(CompressedStream);

   try

      //將被壓縮的流解壓縮，然後存入 Buffer內存塊中

      SourceStream.ReadBuffer(Buffer^, Count);

      //將原始流保存至 DestStream流中

      DestStream.WriteBuffer(Buffer^, Count);

      DestStream.Position := 0; //復位流指針

//      DestStream.Position := length(VER_INFO);

      //從 DestStream流中載入圖像流

      UnCompressedStream.LoadFromStream(DestStream);

   finally

      FreeMem(Buffer);

      DestStream.Free;

   end;

end;

procedure TFGTTest.S1Click(Sender: TObject);
var
   SM: TMemoryStream;
begin
   if OpenDialog1.Execute then
      begin
         SM := TMemoryStream.Create;
         try
            Sm.LoadFromFile(OpenDialog1.FileName);
            SM.Position := 0;
            Compressit(sm, clDefault);
            with qry1 do
            begin
              active:=false;
              sql.Clear;
              SQL.Add('update FGT_TEST set zipReport=:zipReport,file_name=:file_Name,file_Size=:file_Size,userid=:userid,userdate=:userdate ');//進行插入操作
              sql.Add(' where Article='''+Qry_Edit.FieldByName('Article').AsString+''' and Stage='''+Qry_Edit.FieldByName('Stage').AsString+''' and SendDate='''+Qry_Edit.FieldByName('SendDate').AsString+'''');
              ParamByName('zipReport').LoadFromStream(sm,ftBlob);//讀取保存的壓縮檔
              ParamByName('file_name').Value:=extractfilename(OpenDialog1.FileName);
              ParamByName('file_Size').Value:=strtoint(inttostr(sm.Size));
              ParamByName('userID').Value:=main.edit1.text;
              ParamByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
              ExecSQL;
              button1.OnClick(Sender);
            end;
         finally
            SM.Free;
         end;
      end;
end;

procedure TFGTTest.S2Click(Sender: TObject);
var
  blob: TBlobStream;
  SM,DM: TMemoryStream;
begin
  if not Qry_Edit.FieldByName('File_Name').IsNull then
  begin
    savedialog1.FileName :=  Qry_Edit.FieldByName('File_Name').AsString;
    if SaveDialog1.Execute then
      begin
        with qry1 do
          begin
           active:=false;
           sql.Clear;
           sql.add('select zipReport FROM FGT_TEST ');
              sql.Add(' where Article='''+Qry_Edit.FieldByName('Article').AsString+''' and Stage='''+Qry_Edit.FieldByName('Stage').AsString+''' and SendDate='''+Qry_Edit.FieldByName('SendDate').AsString+'''');
           active:=true;
          end;

         blob := TBlobStream.Create((qry1.FieldByName('zipReport') as TBlobField), bmRead);
         blob.Seek(0, soFromBeginning);
         SM := TMemoryStream.Create;
         SM.CopyFrom(blob,blob.Size);
         DM := TMemoryStream.Create;
         try
            SM.Position := 0;
            UnCompressit(sm, dm);
            dm.Position := 0;
            dm.SaveToFile(SaveDialog1.FileName);
         finally
            SM.Free;
            DM.Free;
         end;
         if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
            shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
          qry1.active:=false;
      end;
  end;
end;

procedure TFGTTest.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  Bmp: TBitmap;
begin

//  if (Query2.Fieldbyname('CS1_RESULT').AsString ='Fail') or ((Query2.Fieldbyname('CS1_RESULT').AsString ='Fail') and (Query2.Fieldbyname('RESULT').AsString ='Fail'))   then
//      DBGridEh1.Canvas.font.color:=clRed ;
  if (Qry_Browse.FieldByName('xxzlDropped').Value='1')  then
      DBGridEh1.canvas.font.color:=clred;

  if (column.FieldName='CS1_RESULT') and (Column.Field.AsString='Fail') then
    DBGridEh1.Canvas.Font.Color := clred ;
  if (column.FieldName='CS1_RESULT') and (Column.Field.AsString='Wait') then
    DBGridEh1.Canvas.Font.Color := clBlue ;
  if (column.FieldName='RESULT') and (Column.Field.AsString='Fail') then
    DBGridEh1.Canvas.Font.Color := clred ;
  if (column.FieldName='RESULT') and (Column.Field.AsString='Wait') then
    DBGridEh1.Canvas.Font.Color := clBlue ;

  DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);

  if (Column.Field.DataType = ftBLOB) or (Column.Field.DataType = ftGraphic) then
  begin
    Bmp:=TBitmap.Create;
    try
      Bmp.Assign(Column.Field);
      DBGridEh1.Canvas.StretchDraw(Rect,Bmp);
      Bmp.Free;
    Except
      Bmp.Free;
    end;
  end;
end;

procedure TFGTTest.DBGridEh_FGTDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if  (column.FieldName='RESULT') and (Column.Field.AsString='Fail') then
      DBGridEh_FGT.Canvas.Font.Color := clred ;
  if  Qry_FGT.Fieldbyname('Dropped').value = true   then
       DBGridEh_FGT.canvas.font.color:=clRed;
  if (column.FieldName='RESULT') and (Column.Field.AsString='Wait') then
      DBGridEh_FGT.Canvas.Font.Color := clBlue ;
  DBGridEh_FGT.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFGTTest.StringField23Change(Sender: TField);
begin
  if ((Qry_FGT.fieldbyname('FGT01').Value='RM')or
      (Qry_FGT.fieldbyname('FGT02').Value='RM')or
      (Qry_FGT.fieldbyname('FGT04').Value='RM')or
      (Qry_FGT.fieldbyname('FGT05').Value='RM')or
      (Qry_FGT.fieldbyname('FGT08').Value='RM')or
      (Qry_FGT.fieldbyname('FGT13').Value='RM')or
      (Qry_FGT.fieldbyname('FGT07_13').Value='RM')or
      (Qry_FGT.fieldbyname('FGT13_14').Value='RM')or
      (Qry_FGT.fieldbyname('FGT22').Value='RM')or
      (Qry_FGT.fieldbyname('FGT64').Value='RM')or
      (Qry_FGT.fieldbyname('FGT68').Value='RM')or
      (Qry_FGT.fieldbyname('FGT78').Value='RM')or
      (Qry_FGT.fieldbyname('FGT30').Value='RM') )
     then
       Qry_FGT.fieldbyname('RESULT').Value:='Fail'
     else
       Qry_FGT.fieldbyname('RESULT').Value:='Pass';
end;

procedure TFGTTest.Upload1Click(Sender: TObject);
var
   SM: TMemoryStream;
begin
   if OpenDialog1.Execute then
      begin
         SM := TMemoryStream.Create;
         try
            Sm.LoadFromFile(OpenDialog1.FileName);
            SM.Position := 0;
            Compressit(sm, clDefault);
            with qry1 do
            begin
              active:=false;
              sql.Clear;
              SQL.Add('update FGT_TEST set zipReport=:zipReport,file_name=:file_Name,file_Size=:file_Size,userid=:userid,userdate=:userdate ');//進行插入操作
              sql.Add(' where Article='''+Qry_FGT.FieldByName('Article').AsString+''' and Stage='''+Qry_FGT.FieldByName('Stage').AsString+''' and SendDate='''+Qry_FGT.FieldByName('SendDate').AsString+'''');
              ParamByName('zipReport').LoadFromStream(sm,ftBlob);//讀取保存的壓縮檔
              ParamByName('file_name').Value:=extractfilename(OpenDialog1.FileName);
              ParamByName('file_Size').Value:=strtoint(inttostr(sm.Size));
              ParamByName('userID').Value:=main.edit1.text;
              ParamByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
              ExecSQL;
              Qry_FGT.Active:=FALSE;
              Qry_FGT.Active:=TRUE;
            end;
         finally
            SM.Free;
         end;
      end;

end;

procedure TFGTTest.Download1Click(Sender: TObject);
var
  blob: TBlobStream;
  SM,DM: TMemoryStream;
begin
  if not Qry_FGT.FieldByName('File_Name').IsNull then
  begin
    savedialog1.FileName :=  Qry_FGT.FieldByName('File_Name').AsString;
    if SaveDialog1.Execute then
      begin
        with qry1 do
          begin
           active:=false;
           sql.Clear;
           sql.add('select zipReport FROM FGT_TEST ');
              sql.Add(' where Article='''+Qry_FGT.FieldByName('Article').AsString+''' and Stage='''+Qry_FGT.FieldByName('Stage').AsString+''' and SendDate='''+Qry_FGT.FieldByName('SendDate').AsString+'''');
           active:=true;
          end;
         blob := TBlobStream.Create((qry1.FieldByName('zipReport') as TBlobField), bmRead);
         blob.Seek(0, soFromBeginning);
         SM := TMemoryStream.Create;
         SM.CopyFrom(blob,blob.Size);
         DM := TMemoryStream.Create;
         try
            SM.Position := 0;
            UnCompressit(sm, dm);
            dm.Position := 0;
            dm.SaveToFile(SaveDialog1.FileName);
         finally
            SM.Free;
            DM.Free;
         end;
         if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
            shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
          qry1.active:=false;
      end;
  end;

end;

procedure TFGTTest.DeleteReport1Click(Sender: TObject);
begin
    if not Qry_FGT.FieldByName('Article').IsNull then
       begin
         if messagedlg('You want to delete FGT report?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
            begin
                with qry1 do
                begin
                    active:=false;
                    sql.Clear;
                    sql.Add(' update FGT_TEST ');
                    sql.Add(' set zipReport=null,File_Name=null,file_Size=null');
                    sql.Add('    ,userid='''+main.edit1.text+'''');
                    sql.Add('    ,userdate='''+formatdatetime('yyyy/MM/dd hh:mm:ss',Ndate)+'''');
                    sql.Add(' where Article='''+Qry_FGT.FieldByName('Article').AsString+''' and Stage='''+Qry_FGT.FieldByName('Stage').AsString+''' and SendDate='''+Qry_FGT.FieldByName('SendDate').AsString+'''');
                    execsql;
                    Qry_FGT.Active:=FALSE;
                    Qry_FGT.Active:=TRUE;
                end;
            end;
       end;
end;

procedure TFGTTest.Delete1Click(Sender: TObject);
begin
if BB4.Enabled=true then
   begin
     showmessage('Pls save data first.');
     abort;
   end;

if (Qry_FGT.Active) and (Qry_FGT.RecordCount>0) then
  begin
    Modify1.Enabled:=false;
    Save1.enabled:=true;
    Cancel1.enabled:=true;
    Upload1.Enabled:=false;
    Download1.Enabled:=false;
    DeleteReport1.Enabled:=false;    
    Delete1.Enabled:=false;

    DBGridEh1.Enabled:=false;
    Qry_FGT.RequestLive:=true;
    Qry_FGT.CachedUpdates:=true;
    Qry_FGT.edit;
    Qry_FGT.fieldbyname('Dropped').Value:=1;
  end
  else
       Messagedlg('No data !',mtwarning,[mbyes],0);
end;

procedure TFGTTest.Cancel1Click(Sender: TObject);
begin
//處理按鈕權限
    Modify1.Enabled:=true;
    Save1.enabled:=false;
    Cancel1.enabled:=false;
    Upload1.Enabled:=true;
    Download1.Enabled:=true;
    Delete1.Enabled:=true;
    DeleteReport1.Enabled:=true;
    DBGridEh1.Enabled:=true;
    Button1.Enabled:=true;    
    Qry_FGT.RequestLive:=false;
    Qry_FGT.CachedUpdates:=false;

    DBGridEh_FGT.ReadOnly:=true;
    DBGridEh_FGT.columns[1].ButtonStyle:=cbsnone;
    DBGridEh_FGT.columns[2].ButtonStyle:=cbsnone;
    DBGridEh_FGT.columns[3].ButtonStyle:=cbsnone;
    DBGridEh_FGT.columns[4].ButtonStyle:=cbsnone;
    DBGridEh_FGT.columns[5].ButtonStyle:=cbsnone;
    DBGridEh_FGT.columns[6].ButtonStyle:=cbsnone;
    DBGridEh_FGT.columns[7].ButtonStyle:=cbsnone;
    DBGridEh_FGT.columns[8].ButtonStyle:=cbsnone;
    DBGridEh_FGT.columns[9].ButtonStyle:=cbsnone;
    DBGridEh_FGT.columns[10].ButtonStyle:=cbsnone;
    DBGridEh_FGT.columns[11].ButtonStyle:=cbsnone;
    DBGridEh_FGT.columns[12].ButtonStyle:=cbsnone;
    DBGridEh_FGT.columns[13].ButtonStyle:=cbsnone;
    DBGridEh_FGT.columns[14].ButtonStyle:=cbsnone;
    DBGridEh_FGT.columns[15].ButtonStyle:=cbsnone;
end;

procedure TFGTTest.Modify1Click(Sender: TObject);
begin
if Qry_Browse.Active then
  begin
    Modify1.Enabled:=false;
    Save1.enabled:=true;
    Cancel1.enabled:=true;
    Upload1.Enabled:=false;
    Download1.Enabled:=false;
    DeleteReport1.Enabled:=false;
    Delete1.Enabled:=false;
    DBGridEh1.Enabled:=false;
    Button1.Enabled:=false;
    Qry_FGT.RequestLive:=true;
    Qry_FGT.CachedUpdates:=true;
    DBGridEh_FGT.ReadOnly:=false;
    DBGridEh_FGT.columns[1].ButtonStyle:=cbsAuto;
    DBGridEh_FGT.columns[2].ButtonStyle:=cbsAuto;
    DBGridEh_FGT.columns[3].ButtonStyle:=cbsAuto;
    DBGridEh_FGT.columns[4].ButtonStyle:=cbsAuto;
    DBGridEh_FGT.columns[5].ButtonStyle:=cbsAuto;
    DBGridEh_FGT.columns[6].ButtonStyle:=cbsAuto;
    DBGridEh_FGT.columns[7].ButtonStyle:=cbsAuto;
    DBGridEh_FGT.columns[8].ButtonStyle:=cbsAuto;
    DBGridEh_FGT.columns[9].ButtonStyle:=cbsAuto;
    DBGridEh_FGT.columns[10].ButtonStyle:=cbsAuto;
    DBGridEh_FGT.columns[11].ButtonStyle:=cbsAuto;
    DBGridEh_FGT.columns[12].ButtonStyle:=cbsAuto;
    DBGridEh_FGT.columns[13].ButtonStyle:=cbsAuto;
    DBGridEh_FGT.columns[14].ButtonStyle:=cbsAuto;
    DBGridEh_FGT.columns[15].ButtonStyle:=cbsAuto;
  end
  else
  begin
     Messagedlg('No data !',mtwarning,[mbyes],0);
  end;
end;

procedure TFGTTest.Save1Click(Sender: TObject);
var i:integer;
    J:Variant;
begin

if (Qry_FGT.FieldByName('Stage').isnull) OR (Qry_FGT.FieldByName('SendDate').isnull)  then
   begin
     Messagedlg('Have wrong, [Stage] AND [SendDate] can not be blank !',mtwarning,[mbyes],0);
     abort;
   end;
J:=' ';
try
    Qry_FGT.first;
    for i:=1 to Qry_FGT.RecordCount do
      begin
        case Qry_FGT.updatestatus of
          usinserted:
            begin
                     Qry_FGT.edit;
                     if (Qry_FGT.fieldbyname('RESULT').isnull) and (not Qry_FGT.fieldbyname('SendDate').isnull) then
                         Qry_FGT.fieldbyname('RESULT').Value:='Wait';
                     Qry_FGT.FieldByName('Article').Value:=Qry_Browse.FieldByName('Article').Value;
                     Qry_FGT.FieldByName('userID').Value:=main.edit1.text;
                     Qry_FGT.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd hh:mm:ss',Ndate);
                     Qry_FGT.fieldbyname('Dropped').Value:=0;
                     Update_FGT.apply(ukinsert);
                     j:=Qry_Browse.FieldByName('article').Value;
            end;
          usmodified:
             begin
               IF Qry_FGT.fieldbyname('Dropped').Value THEN
                  BEGIN
                    Update_FGT.apply(ukdelete);
                  END
                  ELSE
                  BEGIN
                    Qry_FGT.edit;
                     if (Qry_FGT.fieldbyname('RESULT').isnull) and (not Qry_FGT.fieldbyname('SendDate').isnull) then
                         Qry_FGT.fieldbyname('RESULT').Value:='Wait';
                    Qry_FGT.FieldByName('userID').Value:=main.edit1.text;
                    Qry_FGT.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd hh:mm:ss',Ndate);
                    Update_FGT.apply(ukmodify);
                  END;
                  j:=Qry_Browse.FieldByName('article').Value;
              end;
        end;
        Qry_FGT.next;
      end;
Qry_FGT.active:=false;
Qry_FGT.cachedupdates:=false;
Qry_FGT.requestlive:=false;
Qry_FGT.active:=true;

except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;
//處理按鈕權限
    Modify1.Enabled:=true;
    Save1.enabled:=false;
    Cancel1.enabled:=false;
    Upload1.Enabled:=true;
    Download1.Enabled:=true;
    DeleteReport1.Enabled:=true;
    Delete1.Enabled:=true;
    DBGridEh1.Enabled:=true;
    Button1.Enabled:=true;
    Qry_FGT.RequestLive:=false;
    Qry_FGT.CachedUpdates:=false;
    DBGridEh_FGT.ReadOnly:=true;

    DBGridEh_FGT.columns[1].ButtonStyle:=cbsnone;
    DBGridEh_FGT.columns[2].ButtonStyle:=cbsnone;
    DBGridEh_FGT.columns[3].ButtonStyle:=cbsnone;
    DBGridEh_FGT.columns[4].ButtonStyle:=cbsnone;
    DBGridEh_FGT.columns[5].ButtonStyle:=cbsnone;
    DBGridEh_FGT.columns[6].ButtonStyle:=cbsnone;
    DBGridEh_FGT.columns[7].ButtonStyle:=cbsnone;
    DBGridEh_FGT.columns[8].ButtonStyle:=cbsnone;
    DBGridEh_FGT.columns[9].ButtonStyle:=cbsnone;
    DBGridEh_FGT.columns[10].ButtonStyle:=cbsnone;
    DBGridEh_FGT.columns[11].ButtonStyle:=cbsnone;
    DBGridEh_FGT.columns[12].ButtonStyle:=cbsnone;
    DBGridEh_FGT.columns[13].ButtonStyle:=cbsnone;
    DBGridEh_FGT.columns[14].ButtonStyle:=cbsnone;
    DBGridEh_FGT.columns[15].ButtonStyle:=cbsnone;
IF J<>' ' THEN
   begin
     Qry_Browse.active:=false;
     Qry_Browse.active:=true;
     Qry_Browse.Locate('article',J,[]) ;   //指到原來的記錄
   end;

end;

procedure TFGTTest.Excel2Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
begin
//  target := 'ts1/ts2/ts3';
  tdbgh := DBGridEh1;

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

end.
