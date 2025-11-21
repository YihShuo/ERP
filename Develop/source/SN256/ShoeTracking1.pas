unit ShoeTracking1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, GridsEh, DBGridEh, ExtCtrls, ComCtrls,comobj,
  DBCtrls, Mask, Buttons;

type
  TShoeTracking = class(TForm)
    DataSource2: TDataSource;
    shoetotal: TQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    DBGridEh2: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Panel6: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Button3: TButton;
    DataSource4: TDataSource;
    Query1: TQuery;
    DBGridEh4: TDBGridEh;
    devtypet: TComboBox;
    Label3: TLabel;
    seasont: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    shoenamet: TEdit;
    Category: TLabel;
    Label6: TLabel;
    FDt: TEdit;
    Query1Article: TStringField;
    Query1FD: TStringField;
    Query1ShoeName: TStringField;
    Query1Season: TStringField;
    Query1DevType: TStringField;
    Query1Category: TStringField;
    Query1Dropped: TBooleanField;
    Query1Transfer: TBooleanField;
    Query1Looksee: TBooleanField;
    Query1ProdTrsfrIn: TBooleanField;
    Query1Year: TStringField;
    Query1Month: TStringField;
    Query1Pairs: TIntegerField;
    Query1TestLevel: TStringField;
    Query1Outsole: TStringField;
    Query1Last: TStringField;
    Query1ToeCap: TStringField;
    Query1ToeBumper: TStringField;
    Query1Foxing: TStringField;
    Query1HeelLogo: TStringField;
    Query1HandOver: TStringField;
    Query1SizeRange: TStringField;
    Query1Gender: TStringField;
    Query1ColorName: TStringField;
    Query1Model: TStringField;
    Query1Color: TStringField;
    Query1productiontype: TStringField;
    Query1Tier: TStringField;
    CheckBox1: TCheckBox;
    Panel7: TPanel;
    FDc: TCheckBox;
    Categoryc: TCheckBox;
    Shoenamec: TCheckBox;
    Devtypec: TCheckBox;
    Seasonc: TCheckBox;
    Statusc: TCheckBox;
    Productionc: TCheckBox;
    TestLevelc: TCheckBox;
    Devc: TCheckBox;
    Outsolec: TCheckBox;
    Lastc: TCheckBox;
    CutDiec: TCheckBox;
    TopCapc: TCheckBox;
    ToeBumperc: TCheckBox;
    Foxingc: TCheckBox;
    HeelLogoc: TCheckBox;
    CWAc: TCheckBox;
    HandOverc: TCheckBox;
    SizeRangec: TCheckBox;
    Genderc: TCheckBox;
    ColorNamec: TCheckBox;
    Modelc: TCheckBox;
    Colorc: TCheckBox;
    Productiontypec: TCheckBox;
    Tierc: TCheckBox;
    ComboBox1: TComboBox;
    ShoeNamed: TCheckBox;
    seasontext: TEdit;
    Label2: TLabel;
    Button4: TButton;
    ArtStatus: TComboBox;
    Status: TLabel;
    Stagec: TComboBox;
    Label7: TLabel;
    Query1PC_Release: TStringField;
    Query1CuttingDie: TStringField;
    Query1TechLevel: TStringField;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    QueryAll: TQuery;
    DataSource1: TDataSource;
    QueryAllXieXing: TStringField;
    QueryAllshehao: TStringField;
    QueryAlljijie: TStringField;
    QueryAllkhdh: TStringField;
    QueryAllpairs: TIntegerField;
    QueryAlldevtype: TStringField;
    QueryAllTransfer: TBooleanField;
    QueryAlldropped: TBooleanField;
    DDZLall: TQuery;
    Panel5: TPanel;
    DBGridEh1: TDBGridEh;
    Panel8: TPanel;
    DBGridEh3: TDBGridEh;
    DataSource3: TDataSource;
    DDZLallDDBH: TStringField;
    DDZLallXiexing: TStringField;
    DDZLallShehao: TStringField;
    DDZLallArticle: TStringField;
    DDZLallPairs: TIntegerField;
    DDZLallShipDate: TDateTimeField;
    TabSheet4: TTabSheet;
    Panel9: TPanel;
    Panel10: TPanel;
    Button5: TButton;
    Edit1: TEdit;
    DBGridEh5: TDBGridEh;
    categorytotal: TQuery;
    DataSource5: TDataSource;
    Label8: TLabel;
    categorytotalSeason: TStringField;
    categorytotalCategory: TStringField;
    categorytotalPairs: TIntegerField;
    DBGridEh6: TDBGridEh;
    queryFD: TQuery;
    DataSource6: TDataSource;
    queryFDFD: TStringField;
    queryFDTotalArt: TIntegerField;
    Categoryt: TComboBox;
    articlec: TEdit;
    Label9: TLabel;
    DBGridEh7: TDBGridEh;
    FDart: TQuery;
    DataSource7: TDataSource;
    queryFDcategory: TStringField;
    FDartdevcode: TStringField;
    FDartcategory: TStringField;
    Query1Segment: TStringField;
    Segmentc: TCheckBox;
    Segmentq: TDBComboBox;
    Label10: TLabel;
    genderq: TComboBox;
    Label11: TLabel;
    FDartxiexing: TStringField;
    FDartshehao: TStringField;
    FDartxieming: TStringField;
    QueryAlldevcode: TStringField;
    DDZLallDDRQ: TDateTimeField;
    CheckBox2: TCheckBox;
    DTP1: TDateTimePicker;
    Label12: TLabel;
    DTP2: TDateTimePicker;
    shoetotalKHDH: TStringField;
    shoetotaljijie: TStringField;
    shoetotalallarticle: TIntegerField;
    shoetotalnoddzl: TIntegerField;
    shoetotalnoddzlInline: TIntegerField;
    shoetotalnoddzlSmu: TIntegerField;
    shoetotalnoddzlIncubate: TIntegerField;
    shoetotalnoddzlGreatGood: TIntegerField;
    shoetotalnoddzlQuickResponse: TIntegerField;
    shoetotalsmu: TIntegerField;
    shoetotalinline: TIntegerField;
    shoetotalGreatGood: TIntegerField;
    shoetotalIncubate: TIntegerField;
    shoetotalQuickResponse: TIntegerField;
    shoetotalPairs: TIntegerField;
    shoetotaltransfer: TIntegerField;
    shoetotaltransferInline: TIntegerField;
    shoetotaltransferSMU: TIntegerField;
    shoetotaltransferQuickResponse: TIntegerField;
    shoetotaltransferIncubate: TIntegerField;
    shoetotaltransferGreatGood: TIntegerField;
    shoetotaldropped: TIntegerField;
    shoetotaldroppedInline: TIntegerField;
    shoetotaldroppedSMU: TIntegerField;
    shoetotaldroppedQuickResponse: TIntegerField;
    shoetotaldroppedIncubate: TIntegerField;
    shoetotaldroppedGreatGood: TIntegerField;
    shoetotalhaveddzlall: TIntegerField;
    shoetotalhaveddzlinline: TIntegerField;
    shoetotalhaveddzlsmu: TIntegerField;
    shoetotalhaveddzlGreatGood: TIntegerField;
    shoetotalhaveddzlIncubate: TIntegerField;
    shoetotalhaveddzlQuickResponse: TIntegerField;
    TabSheet5: TTabSheet;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    DataSource8: TDataSource;
    SampleOrderTracking: TQuery;
    Label13: TLabel;
    Edit2: TEdit;
    Button6: TButton;
    DBGridEh8: TDBGridEh;
    SampleOrderTrackingSeason: TStringField;
    SampleOrderTrackingSR: TStringField;
    SampleOrderTrackingShoeName: TStringField;
    SampleOrderTrackingSampleOrder: TStringField;
    SampleOrderTrackingTestNO: TStringField;
    SampleOrderTrackingStage: TStringField;
    SampleOrderTrackingpreparationDate: TDateTimeField;
    SampleOrderTrackingCutDate: TDateTimeField;
    SampleOrderTrackingStitchingDate: TDateTimeField;
    SampleOrderTrackingAssemblyDate: TDateTimeField;
    SampleOrderTrackingSampleOderQty1: TFloatField;
    SampleOrderTrackingSampleOderQty2: TFloatField;
    SampleOrderTrackingTBQty: TFloatField;
    SampleOrderTrackingInWarehouse: TFloatField;
    SampleOrderTrackingOutWarehouse: TFloatField;
    SampleOrderTrackingFD: TStringField;
    Button7: TButton;
    CheckBox3: TCheckBox;
    TabSheet6: TTabSheet;
    Panel14: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label46: TLabel;
    Label229: TLabel;
    Label66: TLabel;
    Label16: TLabel;
    Season: TComboBox;
    BB1: TBitBtn;
    SR: TEdit;
    excel1: TButton;
    devtype: TComboBox;
    FD: TComboBox;
    SKU: TEdit;
    Stage: TComboBox;
    Panel15: TPanel;
    Label75: TLabel;
    Label32: TLabel;
    Label43: TLabel;
    DBEdit50: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit29: TDBEdit;
    DBGridEh9: TDBGridEh;
    DBGridEh10: TDBGridEh;
    DataSource9: TDataSource;
    kfxxzl: TQuery;
    Query2: TQuery;
    kfxxzlSegment: TStringField;
    kfxxzlcategory: TStringField;
    kfxxzlcut: TStringField;
    kfxxzlProductionType: TStringField;
    kfxxzlOrigin: TStringField;
    kfxxzlShoeName: TStringField;
    kfxxzlYSSM: TStringField;
    kfxxzlMMD: TStringField;
    kfxxzlGENDER: TStringField;
    kfxxzlMN: TStringField;
    kfxxzlSampleSize: TStringField;
    kfxxzlSCC: TStringField;
    kfxxzlTier: TStringField;
    kfxxzlLast: TStringField;
    kfxxzlOutsole: TStringField;
    kfxxzlLiningCategory: TStringField;
    kfxxzlColorwayID: TStringField;
    kfxxzlSKU: TStringField;
    kfxxzlDevelopmentCenter: TStringField;
    kfxxzlSampleDate: TStringField;
    kfxxzlPAIRS: TStringField;
    kfxxzlKindofHangtag: TStringField;
    kfxxzlNo: TStringField;
    kfxxzlMidsole: TStringField;
    TabSheet7: TTabSheet;
    Panel16: TPanel;
    Panel17: TPanel;
    Label17: TLabel;
    Edit3: TEdit;
    Button8: TButton;
    Button9: TButton;
    DBGridEh11: TDBGridEh;
    ShoeTotalQry: TQuery;
    ShoeTotalQrySeason: TStringField;
    ShoeTotalQryShoeQty: TFloatField;
    ShoeTotalQryUSACC: TFloatField;
    ShoeTotalQryVNACC: TFloatField;
    TabSheet8: TTabSheet;
    Panel18: TPanel;
    Panel19: TPanel;
    Label18: TLabel;
    Edit4: TEdit;
    Button10: TButton;
    Button11: TButton;
    ShoeTotalDetailDS: TDataSource;
    ShoeTotalDetailQry: TQuery;
    DBGridEh12: TDBGridEh;
    ShoeTotalDetailQrydevtype: TStringField;
    ShoeTotalDetailQryFD: TStringField;
    ShoeTotalDetailQryxieming: TStringField;
    ShoeTotalDetailQryTestno: TIntegerField;
    ShoeTotalDetailQryzwsm: TStringField;
    ShoeTotalDetailQryqty: TFloatField;
    Label19: TLabel;
    ComboBox2: TComboBox;
    ShoeTotalsQry: TQuery;
    Panel20: TPanel;
    DBGridEh13: TDBGridEh;
    ShoeTotalsDS: TDataSource;
    ShoeTotalDS: TDataSource;
    ShoeTotalsQrySeason: TStringField;
    ShoeTotalsQryQty: TFloatField;
    ShoeTotalsQryzwsm: TStringField;
    ShoeTotalDetailQrySeason: TStringField;
    ShoeTotalDetailQryArticle: TStringField;
    ShoetotalFDDS: TDataSource;
    ShoetotalFDQry: TQuery;
    Panel21: TPanel;
    DBGridEh14: TDBGridEh;
    ShoetotalFDQrySeason: TStringField;
    ShoetotalFDQryFD: TStringField;
    ShoetotalFDQryQty: TFloatField;
    ShoetotalFDQryTestno: TIntegerField;
    ShoetotalFDQrydevcode: TIntegerField;
    ShoetotalFDQrydevtype: TStringField;
    Edit5: TEdit;
    Label20: TLabel;
    Panel22: TPanel;
    CheckBox4: TCheckBox;
    LAI: TComboBox;
    Label21: TLabel;
    Panel23: TPanel;
    DBEdit1: TDBEdit;
    inlineP: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    DBEdit2: TDBEdit;
    SMUP: TEdit;
    incubateP: TEdit;
    DBEdit3: TDBEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    DBEdit4: TDBEdit;
    GGP: TEdit;
    Edit14: TEdit;
    DBEdit5: TDBEdit;
    QRP: TEdit;
    Edit6: TEdit;
    DBEdit6: TDBEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit13: TEdit;
    Edit15: TEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    haveorderP: TEdit;
    noOrderP: TEdit;
    TransferP: TEdit;
    Edit19: TEdit;
    DBEdit12: TDBEdit;
    DroppedP: TEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Edit16: TEdit;
    DBEdit15: TDBEdit;
    TabSheet9: TTabSheet;
    Panel24: TPanel;
    Panel25: TPanel;
    TrialTimesQry: TQuery;
    DBGridEh15: TDBGridEh;
    TrialTimesDS: TDataSource;
    Button12: TButton;
    Edit17: TEdit;
    Label22: TLabel;
    TrialTimesQrydevcode: TStringField;
    TrialTimesQryxieming: TStringField;
    TrialTimesQryuserid: TStringField;
    TrialTimesQryFD: TStringField;
    TrialTimesQryjijie: TStringField;
    TrialTimesQryarticle: TStringField;
    TrialTimesQrytimes: TIntegerField;
    TrialTimesQryteamleader: TStringField;
    TrialTimesQryTeamleaderName: TStringField;
    Button13: TButton;
    TrialTimesQryLevel: TStringField;
    Panel26: TPanel;
    DBGridEh16: TDBGridEh;
    TrialTimessQry: TQuery;
    TrialTimessDS: TDataSource;
    TrialTimessQryTestno: TStringField;
    TrialTimessQryStage: TStringField;
    TrialTimessQrySeesTage: TStringField;
    TrialTimessQryPurpose: TStringField;
    TrialTimessQryParts: TStringField;
    TrialTimessQryQty: TFloatField;
    SRTEXT: TEdit;
    Label23: TLabel;
    CheckBox5: TCheckBox;
    Panel27: TPanel;
    Button2: TButton;
    Panel28: TPanel;
    Button14: TButton;
    Label311: TLabel;
    DBComboBox22: TDBComboBox;
    Query1type: TStringField;
    Label24: TLabel;
    ComboBox3: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FDcClick(Sender: TObject);
    procedure ShoenamecClick(Sender: TObject);
    procedure SeasoncClick(Sender: TObject);
    procedure DevtypecClick(Sender: TObject);
    procedure CategorycClick(Sender: TObject);
    procedure StatuscClick(Sender: TObject);
    procedure ProductioncClick(Sender: TObject);
    procedure TestLevelcClick(Sender: TObject);
    procedure DevcClick(Sender: TObject);
    procedure OutsolecClick(Sender: TObject);
    procedure LastcClick(Sender: TObject);
    procedure CutDiecClick(Sender: TObject);
    procedure TopCapcClick(Sender: TObject);
    procedure ToeBumpercClick(Sender: TObject);
    procedure FoxingcClick(Sender: TObject);
    procedure HeelLogocClick(Sender: TObject);
    procedure CWAcClick(Sender: TObject);
    procedure HandOvercClick(Sender: TObject);
    procedure SizeRangecClick(Sender: TObject);
    procedure GendercClick(Sender: TObject);
    procedure ColorNamecClick(Sender: TObject);
    procedure ModelcClick(Sender: TObject);
    procedure ColorcClick(Sender: TObject);
    procedure ProductiontypecClick(Sender: TObject);
    procedure TiercClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure Button5Click(Sender: TObject);
    procedure DBGridEh5CellClick(Column: TColumnEh);
    procedure DBGridEh6CellClick(Column: TColumnEh);
    procedure SegmentcClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure excel1Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure DoPercent();
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
  private
    AppDir:String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShoeTracking: TShoeTracking;

implementation

uses main1;

{$R *.dfm}
procedure TShoeTracking.DoPercent();
begin
   inlineP.text:=inttostr(shoetotal.fieldbyname('inline').value/shoetotal.fieldbyname('allarticle').value*100)+'%';
   SMUP.text:=inttostr(shoetotal.fieldbyname('SMU').value/shoetotal.fieldbyname('allarticle').value*100)+'%';
   incubateP.text:=inttostr(shoetotal.fieldbyname('incubate').value/shoetotal.fieldbyname('allarticle').value*100)+'%';
   GGP.text:=inttostr(shoetotal.fieldbyname('Great@Good').value/shoetotal.fieldbyname('allarticle').value*100)+'%';
   QRP.text:=inttostr(shoetotal.fieldbyname('QuickResponse').value/shoetotal.fieldbyname('allarticle').value*100)+'%';

   haveOrderP.text:=inttostr(shoetotal.fieldbyname('haveddzlall').value/shoetotal.fieldbyname('allarticle').value*100)+'%';
   NOOrderP.text:=inttostr(shoetotal.fieldbyname('noddzl').value/shoetotal.fieldbyname('allarticle').value*100)+'%';
   TransferP.text:=inttostr(shoetotal.fieldbyname('transfer').value/shoetotal.fieldbyname('allarticle').value*100)+'%';
   DroppedP.text:=inttostr(shoetotal.fieldbyname('dropped').value/shoetotal.fieldbyname('allarticle').value*100)+'%';

end;


procedure TShoeTracking.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TShoeTracking.FormDestroy(Sender: TObject);
begin
  ShoeTracking:=nil;
end;

procedure TShoeTracking.Button1Click(Sender: TObject);
begin
 with shoetotal do
  begin
      SQL.Clear;             //算當季所有ARTICLE及雙數
       SQL.Add('select B.KHDH,b.jijie,B.allarticle as allarticle,');
       SQL.Add('isnull(noddzl.noddzl,0) as noddzl,');
       SQL.Add('isnull(noddzlInline.noddzlInline,0) as noddzlInline,isnull(noddzlSmu.noddzlSmu,0) as noddzlSmu,isnull(noddzlIncubate.noddzlIncubate,0) as noddzlIncubate,');
       SQL.Add('isnull(noddzlGreat@Good.noddzlGreat@Good,0) as noddzlGreat@Good,isnull(noddzlQuickResponse.noddzlQuickResponse,0) as noddzlQuickResponse,');
       SQL.Add('isnull(smu.smu,0) as smu,isnull(Inline.inline,0) as inline ,isnull(Great@Good.Great@Good,0) as Great@Good,isnull(Incubate.Incubate,0) as Incubate,isnull(QuickResponse.QuickResponse,0) as QuickResponse,');
       SQL.Add(' isnull(Pairs.Pairs,0) as Pairs,');
       SQL.Add('isnull(transfer.transfer,0) as transfer,');
       SQL.Add('isnull(transferInline.transferInline,0) as transferInline,isnull(transferSMU.transferSMU,0) as transferSMU,isnull(transferQuickResponse.transferQuickResponse,0) as transferQuickResponse,');
       SQL.Add('isnull(transferIncubate.transferIncubate,0) as transferIncubate,isnull(transferGreat@Good.transferGreat@Good,0) as transferGreat@Good,');
       SQL.Add('isnull(dropped.dropped,0) as dropped,');
       SQL.Add('isnull(droppedInline.droppedInline,0) as droppedInline,isnull(droppedSMU.droppedSMU,0) as droppedSMU,isnull(droppedQuickResponse.droppedQuickResponse,0) as droppedQuickResponse,');
       SQL.Add('isnull(droppedIncubate.droppedIncubate,0) as droppedIncubate,isnull(droppedGreat@Good.droppedGreat@Good,0) as droppedGreat@Good,');
       SQL.Add('isnull(haveddzlall.haveddzlall,0) as haveddzlall,');
       SQL.Add('isnull(haveddzlinline.haveddzlinline,0) as haveddzlinline,isnull(haveddzlsmu.haveddzlsmu,0) as haveddzlsmu,isnull(haveddzlGreat@Good.haveddzlGreat@Good,0) as haveddzlGreat@Good,');
       SQL.Add('isnull(haveddzlIncubate.haveddzlIncubate,0) as haveddzlIncubate,isnull(haveddzlQuickResponse.haveddzlQuickResponse,0) as haveddzlQuickResponse');
       SQL.Add('from');
       SQL.Add('(select A.KHDH,count(*)as allarticle,jijie from');
       SQL.Add('(select kfxxzl.devcode,kfxxzl.XieXing,kfxxzl.shehao,kfxxzl.jijie,kfxxzl.khdh from kfxxzl');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('where kfxxzl.devcode is not null and kfxxzl.devcode<>'''' and kfzl_GS.GSBH='''+ComboBox3.Text+''' and kfxxzl.jijie like '''+'%'+seasontext.Text+'%'+''' and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+'''');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add(')A');
       SQL.Add('group by a.jijie,a.KHDH) B');
       //所有型體

       SQL.Add('left join ');
       SQL.Add('(select sum(isnull(a.Pairs,0))as Pairs,a.jijie from');
       SQL.Add('(select KFXXZL.KHDH,kfxxzl.xiexing,KFXXZL.shehao,isnull(DDZL.Pairs,0) as Pairs,KFXXZL.jijie,KFXXZL.devcode from KFXXZL');
       SQL.Add('left join ddzl on ddzl.XieXing=KFXXZL.XieXing and ddzl.shehao=KFXXZL.shehao');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('where kfxxzl.devcode is not null and kfxxzl.devcode<>'''' and kfzl_GS.GSBH='''+ComboBox3.Text+''' and kfxxzl.jijie like '''+'%'+seasontext.Text+'%'+''' and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+''' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add(')A');
       SQL.Add('group by a.jijie) Pairs on Pairs.jijie = B.jijie');
        //所有雙數


       SQL.Add('left join');
       SQL.Add('(select count(a.devcode) as haveddzlall,a.jijie from');
       SQL.Add('(select KFXXZL.KHDH,kfxxzl.xiexing,KFXXZL.shehao,KFXXZL.jijie,KFXXZL.devcode from KFXXZL');
       SQL.Add('left join ddzl on ddzl.XieXing=KFXXZL.XieXing and ddzl.shehao=KFXXZL.shehao');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('where kfxxzl.devcode is not null and kfxxzl.devcode<>'''' and kfzl_GS.GSBH='''+ComboBox3.Text+''' and kfxxzl.jijie like '''+'%'+seasontext.Text+'%'+''' and pairs<>''0'' and pairs is not null and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+''' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add('group by KFXXZL.devcode,KFXXZL.KHDH,kfxxzl.xiexing,KFXXZL.shehao,KFXXZL.jijie)A');
       SQL.Add('group by a.jijie)haveddzlall on haveddzlall.jijie=B.jijie ');
       //有接單型體


       SQL.Add('left join');
       SQL.Add('(select count(a.devcode) as haveddzlinline,a.jijie from');
       SQL.Add('(select KFXXZL.KHDH,kfxxzl.xiexing,KFXXZL.shehao,KFXXZL.jijie,KFXXZL.devcode from KFXXZL');
       SQL.Add('left join ddzl on ddzl.XieXing=KFXXZL.XieXing and ddzl.shehao=KFXXZL.shehao');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('where kfxxzl.devcode is not null and kfxxzl.devcode<>'''' and kfzl_GS.GSBH='''+ComboBox3.Text+''' and kfxxzl.jijie like '''+'%'+seasontext.Text+'%'+''' and pairs<>''0'' and pairs is not null and kfxxzl.devtype=''inline'' and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+'''');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add('group by KFXXZL.KHDH,kfxxzl.xiexing,KFXXZL.shehao,KFXXZL.jijie,KFXXZL.devcode )A');
       SQL.Add('group by a.jijie)haveddzlinline on haveddzlinline.jijie=B.jijie');
       //Inline有接單型體



       SQL.Add('left join');
       SQL.Add('(select count(a.devcode) as haveddzlsmu,a.jijie from');
       SQL.Add('(select KFXXZL.KHDH,kfxxzl.xiexing,KFXXZL.shehao,KFXXZL.jijie,KFXXZL.devcode from KFXXZL');
       SQL.Add('left join ddzl on ddzl.XieXing=KFXXZL.XieXing and ddzl.shehao=KFXXZL.shehao');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('where kfxxzl.devcode is not null and kfxxzl.devcode<>'''' and kfzl_GS.GSBH='''+ComboBox3.Text+''' and kfxxzl.jijie like '''+'%'+seasontext.Text+'%'+''' and pairs<>''0'' and pairs is not null and kfxxzl.devtype=''smu'' and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+'''');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add('group by KFXXZL.KHDH,kfxxzl.xiexing,KFXXZL.shehao,KFXXZL.jijie,KFXXZL.devcode)A');
       SQL.Add('group by a.jijie)haveddzlsmu on haveddzlsmu.jijie=B.jijie');
       //SMU有接單型體

       SQL.Add('left join');
       SQL.Add('(select count(a.devcode) as haveddzlIncubate,a.jijie from');
       SQL.Add('(select KFXXZL.KHDH,kfxxzl.xiexing,KFXXZL.shehao,KFXXZL.jijie,KFXXZL.devcode from KFXXZL');
       SQL.Add('left join ddzl on ddzl.XieXing=KFXXZL.XieXing and ddzl.shehao=KFXXZL.shehao');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('where kfxxzl.devcode is not null and kfxxzl.devcode<>'''' and kfzl_GS.GSBH='''+ComboBox3.Text+''' and kfxxzl.jijie like '''+'%'+seasontext.Text+'%'+''' and pairs<>''0'' and pairs is not null and kfxxzl.devtype=''Incubate'' and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+'''');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add('group by KFXXZL.KHDH,kfxxzl.xiexing,KFXXZL.shehao,KFXXZL.jijie,KFXXZL.devcode)A');
       SQL.Add('group by a.jijie)haveddzlIncubate on haveddzlIncubate.jijie=B.jijie');
       //Incubate有接單型體

       SQL.Add('left join');
       SQL.Add('(select count(a.devcode) as haveddzlGreat@Good,a.jijie from');
       SQL.Add('(select KFXXZL.KHDH,kfxxzl.xiexing,KFXXZL.shehao,KFXXZL.jijie,KFXXZL.devcode from KFXXZL');
       SQL.Add('left join ddzl on ddzl.XieXing=KFXXZL.XieXing and ddzl.shehao=KFXXZL.shehao');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('where kfxxzl.devcode is not null and kfxxzl.devcode<>'''' and kfzl_GS.GSBH='''+ComboBox3.Text+''' and kfxxzl.jijie like '''+'%'+seasontext.Text+'%'+''' and pairs<>''0'' and pairs is not null and kfxxzl.devtype=''Great@Good'' and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+'''');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add('group by KFXXZL.KHDH,kfxxzl.xiexing,KFXXZL.shehao,KFXXZL.jijie,KFXXZL.devcode)A');
       SQL.Add('group by a.jijie)haveddzlGreat@Good on haveddzlGreat@Good.jijie=B.jijie');
       //Great@Good有接單型體

       SQL.Add('left join');
       SQL.Add('(select count(a.devcode) as haveddzlQuickResponse,a.jijie from');
       SQL.Add('(select KFXXZL.KHDH,kfxxzl.xiexing,KFXXZL.shehao,KFXXZL.jijie,KFXXZL.devcode from KFXXZL');
       SQL.Add('left join ddzl on ddzl.XieXing=KFXXZL.XieXing and ddzl.shehao=KFXXZL.shehao');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('where kfxxzl.devcode is not null and kfxxzl.devcode<>'''' and kfzl_GS.GSBH='''+ComboBox3.Text+''' and kfxxzl.jijie like '''+'%'+seasontext.Text+'%'+''' and pairs<>''0'' and pairs is not null and kfxxzl.devtype=''Quick Response'' and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+'''');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add('group by KFXXZL.KHDH,kfxxzl.xiexing,KFXXZL.shehao,KFXXZL.jijie,KFXXZL.devcode)A');
       SQL.Add('group by a.jijie)haveddzlQuickResponse on haveddzlQuickResponse.jijie=B.jijie');
       //Quick Response有接單型體

       SQL.Add('left join');
       SQL.Add('(select count(C.devcode) as noddzl,C.jijie from');
       SQL.Add('(select KFXXZL.KHDH,kfxxzl.xiexing,kfxxzl.shehao,isnull(DDZL.Pairs,0) as Pairs,KFXXZL.jijie,KFXXZL.devcode from KFXXZL');
       SQL.Add('left join ddzl on ddzl.XieXing=KFXXZL.XieXing and ddzl.shehao=KFXXZL.shehao');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.shehao=KFXXZL.shehao');
       SQL.Add('where kfxxzl.devcode is not null and kfxxzl.devcode<>'''' and DDZL.pairs is null');
       SQL.Add('and (xxzlkf.dropped <>''1'' or  xxzlkf.dropped is null ) and (xxzlkf.transfer <>''1'' or  xxzlkf.transfer is null )');
       SQL.Add('and kfzl_GS.GSBH='''+ComboBox3.Text+''' and kfxxzl.jijie like '''+'%'+seasontext.Text+'%'+''' and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+'''');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add('group by KFXXZL.KHDH,kfxxzl.xiexing,kfxxzl.shehao,DDZL.Pairs,KFXXZL.jijie,KFXXZL.devcode)C');
       SQL.Add('group by C.jijie) noddzl on noddzl.JiJie=B.jijie');
       //無接單型體

       SQL.Add('left join');
       SQL.Add('(select count(C1.devcode) as noddzlInline,C1.jijie from');
       SQL.Add('(select KFXXZL.KHDH,kfxxzl.xiexing,kfxxzl.shehao,isnull(DDZL.Pairs,0) as Pairs,KFXXZL.jijie, KFXXZL.devcode from KFXXZL');
       SQL.Add('left join ddzl on ddzl.XieXing=KFXXZL.XieXing and ddzl.shehao=KFXXZL.shehao');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.shehao=KFXXZL.shehao');
       SQL.Add('where kfxxzl.devcode is not null and kfxxzl.devcode<>''''  and DDZL.pairs is null');
       SQL.Add('and (xxzlkf.dropped <>''1'' or  xxzlkf.dropped is null ) and (xxzlkf.transfer <>''1'' or  xxzlkf.transfer is null )');
       SQL.Add('and kfxxzl.devtype=''Inline'' and kfzl_GS.GSBH='''+ComboBox3.Text+''' and kfxxzl.jijie like '''+'%'+seasontext.Text+'%'+''' and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+'''' );
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add('group by KFXXZL.KHDH,kfxxzl.xiexing,kfxxzl.shehao,DDZL.Pairs,KFXXZL.jijie,KFXXZL.devcode)C1');
       SQL.Add('group by C1.jijie) noddzlInline on noddzlInline.JiJie=B.jijie');
       //Inline無接單型體

       SQL.Add('left join');
       SQL.Add('(select count(C2.devcode) as noddzlsmu,C2.jijie from');
       SQL.Add('(select KFXXZL.KHDH,kfxxzl.xiexing,kfxxzl.shehao,isnull(DDZL.Pairs,0) as Pairs,KFXXZL.jijie,KFXXZL.devcode from KFXXZL');
       SQL.Add('left join ddzl on ddzl.XieXing=KFXXZL.XieXing and ddzl.shehao=KFXXZL.shehao');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.shehao=KFXXZL.shehao');
       SQL.Add('where kfxxzl.devcode is not null and kfxxzl.devcode<>'''' and DDZL.pairs is null');
       SQL.Add('and (xxzlkf.dropped <>''1'' or  xxzlkf.dropped is null ) and (xxzlkf.transfer <>''1'' or  xxzlkf.transfer is null )');
       SQL.Add('and kfxxzl.devtype=''SMU'' and kfzl_GS.GSBH='''+ComboBox3.Text+'''  and kfxxzl.jijie like '''+'%'+seasontext.Text+'%'+''' and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+'''');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add('group by KFXXZL.KHDH,kfxxzl.xiexing,kfxxzl.shehao,DDZL.Pairs,KFXXZL.jijie,KFXXZL.devcode)C2');
       SQL.Add('group by C2.jijie) noddzlsmu on noddzlsmu.JiJie=B.jijie');
       //SMU無接單型體

       SQL.Add('left join');
       SQL.Add('(select count(C2.devcode) as noddzlGreat@Good,C2.jijie from');
       SQL.Add('(select KFXXZL.KHDH,kfxxzl.xiexing,kfxxzl.shehao,isnull(DDZL.Pairs,0) as Pairs,KFXXZL.jijie,KFXXZL.devcode from KFXXZL');
       SQL.Add('left join ddzl on ddzl.XieXing=KFXXZL.XieXing and ddzl.shehao=KFXXZL.shehao');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.shehao=KFXXZL.shehao');
       SQL.Add('where kfxxzl.devcode is not null and kfxxzl.devcode<>'''' and DDZL.pairs is null');
       SQL.Add('and (xxzlkf.dropped <>''1'' or  xxzlkf.dropped is null ) and (xxzlkf.transfer <>''1'' or  xxzlkf.transfer is null )');
       SQL.Add('and kfxxzl.devtype=''Great@Good'' and kfzl_GS.GSBH='''+ComboBox3.Text+'''  and kfxxzl.jijie like '''+'%'+seasontext.Text+'%'+''' and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+'''');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add('group by KFXXZL.KHDH,kfxxzl.xiexing,kfxxzl.shehao,DDZL.Pairs,KFXXZL.jijie,KFXXZL.devcode)C2');
       SQL.Add('group by C2.jijie) noddzlGreat@Good on noddzlGreat@Good.JiJie=B.jijie');
       //Great@Good無接單型體

       SQL.Add('left join');
       SQL.Add('(select count(C2.devcode) as noddzlQuickResponse,C2.jijie from');
       SQL.Add('(select KFXXZL.KHDH,kfxxzl.xiexing,kfxxzl.shehao,isnull(DDZL.Pairs,0) as Pairs,KFXXZL.jijie,KFXXZL.devcode from KFXXZL');
       SQL.Add('left join ddzl on ddzl.XieXing=KFXXZL.XieXing and ddzl.shehao=KFXXZL.shehao');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.shehao=KFXXZL.shehao');
       SQL.Add('where kfxxzl.devcode is not null and kfxxzl.devcode<>'''' and DDZL.pairs is null');
       SQL.Add('and (xxzlkf.dropped <>''1'' or  xxzlkf.dropped is null ) and (xxzlkf.transfer <>''1'' or  xxzlkf.transfer is null )');
       SQL.Add('and kfxxzl.devtype=''Quick Response'' and kfzl_GS.GSBH='''+ComboBox3.Text+'''  and kfxxzl.jijie like '''+'%'+seasontext.Text+'%'+''' and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+'''');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add('group by KFXXZL.KHDH,kfxxzl.xiexing,kfxxzl.shehao,DDZL.Pairs,KFXXZL.jijie,KFXXZL.devcode)C2');
       SQL.Add('group by C2.jijie) noddzlQuickResponse on noddzlQuickResponse.JiJie=B.jijie');
       //Quick Response無接單型體

       SQL.Add('left join');
       SQL.Add('(select count(C2.devcode) as noddzlIncubate,C2.jijie from');
       SQL.Add('(select KFXXZL.KHDH,kfxxzl.xiexing,kfxxzl.shehao,isnull(DDZL.Pairs,0) as Pairs,KFXXZL.jijie,KFXXZL.devcode from KFXXZL');
       SQL.Add('left join ddzl on ddzl.XieXing=KFXXZL.XieXing and ddzl.shehao=KFXXZL.shehao');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.shehao=KFXXZL.shehao');
       SQL.Add('where kfxxzl.devcode is not null and kfxxzl.devcode<>'''' and DDZL.pairs is null');
       SQL.Add('and (xxzlkf.dropped <>''1'' or  xxzlkf.dropped is null ) and (xxzlkf.transfer <>''1'' or  xxzlkf.transfer is null )');
       SQL.Add('and kfxxzl.devtype=''Incubate'' and kfzl_GS.GSBH='''+ComboBox3.Text+'''  and kfxxzl.jijie like '''+'%'+seasontext.Text+'%'+''' and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+'''');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add('group by KFXXZL.KHDH,kfxxzl.xiexing,kfxxzl.shehao,DDZL.Pairs,KFXXZL.jijie,KFXXZL.devcode)C2');
       SQL.Add('group by C2.jijie) noddzlIncubate on noddzlIncubate.JiJie=B.jijie');
       //Incubate無接單型體

       SQL.Add('left join');
       SQL.Add('(select count(D.devcode) as smu,D.jijie from');
       SQL.Add('(select KFXXZL.KHDH,KFXXZL.jijie,KFXXZL.devcode,KFXXZL.DevType from KFXXZL');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('where kfxxzl.devcode is not null and kfxxzl.devcode<>'''' and kfxxzl.DevType=''SMU'' and kfzl_GS.GSBH='''+ComboBox3.Text+''' and kfxxzl.jijie like '''+'%'+seasontext.Text+'%'+''' and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+'''');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add(')D');
       SQL.Add('group by D.jijie) smu on smu.JiJie=B.jijie');
       //SMU所有型體

       SQL.Add('left join');
       SQL.Add('(select count(D.DEVCODE) as Inline,D.jijie from');
       SQL.Add('(select KFXXZL.KHDH,KFXXZL.jijie,KFXXZL.devcode,KFXXZL.DevType from KFXXZL');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('where kfxxzl.devcode is not null and kfxxzl.devcode<>'''' and kfxxzl.DevType=''Inline'' and kfzl_GS.GSBH='''+ComboBox3.Text+'''  and kfxxzl.jijie like '''+'%'+seasontext.Text+'%'+''' and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+'''');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add(')D');
       SQL.Add('group by D.jijie) inline on inline.JiJie=B.jijie');
       //Inline所有型體

       SQL.Add('left join');
       SQL.Add('(select count(D.DEVCODE) as Incubate,D.jijie from');
       SQL.Add('(select KFXXZL.KHDH,KFXXZL.jijie,KFXXZL.devcode,KFXXZL.DevType from KFXXZL');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('where kfxxzl.devcode is not null and kfxxzl.devcode<>'''' and kfxxzl.DevType=''Incubate'' and kfzl_GS.GSBH='''+ComboBox3.Text+''' and kfxxzl.jijie like '''+'%'+seasontext.Text+'%'+''' and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+'''');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add(')D');
       SQL.Add('group by D.jijie) Incubate on Incubate.JiJie=B.jijie');
       //Incubate所有型體

       SQL.Add('left join');
       SQL.Add('(select count(D.DEVCODE) as Great@Good,D.jijie from');
       SQL.Add('(select KFXXZL.KHDH,KFXXZL.jijie,KFXXZL.devcode,KFXXZL.DevType from KFXXZL');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('where kfxxzl.devcode is not null and kfxxzl.devcode<>'''' and kfxxzl.DevType=''Great@Good'' and kfzl_GS.GSBH='''+ComboBox3.Text+''' and kfxxzl.jijie like '''+'%'+seasontext.Text+'%'+''' and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+'''');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add(')D');
       SQL.Add('group by D.jijie) Great@Good on Great@Good.JiJie=B.jijie');
       //Great@Good所有型體

       SQL.Add('left join');
       SQL.Add('(select count(D.DEVCODE) as QuickResponse,D.jijie from');
       SQL.Add('(select KFXXZL.KHDH,KFXXZL.jijie,KFXXZL.devcode,KFXXZL.DevType from KFXXZL');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('where kfxxzl.devcode is not null and kfxxzl.devcode<>'''' and kfxxzl.DevType=''Quick Response'' and kfzl_GS.GSBH='''+ComboBox3.Text+''' and kfxxzl.jijie like '''+'%'+seasontext.Text+'%'+''' and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+'''');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add(')D');
       SQL.Add('group by D.jijie) QuickResponse on QuickResponse.JiJie=B.jijie');
       //Quick Response所有型體

       SQL.Add('left join');
       SQL.Add('(select count(F.DEVCODE) as transfer,F.jijie from');
       SQL.Add('(select KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.transfer,KFXXZL.XIEXING,KFXXZL.SHEHAO from KFXXZL');
       SQL.Add('left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.shehao=KFXXZL.shehao');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('where kfxxzl.DEVCODE is not null  and kfxxzl.DEVCODE<>'''' and xxzlkf.transfer=''1'' and kfzl_GS.GSBH='''+ComboBox3.Text+''' and kfxxzl.jijie like '''+'%'+seasontext.Text+'%'+''' and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+'''');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add('group by KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.transfer,KFXXZL.XIEXING,KFXXZL.SHEHAO)F');
       SQL.Add('group by F.jijie) transfer on transfer.JiJie=B.jijie');
       //transfer所有型體

       SQL.Add('left join');
       SQL.Add('(select count(F1.DEVCODE) as transferInline,F1.jijie from');
       SQL.Add('(select KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.transfer,KFXXZL.XIEXING,KFXXZL.SHEHAO from KFXXZL');
       SQL.Add('left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.shehao=KFXXZL.shehao');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('where kfxxzl.DEVCODE is not null  and kfxxzl.DEVCODE<>'''' and xxzlkf.transfer=''1'' and kfzl_GS.GSBH='''+ComboBox3.Text+''' and kfxxzl.jijie like '''+'%'+seasontext.Text+'%'+''' and kfxxzl.devtype=''Inline'' and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+'''');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add('group by KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.transfer,KFXXZL.XIEXING,KFXXZL.SHEHAO)F1');
       SQL.Add('group by F1.jijie) transferInline on transferInline.JiJie=B.jijie');
       //TransferInline

       SQL.Add('left join');
       SQL.Add('(select count(F2.DEVCODE) as transferSMU,F2.jijie from');
       SQL.Add('(select KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.transfer,KFXXZL.XIEXING,KFXXZL.SHEHAO from KFXXZL');
       SQL.Add('left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.shehao=KFXXZL.shehao');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('where kfxxzl.DEVCODE is not null  and kfxxzl.DEVCODE<>'''' and xxzlkf.transfer=''1'' and kfzl_GS.GSBH='''+ComboBox3.Text+''' and kfxxzl.jijie like '''+'%'+seasontext.Text+'%'+''' and kfxxzl.devtype=''SMU'' and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+'''');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add('group by KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.transfer,KFXXZL.XIEXING,KFXXZL.SHEHAO)F2');
       SQL.Add('group by F2.jijie) transferSMU on transferSMU.JiJie=B.jijie');
       //TransferSMU

       SQL.Add('left join');
       SQL.Add('(select count(F2.DEVCODE) as TransferGreat@Good,F2.jijie from');
       SQL.Add('(select KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.transfer,KFXXZL.XIEXING,KFXXZL.SHEHAO from KFXXZL');
       SQL.Add('left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.shehao=KFXXZL.shehao');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('where kfxxzl.DEVCODE is not null  and kfxxzl.DEVCODE<>'''' and xxzlkf.transfer=''1'' and kfzl_GS.GSBH='''+ComboBox3.Text+''' and kfxxzl.jijie like '''+'%'+seasontext.Text+'%'+''' and kfxxzl.devtype=''Great@Good'' and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+'''');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add('group by KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.transfer,KFXXZL.XIEXING,KFXXZL.SHEHAO)F2');
       SQL.Add('group by F2.jijie) TransferGreat@Good on TransferGreat@Good.JiJie=B.jijie');
       //TransferGreat@Good

       SQL.Add('left join ');
       SQL.Add('(select count(F2.DEVCODE) as TransferIncubate,F2.jijie from');
       SQL.Add('(select KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.transfer,KFXXZL.XIEXING,KFXXZL.SHEHAO from KFXXZL');
       SQL.Add('left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.shehao=KFXXZL.shehao');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('where kfxxzl.DEVCODE is not null  and kfxxzl.DEVCODE<>'''' and xxzlkf.transfer=''1'' and kfzl_GS.GSBH='''+ComboBox3.Text+''' and kfxxzl.jijie like '''+'%'+seasontext.Text+'%'+''' and kfxxzl.devtype=''Incubate'' and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+'''');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add('group by KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.transfer,KFXXZL.XIEXING,KFXXZL.SHEHAO)F2');
       SQL.Add('group by F2.jijie) TransferIncubate on TransferIncubate.JiJie=B.jijie');
       //TransferIncubate


       SQL.Add('left join');
       SQL.Add('(select count(F2.DEVCODE) as TransferQuickResponse,F2.jijie from');
       SQL.Add('(select KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.transfer,KFXXZL.XIEXING,KFXXZL.SHEHAO from KFXXZL');
       SQL.Add('left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.shehao=KFXXZL.shehao');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('where kfxxzl.DEVCODE is not null  and kfxxzl.DEVCODE<>'''' and xxzlkf.transfer=''1'' and kfzl_GS.GSBH='''+ComboBox3.Text+''' and kfxxzl.jijie like '''+'%'+seasontext.Text+'%'+''' and kfxxzl.devtype=''Quick Response'' and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+'''');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add('group by KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.transfer,KFXXZL.XIEXING,KFXXZL.SHEHAO)F2');
       SQL.Add('group by F2.jijie) TransferQuickResponse on TransferQuickResponse.JiJie=B.jijie');
       //TransferQuickResponse

       SQL.Add('left join');
       SQL.Add('(select count(G.DEVCODE) as dropped,G.jijie from');
       SQL.Add('(select KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.dropped,KFXXZL.XIEXING,KFXXZL.SHEHAO from KFXXZL');
       SQL.Add('left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.shehao=KFXXZL.shehao');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('where kfxxzl.DEVCODE is not null  and kfxxzl.DEVCODE<>'''' and xxzlkf.dropped=''1'' and kfzl_GS.GSBH='''+ComboBox3.Text+''' and kfxxzl.jijie like '''+'%'+seasontext.Text+'%'+''' and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+'''');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add('group by KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.dropped,KFXXZL.XIEXING,KFXXZL.SHEHAO)G');
       SQL.Add('group by G.jijie) dropped on dropped.JiJie=B.jijie');
       //DroppedALL

       SQL.Add('left join');
       SQL.Add('(select count(G1.DEVCODE) as droppedInline,G1.jijie from');
       SQL.Add('(select KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.dropped,KFXXZL.XIEXING,KFXXZL.SHEHAO from KFXXZL');
       SQL.Add('left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.shehao=KFXXZL.shehao');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('where kfxxzl.DEVCODE is not null  and kfxxzl.DEVCODE<>'''' and xxzlkf.dropped=''1'' and kfxxzl.devtype=''Inline'' and kfzl_GS.GSBH='''+ComboBox3.Text+''' and kfxxzl.jijie like '''+'%'+seasontext.Text+'%'+''' and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+'''');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add('group by KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.dropped,KFXXZL.XIEXING,KFXXZL.SHEHAO)G1');
       SQL.Add('group by G1.jijie) droppedInline on droppedInline.JiJie=B.jijie');
       //DroppedInline

       SQL.Add('left join');
       SQL.Add('(select count(G2.DEVCODE) as droppedSMU,G2.jijie from');
       SQL.Add('(select KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.dropped,KFXXZL.XIEXING,KFXXZL.SHEHAO from KFXXZL');
       SQL.Add('left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.shehao=KFXXZL.shehao');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('where kfxxzl.DEVCODE is not null  and kfxxzl.DEVCODE<>'''' and xxzlkf.dropped=''1'' and kfxxzl.devtype=''SMU'' and kfzl_GS.GSBH='''+ComboBox3.Text+''' and kfxxzl.jijie like '''+'%'+seasontext.Text+'%'+''' and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+'''');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add('group by KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.dropped,KFXXZL.XIEXING,KFXXZL.SHEHAO)G2');
       SQL.Add('group by G2.jijie) droppedSMU on droppedSMU.JiJie=B.jijie');
       //DroppedSMU

       SQL.Add('left join');
       SQL.Add('(select count(G2.DEVCODE) as DroppedGreat@Good,G2.jijie from');
       SQL.Add('(select KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.dropped,KFXXZL.XIEXING,KFXXZL.SHEHAO from KFXXZL');
       SQL.Add('left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.shehao=KFXXZL.shehao');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('where kfxxzl.DEVCODE is not null  and kfxxzl.DEVCODE<>'''' and xxzlkf.dropped=''1'' and kfxxzl.devtype=''Great@Good'' and kfzl_GS.GSBH='''+ComboBox3.Text+''' and kfxxzl.jijie like '''+'%'+seasontext.Text+'%'+''' and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+'''');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add('group by KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.dropped,KFXXZL.XIEXING,KFXXZL.SHEHAO)G2');
       SQL.Add('group by G2.jijie) DroppedGreat@Good on DroppedGreat@Good.JiJie=B.jijie');
       //DroppedGreat@Good

       SQL.Add('left join');
       SQL.Add('(select count(G2.DEVCODE) as DroppedIncubate,G2.jijie from');
       SQL.Add('(select KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.dropped,KFXXZL.XIEXING,KFXXZL.SHEHAO from KFXXZL');
       SQL.Add('left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.shehao=KFXXZL.shehao');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('where kfxxzl.DEVCODE is not null  and kfxxzl.DEVCODE<>'''' and xxzlkf.dropped=''1'' and kfxxzl.devtype=''Incubate'' and kfzl_GS.GSBH='''+ComboBox3.Text+''' and kfxxzl.jijie like '''+'%'+seasontext.Text+'%'+''' and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+'''');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add('group by KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.dropped,KFXXZL.XIEXING,KFXXZL.SHEHAO)G2');
       SQL.Add('group by G2.jijie) DroppedIncubate on DroppedIncubate.JiJie=B.jijie');
       //DroppedIncubate

       SQL.Add('left join');
       SQL.Add('(select count(G2.DEVCODE) as DroppedQuickResponse,G2.jijie from');
       SQL.Add('(select KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.dropped,KFXXZL.XIEXING,KFXXZL.SHEHAO from KFXXZL');
       SQL.Add('left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.shehao=KFXXZL.shehao');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('where kfxxzl.DEVCODE is not null  and kfxxzl.DEVCODE<>'''' and xxzlkf.dropped=''1'' and kfxxzl.devtype=''Quick Response'' and kfzl_GS.GSBH='''+ComboBox3.Text+''' and kfxxzl.jijie like '''+'%'+seasontext.Text+'%'+''' and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+'''');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add('group by KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.dropped,KFXXZL.XIEXING,KFXXZL.SHEHAO)G2');
       SQL.Add('group by G2.jijie) DroppedQuickResponse on DroppedQuickResponse.JiJie=B.jijie');
       //DroppedQuickResponse

       SQL.Add('group by Pairs.Pairs,b.jijie,B.KHDH,B.allarticle,');
       SQL.Add('noddzl.noddzl,noddzlSmu.noddzlSmu,noddzlinline.noddzlinline,noddzlGreat@Good.noddzlGreat@Good,noddzlIncubate.noddzlIncubate,noddzlQuickResponse.noddzlQuickResponse,');
       SQL.Add('smu.smu,Inline.inline,Great@Good.Great@Good,Incubate.Incubate,QuickResponse.QuickResponse,');
       SQL.Add('transfer.transfer,transferInline.transferInline,transferSMU.transferSMU,transferQuickResponse.transferQuickResponse,transferIncubate.transferIncubate,transferGreat@Good.transferGreat@Good,');
       SQL.Add('dropped.dropped,droppedSMU.droppedSMU,droppedInline.droppedInline,droppedQuickResponse.droppedQuickResponse,droppedIncubate.droppedIncubate,droppedGreat@Good.droppedGreat@Good,');
       SQL.Add('haveddzlsmu.haveddzlsmu,haveddzlinline.haveddzlinline,haveddzlall.haveddzlall,haveddzlQuickResponse.haveddzlQuickResponse,haveddzlIncubate.haveddzlIncubate,haveddzlGreat@Good.haveddzlGreat@Good');
      Active:=true;
  end;
  ddzlall.Active:=false;
  QueryAll.Active:=false;
  DoPercent();
end;

procedure TShoeTracking.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  queryAll.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   queryAll.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=queryAll.fields[i].FieldName;
          end;

        queryAll.First;
        j:=2;
        while   not   queryAll.Eof   do
          begin
            for   i:=0   to  queryAll.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=queryAll.Fields[i].Value;
            end;
          queryAll.Next;
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
end;

procedure TShoeTracking.Button3Click(Sender: TObject);
begin
  with query1 do
  begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select kfxxzl.devcode as Article,');
      SQL.Add('kfxxzl.FD,');
      SQL.Add('kfxxzl.xieming as ShoeName,');
      SQL.Add('kfxxzl.jijie as Season,');
      SQL.Add('kfxxzl.DevType,');
      SQL.Add('xxzlkf.Category,');
      SQL.Add('xxzlkf.Dropped,');
      SQL.Add('xxzlkf.Transfer,');
      SQL.Add('xxzlkf.Looksee,');
      SQL.Add('xxzlkf.transferin as ProdTrsfrIn,');
      SQL.Add('DATENAME(year,DATEADD(month,-2,CONVERT(varchar(10),cfm.idd,111)))as Year,');
      SQL.Add('DATENAME(month,DATEADD(month,-2,CONVERT(varchar(10),cfm.idd,111)))as Month,');
      SQL.Add('isnull(sum(ddzl.pairs),0) as Pairs,');
      SQL.Add('xxzlkf.FTWT as TestLevel,');
      SQL.Add('kfxxzl.kflx as TechLevel,');
      SQL.Add('kfxxzl.DDMH as Outsole,');
      SQL.Add('kfxxzl.xtmh as Last,');
      SQL.Add('xxzlkf.cdc as CuttingDie,');
      SQL.Add('xxzlkf.ToeCap,');
      SQL.Add('xxzlkf.ToeBumper,');
      SQL.Add('xxzlkf.Foxing,');
      SQL.Add('xxzlkf.HeelLogo,');
      SQL.Add('CONVERT(varchar(10),cfm.rldate,111) as PC_Release,');
      SQL.Add('cfm.HandOver,');
      SQL.Add('kfxxzl.logo as SizeRange,');
      SQL.Add('kfxxzl.Gender,');
      SQL.Add('kfxxzl.yssm as ColorName,');
      SQL.Add('kfxxzl.xiexing as Model,');
      SQL.Add('kfxxzl.shehao as Color,');
      SQL.Add('xxzlkf.productiontype,');
      SQL.Add('xxzlkf.Tier,');
      SQL.add('xxzlkf.Segment,');
      SQL.add('xxzlkf.type');
      SQL.Add('from kfxxzl');
      SQL.Add('left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
      SQL.Add('left join cfm on kfxxzl.xiexing=cfm.xiexing and kfxxzl.shehao=cfm.shehao');
      SQL.Add('left join ddzl on kfxxzl.xiexing=ddzl.xiexing and kfxxzl.shehao=ddzl.shehao');
      SQL.Add('left join ypzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
      SQL.Add('where kfxxzl.devcode is not null');
      if seasont.text<>''  then
         SQL.Add('and kfxxzl.jijie = '''+seasont.Text+''' ');
      if segmentq.text<>''  then
         SQL.Add('and xxzlkf.segment = '''+segmentq.Text+''' ');
      if DBComboBox22.text<>''  then
         SQL.Add('and xxzlkf.type = '''+DBComboBox22.Text+''' ');
      if genderq.text<>''  then
         SQL.Add('and kfxxzl.gender = '''+genderq.Text+''' ');
      if devtypet.text<>''  then
         SQL.Add('and kfxxzl.DevType = '''+devtypet.Text+''' ');
      if FDt.text<>''  then
         SQL.Add('and kfxxzl.fd = '''+FDt.Text+'''');
      if categoryt.text<>''  then
         SQL.Add('and xxzlkf.category like '''+'%'+categoryt.Text+'%'+'''');
      if shoenamet.text<>''  then
         SQL.Add('and kfxxzl.xieming like '''+'%'+shoenamet.Text+'%'+'''');
      if articlec.text<>''  then
         SQL.Add('and kfxxzl.devcode like '''+'%'+articlec.Text+'%'+'''');
      if Artstatus.text<>'' then
         if Artstatus.text='TransferIn' then
            SQL.Add('and xxzlkf.transferin =''1''');
         if Artstatus.text='TransferOut' then
            SQL.Add('and xxzlkf.transfer =''1''');
         if Artstatus.text='Dropped' then
            SQL.Add('and xxzlkf.dropped =''1''');
         if Artstatus.text='unDropped' then
            SQL.Add('and (xxzlkf.dropped <>''1'' or xxzlkf.dropped is null)');
      if shoenamed.checked then
      begin
         SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
         SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
      end;
      if stagec.text<>''  then
      begin
         SQL.Add(' and ypzl.kfjd = '''+stagec.Text+''' ');
      end;

      SQL.Add('group by kfxxzl.devcode,kfxxzl.fd,kfxxzl.xieming,kfxxzl.jijie,kfxxzl.devtype,xxzlkf.category,');
      SQL.Add('xxzlkf.dropped,xxzlkf.transfer,cfm.idd,kfxxzl.yssm,kfxxzl.xiexing,kfxxzl.shehao,xxzlkf.FTWT,kfxxzl.kflx,kfxxzl.DDMH,kfxxzl.xtmh,');
      SQL.Add('xxzlkf.cdc,cfm.rldate,kfxxzl.logo,kfxxzl.Gender,xxzlkf.ToeCap,');
      SQL.Add('xxzlkf.ToeBumper,xxzlkf.Foxing,cfm.HandOver,');
      SQL.Add('xxzlkf.HeelLogo,xxzlkf.Tier,xxzlkf.Looksee,xxzlkf.productiontype,xxzlkf.transferin,xxzlkf.Segment,xxzlkf.type');
      if combobox1.text='Article' then
         SQL.Add('order by kfxxzl.devcode desc');
      if combobox1.text='FD' then
         SQL.Add('order by kfxxzl.FD desc');
      if combobox1.text='ShoeName' then
         SQL.Add('order by kfxxzl.xieming desc');
      if combobox1.text='Pairs' then
         SQL.Add('order by sum(ddzl.pairs) desc');
      Active:=true;
  end;
end;

procedure TShoeTracking.CheckBox1Click(Sender: TObject);
begin
  if checkbox1.checked then
     panel7.Visible:=true
  else
     panel7.Visible:=false;
end;

procedure TShoeTracking.FDcClick(Sender: TObject);
begin
  if fdc.checked then
     DBGridEh4.Columns[1].Visible:=true
  else
     DBGridEh4.Columns[1].Visible:=false;
end;

procedure TShoeTracking.ShoenamecClick(Sender: TObject);
begin
  if shoenamec.checked then
     DBGridEh4.Columns[2].Visible:=true
  else
     DBGridEh4.Columns[2].Visible:=false;
end;

procedure TShoeTracking.SeasoncClick(Sender: TObject);
begin
  if seasonc.checked then
     DBGridEh4.Columns[3].Visible:=true
  else
     DBGridEh4.Columns[3].Visible:=false;
end;

procedure TShoeTracking.DevtypecClick(Sender: TObject);
begin
  if devtypec.checked then
     DBGridEh4.Columns[4].Visible:=true
  else
     DBGridEh4.Columns[4].Visible:=false;
end;

procedure TShoeTracking.CategorycClick(Sender: TObject);
begin
  if categoryc.checked then
     DBGridEh4.Columns[5].Visible:=true
  else
     DBGridEh4.Columns[5].Visible:=false;
end;

procedure TShoeTracking.StatuscClick(Sender: TObject);
begin
  if statusc.checked then
  begin
     DBGridEh4.Columns[7].Visible:=true;
     DBGridEh4.Columns[8].Visible:=true;
     DBGridEh4.Columns[9].Visible:=true;
  end else
  begin
     DBGridEh4.Columns[7].Visible:=false;
     DBGridEh4.Columns[8].Visible:=false;
     DBGridEh4.Columns[9].Visible:=false;
  end;
end;

procedure TShoeTracking.ProductioncClick(Sender: TObject);
begin
  if productionc.checked then
  begin
     DBGridEh4.Columns[10].Visible:=true;
     DBGridEh4.Columns[11].Visible:=true;
     DBGridEh4.Columns[12].Visible:=true;
  end else
  begin
     DBGridEh4.Columns[10].Visible:=false;
     DBGridEh4.Columns[11].Visible:=false;
     DBGridEh4.Columns[12].Visible:=false;
  end;
end;

procedure TShoeTracking.TestLevelcClick(Sender: TObject);
begin
  if Testlevelc.checked then
     DBGridEh4.Columns[13].Visible:=true
  else
     DBGridEh4.Columns[13].Visible:=false;
end;

procedure TShoeTracking.DevcClick(Sender: TObject);
begin
  if devc.checked then
     DBGridEh4.Columns[14].Visible:=true
  else
     DBGridEh4.Columns[14].Visible:=false;
end;

procedure TShoeTracking.OutsolecClick(Sender: TObject);
begin
  if outsolec.checked then
     DBGridEh4.Columns[15].Visible:=true
  else
     DBGridEh4.Columns[15].Visible:=false;
end;

procedure TShoeTracking.LastcClick(Sender: TObject);
begin
  if lastc.checked then
     DBGridEh4.Columns[16].Visible:=true
  else
     DBGridEh4.Columns[16].Visible:=false;
end;

procedure TShoeTracking.CutDiecClick(Sender: TObject);
begin
  if cutdiec.checked then
     DBGridEh4.Columns[17].Visible:=true
  else
     DBGridEh4.Columns[17].Visible:=false;
end;

procedure TShoeTracking.TopCapcClick(Sender: TObject);
begin
  if TopCapc.checked then
     DBGridEh4.Columns[18].Visible:=true
  else
     DBGridEh4.Columns[18].Visible:=false;
end;

procedure TShoeTracking.ToeBumpercClick(Sender: TObject);
begin
  if Toebumperc.checked then
     DBGridEh4.Columns[19].Visible:=true
  else
     DBGridEh4.Columns[19].Visible:=false;
end;

procedure TShoeTracking.FoxingcClick(Sender: TObject);
begin
  if foxingc.checked then
     DBGridEh4.Columns[20].Visible:=true
  else
     DBGridEh4.Columns[20].Visible:=false;
end;

procedure TShoeTracking.HeelLogocClick(Sender: TObject);
begin
  if heellogoc.checked then
     DBGridEh4.Columns[21].Visible:=true
  else
     DBGridEh4.Columns[21].Visible:=false;
end;

procedure TShoeTracking.CWAcClick(Sender: TObject);
begin
  if cwac.checked then
     DBGridEh4.Columns[22].Visible:=true
  else
     DBGridEh4.Columns[22].Visible:=false;
end;

procedure TShoeTracking.HandOvercClick(Sender: TObject);
begin
  if handoverc.checked then
     DBGridEh4.Columns[23].Visible:=true
  else
     DBGridEh4.Columns[23].Visible:=false;
end;

procedure TShoeTracking.SizeRangecClick(Sender: TObject);
begin
  if sizerangec.checked then
     DBGridEh4.Columns[24].Visible:=true
  else
     DBGridEh4.Columns[24].Visible:=false;
end;

procedure TShoeTracking.GendercClick(Sender: TObject);
begin
  if genderc.checked then
     DBGridEh4.Columns[25].Visible:=true
  else
     DBGridEh4.Columns[25].Visible:=false;
end;

procedure TShoeTracking.ColorNamecClick(Sender: TObject);
begin
  if colornamec.checked then
     DBGridEh4.Columns[26].Visible:=true
  else
     DBGridEh4.Columns[26].Visible:=false;
end;

procedure TShoeTracking.ModelcClick(Sender: TObject);
begin
  if modelc.checked then
     DBGridEh4.Columns[27].Visible:=true
  else
     DBGridEh4.Columns[27].Visible:=false;
end;

procedure TShoeTracking.ColorcClick(Sender: TObject);
begin
  if colorc.checked then
     DBGridEh4.Columns[28].Visible:=true
  else
     DBGridEh4.Columns[28].Visible:=false;
end;

procedure TShoeTracking.ProductiontypecClick(Sender: TObject);
begin
  if productiontypec.checked then
     DBGridEh4.Columns[29].Visible:=true
  else
     DBGridEh4.Columns[29].Visible:=false;
end;

procedure TShoeTracking.TiercClick(Sender: TObject);
begin
  if tierc.checked then
     DBGridEh4.Columns[30].Visible:=true
  else
     DBGridEh4.Columns[30].Visible:=false;
end;

procedure TShoeTracking.Button4Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to  query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
            end;
          query1.Next;
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
end;

procedure TShoeTracking.DBGridEh2CellClick(Column: TColumnEh);
begin
   if  (shoetotal.active) and ((Column.FieldName='allarticle') or
       (Column.FieldName='inline') or (Column.FieldName='smu') or  (Column.FieldName='Incubate') or  (Column.FieldName='Great@Good') or  (Column.FieldName='QuickResponse') or
       (Column.FieldName='noddzl') or (Column.FieldName='noddzlInline') or  (Column.FieldName='noddzlSmu') or
       (Column.FieldName='noddzlIncubate') or  (Column.FieldName='noddzlGreat@Good') or  (Column.FieldName='noddzlQuickResponse') or
       (Column.FieldName='haveddzlall') or (Column.FieldName='haveddzlinline') or  (Column.FieldName='haveddzlsmu') or
       (Column.FieldName='haveddzlIncubate') or (Column.FieldName='haveddzlGreat@Good') or  (Column.FieldName='haveddzlQuickResponse') or
       (Column.FieldName='dropped') or  (Column.FieldName='droppedInline') or (Column.FieldName='droppedSMU') or
       (Column.FieldName='droppedIncubate') or  (Column.FieldName='droppedGreat@Good') or (Column.FieldName='droppedQuickResponse') or
       (Column.FieldName='transferIncubate') or (Column.FieldName='transferGreat@Good') or (Column.FieldName='transferQuickResponse') or
       (Column.FieldName='transfer') or (Column.FieldName='transferInline') or (Column.FieldName='transferSMU')) then
   begin
      PageControl1.TabIndex:=1;
      with QueryAll do
      begin
       active:=false;
       sql.Clear;
       SQL.Add('select main.*,isnull(pairs,0) pairs from (');
       SQL.Add('select kfxxzl.devcode,kfxxzl.XieXing,kfxxzl.shehao,kfxxzl.jijie,kfxxzl.khdh,kfxxzl.devtype,xxzlkf.Transfer,xxzlkf.dropped from kfxxzl');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
       SQL.Add('where kfxxzl.DEVCODE is not null and kfxxzl.DEVCODE<>''''');
       if checkbox5.Checked then
          SQL.Add('and kfxxzl.jijie = :jijie');
       SQL.Add('and kfzl_GS.GSBH='''+ComboBox3.Text+''' ');
       SQL.Add('and kfxxzl.devcode like '''+'%'+SRtext.Text+'%'+''' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       if (Column.FieldName='inline') then
          SQL.Add('and kfxxzl.devtype=''inline'' ');
       if (Column.FieldName='smu') then
          SQL.Add('and kfxxzl.devtype=''smu'' ');
       if (Column.FieldName='Incubate') then
          SQL.Add('and kfxxzl.devtype=''Incubate'' ');
       if (Column.FieldName='Great@Good') then
          SQL.Add('and kfxxzl.devtype=''Great@Good'' ');
       if (Column.FieldName='QuickResponse') then
          SQL.Add('and kfxxzl.devtype=''Quick Response'' ');

       if (Column.FieldName='transfer') then
          SQL.Add('and xxzlkf.transfer=''1'' ');
       if (Column.FieldName='transferInline') then
          SQL.Add('and xxzlkf.transfer=''1'' and kfxxzl.devtype=''Inline''');
       if (Column.FieldName='transferSMU') then
          SQL.Add('and xxzlkf.transfer=''1'' and kfxxzl.devtype=''SMU''');
       if (Column.FieldName='transferIncubate') then
          SQL.Add('and xxzlkf.transfer=''1'' and kfxxzl.devtype=''Incubate''');
       if (Column.FieldName='transferGreat@Good') then
          SQL.Add('and xxzlkf.transfer=''1'' and kfxxzl.devtype=''Great@Good''');
       if (Column.FieldName='transferQuickResponse') then
          SQL.Add('and xxzlkf.transfer=''1'' and kfxxzl.devtype=''Quick Response''');

       if (Column.FieldName='dropped') then
          SQL.Add('and xxzlkf.dropped=''1'' ');
       if (Column.FieldName='droppedInline') then
          SQL.Add('and xxzlkf.dropped=''1'' and kfxxzl.devtype=''Inline''');
       if (Column.FieldName='droppedSMU') then
          SQL.Add('and xxzlkf.dropped=''1'' and kfxxzl.devtype=''SMU''');
       if (Column.FieldName='droppedIncubate') then
          SQL.Add('and xxzlkf.dropped=''1'' and kfxxzl.devtype=''Incubate''');
       if (Column.FieldName='droppedGreat@Good') then
          SQL.Add('and xxzlkf.dropped=''1'' and kfxxzl.devtype=''Great@Good''');
       if (Column.FieldName='droppedQuickResponse') then
          SQL.Add('and xxzlkf.dropped=''1'' and kfxxzl.devtype=''Quick Response''');

       if (Column.FieldName='noddzl') then
          SQL.Add('and (xxzlkf.dropped <>''1'' or  xxzlkf.dropped is null ) and (xxzlkf.transfer <>''1'' or  xxzlkf.transfer is null )');
       if (Column.FieldName='noddzlInline') then
          SQL.Add('and (xxzlkf.dropped <>''1'' or  xxzlkf.dropped is null ) and (xxzlkf.transfer <>''1'' or  xxzlkf.transfer is null ) and kfxxzl.devtype=''Inline''');
       if (Column.FieldName='noddzlSmu') then
          SQL.Add('and (xxzlkf.dropped <>''1'' or  xxzlkf.dropped is null ) and (xxzlkf.transfer <>''1'' or  xxzlkf.transfer is null ) and kfxxzl.devtype=''SMU''');
       if (Column.FieldName='noddzlIncubate') then
          SQL.Add('and (xxzlkf.dropped <>''1'' or  xxzlkf.dropped is null ) and (xxzlkf.transfer <>''1'' or  xxzlkf.transfer is null ) and kfxxzl.devtype=''Incubate''');
       if (Column.FieldName='noddzlGreat@Good') then
          SQL.Add('and (xxzlkf.dropped <>''1'' or  xxzlkf.dropped is null ) and (xxzlkf.transfer <>''1'' or  xxzlkf.transfer is null ) and kfxxzl.devtype=''Great@Good''');
       if (Column.FieldName='noddzlQuickResponse') then
          SQL.Add('and (xxzlkf.dropped <>''1'' or  xxzlkf.dropped is null ) and (xxzlkf.transfer <>''1'' or  xxzlkf.transfer is null ) and kfxxzl.devtype=''Quick Response''');

       if (Column.FieldName='haveddzl') then
          SQL.Add('and (xxzlkf.dropped <>''1'' or  xxzlkf.dropped is null ) and (xxzlkf.transfer <>''1'' or  xxzlkf.transfer is null )');
       if (Column.FieldName='haveddzlinline') then
          SQL.Add('and (xxzlkf.dropped <>''1'' or  xxzlkf.dropped is null ) and (xxzlkf.transfer <>''1'' or  xxzlkf.transfer is null ) and kfxxzl.DevType=''Inline'' ');
       if (Column.FieldName='haveddzlsmu') then
          SQL.Add('and (xxzlkf.dropped <>''1'' or  xxzlkf.dropped is null ) and (xxzlkf.transfer <>''1'' or  xxzlkf.transfer is null ) and kfxxzl.DevType=''SMU'' ');
       if (Column.FieldName='haveddzlIncubate') then
          SQL.Add('and (xxzlkf.dropped <>''1'' or  xxzlkf.dropped is null ) and (xxzlkf.transfer <>''1'' or  xxzlkf.transfer is null ) and kfxxzl.DevType=''Incubate'' ');
       if (Column.FieldName='haveddzlGreat@Good') then
          SQL.Add('and (xxzlkf.dropped <>''1'' or  xxzlkf.dropped is null ) and (xxzlkf.transfer <>''1'' or  xxzlkf.transfer is null ) and kfxxzl.DevType=''Great@Good'' ');
       if (Column.FieldName='haveddzlQuickResponse') then
          SQL.Add('and (xxzlkf.dropped <>''1'' or  xxzlkf.dropped is null ) and (xxzlkf.transfer <>''1'' or  xxzlkf.transfer is null ) and kfxxzl.DevType=''Quick Response'' ');

       SQL.Add('group by kfxxzl.devcode,kfxxzl.XieXing,kfxxzl.shehao,kfxxzl.jijie,kfxxzl.khdh,kfxxzl.devtype,xxzlkf.Transfer,xxzlkf.dropped)main');
       SQL.Add('left join (select xiexing,shehao,sum(pairs) as pairs from  ddzl  ');
       if checkbox2.checked=true  then
       begin
          sql.add(' where convert(smalldatetime,convert(varchar,ddzl.ddrq,111)) between ');
          sql.add(' '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
       end;
       SQL.Add('group by xiexing,shehao');
       SQL.Add(')ddzl on ddzl.xiexing=main.xiexing and ddzl.shehao=main.shehao');
       if ((Column.FieldName='noddzl') or (Column.FieldName='noddzlInline') or  (Column.FieldName='noddzlSmu') or (Column.FieldName='noddzlIncubate') or (Column.FieldName='noddzlGreat@Good') or (Column.FieldName='noddzlQuickResponse'))then
          SQL.Add('where pairs is null or pairs =''0'' ');
        if((Column.FieldName='haveddzlall') or (Column.FieldName='haveddzlinline') or  (Column.FieldName='haveddzlsmu') or (Column.FieldName='haveddzlIncubate') or (Column.FieldName='haveddzlGreat@Good') or (Column.FieldName='haveddzlQuickResponse')) then
          SQL.Add('where pairs <>''0'' ');
       SQL.Add('order by pairs desc');
      // memo1.text:=sql.text;
       Active:=true;
      end;
        DoPercent();
     // ddzlall.Active:=true;
   end;
end;

procedure TShoeTracking.Button5Click(Sender: TObject);
begin
     with categorytotal do
      begin
       active:=false;
       sql.Clear;
       SQL.Add('select kfxxzl.jijie as Season,xxzlkf.Category,isnull(sum(pairs),0) as Pairs from xxzlkf ');
       SQL.Add('left join ddzl on ddzl.xiexing=xxzlkf.xiexing and ddzl.shehao=xxzlkf.shehao ');
       SQL.Add('left join kfxxzl on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao ');
       SQL.Add('where kfxxzl.jijie='''+edit1.text+''' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.Add('group by kfxxzl.jijie,xxzlkf.category ');
       SQL.Add('Order by Pairs desc ');
       //memo2.text:=sql.text;
       Active:=true;
      end;

end;

procedure TShoeTracking.DBGridEh5CellClick(Column: TColumnEh);
begin
     with queryFD do
      begin
       active:=false;
       sql.Clear;
       SQL.Add('select kfxxzl.FD,count(kfxxzl.devcode) as TotalArt,xxzlkf.category from kfxxzl');
       SQL.Add('left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
       SQL.Add('where xxzlkf.category=:category and kfxxzl.jijie=:season');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');       
       SQL.Add('group by kfxxzl.FD,xxzlkf.category  ');
       //memo2.text:=sql.text;
       Active:=true;
      end;
end;



procedure TShoeTracking.DBGridEh6CellClick(Column: TColumnEh);
begin
     with FDart do
      begin
       active:=false;
       sql.Clear;
       SQL.Add('select kfxxzl.devcode,xxzlkf.category,kfxxzl.xiexing,kfxxzl.shehao,kfxxzl.xieming from kfxxzl');
       SQL.Add('left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
       SQL.Add('where xxzlkf.category=:category and kfxxzl.fd=:fd and kfxxzl.jijie='''+edit1.text+'''');
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');       
       SQL.Add('group by kfxxzl.devcode,xxzlkf.category,kfxxzl.xiexing,kfxxzl.shehao,kfxxzl.xieming');
       //memo2.text:=sql.text;
       Active:=true;
      end;
end;

procedure TShoeTracking.SegmentcClick(Sender: TObject);
begin
  if segmentc.checked then
     DBGridEh4.Columns[6].Visible:=true
  else
     DBGridEh4.Columns[6].Visible:=false;
end;

procedure TShoeTracking.FormCreate(Sender: TObject);
begin
  DTP1.Date:=Date()-30;
  DTP2.Date:=Date();
  AppDir:=ExtractFilePath(Application.ExeName);
  with Query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select  YPZL.KFJD AS STAGE from YPZL ');
    sql.add('   left join LBZLS ON LBZLS.LB=''04'' AND LBZLS.LBDH=YPZL.KFJD ');
    sql.add('   WHERE KFJD<>''MPR'' AND KFJD<>''COM'' AND KFJD<>''PRO'' ');
    sql.add('   group by YPZL.KFJD,LBZLS.YWSM ORDER BY KFJD ');
    active:=true;
    Stage.Items.Clear;
    while not eof do
    begin
       Stage.items.add(fieldbyname('STAGE').asstring );
       next;
    end;
  end;
  //Stage.ItemIndex:=0;

  with Query2 do
  begin
     active:=false;
     sql.Clear;
     sql.add('select FD from kfxxzl');
     SQL.add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH');
     sql.add('where FD is not null and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');
     SQL.add('and right(left(jijie,2),2) between ''15'' and ''19'' ');
     sql.add('group by FD');
     active:=true;
     FD.items.clear;
     while not eof do
     begin
       FD.items.add(fieldbyname('FD').asstring );
       next;
     end;
  end;
  //FD.ItemIndex:=0;

  with Query2 do
  begin
     active:=false;
     sql.Clear;
     sql.add('select jijie from kfxxzl');
     SQL.add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH');
     sql.add('where FD is not null and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');
     SQL.add('and right(left(jijie,2),2) between ''16'' and ''19'' ');
     sql.add('group by jijie');
     sql.add('order by jijie');
     active:=true;
     Season.items.clear;
     while not eof do
     begin
       Season.items.add(fieldbyname('jijie').asstring );
       next;
     end;
  end;
  //Season.ItemIndex:=0;
end;

procedure TShoeTracking.DBGridEh1CellClick(Column: TColumnEh);
begin
   with ddzlall do
   begin
      active:=false;
      sql.Clear;
      sql.Add('select DDBH,Xiexing,Shehao,Article,Pairs,DDRQ,ShipDate from ddzl');
      sql.Add('where xiexing=:xiexing and shehao=:shehao');
      if checkbox2.checked then
      begin
         sql.add('   and convert(smalldatetime,convert(varchar,ddzl.ddrq,111)) between ');
         sql.add('   '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
      end;
      Active:=true;
   end;
end;

procedure TShoeTracking.Button6Click(Sender: TObject);
begin
     with SampleOrderTracking do
      begin
       active:=false;
       sql.Clear;
       SQL.Add('select kfxxzl.jijie as Season,kfxxzl.devcode as SR,kfxxzl.FD,kfxxzl.xieming as ShoeName,ypzl.ypdh as SampleOrder,shoetest.TestNO ,');
       SQL.Add('ypzl.kfjd as Stage,shoetest.preparationDate,shoetest.CutDate,shoetest.StitchingDate,shoetest.assembiyDate as AssemblyDate,');
       SQL.Add('ypzl.quantity as SampleOderQty1 ,ypzl.totalquantity as SampleOderQty2,shoetest2.qty as TBQty,shoetestin.Qty as InWarehouse,shoetestout.qty as OutWarehouse from ypzl');
       SQL.Add(' left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
       SQL.Add(' left join shoetest on shoetest.ypdh=ypzl.ypdh');
       SQL.Add(' left join (select testno,sum(Qty) as Qty from shoetest2 group by  testno)shoetest2 on shoetest2.testno=shoetest.testno');
       SQL.Add(' left join (select testno,sum(Qty) as Qty from shoetestin group by  testno)shoetestin on shoetestin.testno=shoetest.testno');
       SQL.Add(' left join (select testno,sum(Qty) as Qty from shoetestOut group by  testno)shoetestout on shoetestout.testno=shoetest.testno');
       SQL.Add('where kfxxzl.jijie='''+edit2.text+''' ');
       if checkbox3.Checked then
       begin
          SQL.Add(' and kfxxzl.devcode<>''''');
          SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
          SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       end;
       SQL.Add(' and left(ypzl.ypdh,4)=''LAIV''');
       SQL.Add(' order by devcode');
       //memo2.text:=sql.text;
       Active:=true;
      end;
end;



procedure TShoeTracking.Button7Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  SampleOrderTracking.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   SampleOrderTracking.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=SampleOrderTracking.fields[i].FieldName;
          end;

        SampleOrderTracking.First;
        j:=2;
        while   not   SampleOrderTracking.Eof   do
          begin
            for   i:=0   to  SampleOrderTracking.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=SampleOrderTracking.Fields[i].Value;
            end;
          SampleOrderTracking.Next;
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
end;

procedure TShoeTracking.BB1Click(Sender: TObject);
var typ:string;
begin
  typ:=devtype.Text;
  if Season.Text = '' then
  begin
     showmessage('You need to enter the season.');
     abort;
  end;

  with kfxxzl do
  begin
    active:=false;
    SQL.Clear;
    if main.Edit2.Text = 'CDC' then
      SQL.add('select xxzlkf.Segment,xxzlkf.category,XXZLKF.cut,'''+typ+''' as ProductionType,''Vietnam'' as Origin,kfxxzl.xieming as ShoeName')
    else
      SQL.add('select xxzlkf.Segment,xxzlkf.category,XXZLKF.cut,'''+typ+''' as ProductionType,'''' as Origin,kfxxzl.xieming as ShoeName');
    SQL.add(',KFXXZL.YSSM,XXZLKF.MMD,KFXXZL.GENDER,case kfxxzl.KFLX when ''CU'' then ''NC'' when ''MU'' then ''NM'' when ''MU+'' then ''NM+'' else kfxxzl.KFLX end as MN,ypzl.ypcc as ''Sample Size'',XXZLKF.SCC,xxzlkf.Tier');
    SQL.add(',kfxxzl.XTMH as Last,kfxxzl.DDMH as Outsole,xxzlkf.Midsole as Midsole,XXZLKF.LiningMatDetail as ''Lining Category'',kfxxzl.DEVCODE as ''Colorway ID'',');
    if main.Edit2.Text = 'CDC' then
      SQL.add('kfxxzl.ARTICLE as SKU#,''LYN (DC)'' as ''Development Center'', '''' as ''Sample Date'', '''' as ''PAIRS'', '''' as ''Kind of Hangtag'',')
    else
      SQL.add('kfxxzl.ARTICLE as SKU#,'''' as ''Development Center'', '''' as ''Sample Date'', '''' as ''PAIRS'', '''' as ''Kind of Hangtag'',');
    SQL.add('case when left(ypzl.ypdh,4) = ''LAIV'' then shoetest.TestNO else '''' end as ''No#''');
    SQL.add('from XXZLKF');
    SQL.add('left join KFXXZL on kfxxzl.SheHao=XXZLKF.SheHao and kfxxzl.XieXing=XXZLKF.XieXing');
    SQL.add('left join XXZL on xxzl.SheHao=XXZLKF.SheHao and xxzl.XieXing=XXZLKF.XieXing');
    SQL.add('left join Fdgroups on Fdgroups.fdname=kfxxzl.FD');
    SQL.add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
    SQL.add('left join ypzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    SQL.add('left join shoetest on shoetest.ypdh=ypzl.ypdh');
    SQL.add('where KFXXZL.jijie like '''+'%'+Season.Text+'%'+'''');
    SQL.Add('and kfxxzl.xieming not like ''%NULLIFY%'' ');
    SQL.Add('and kfxxzl.xieming not like ''%NULIFY%'' ');
    SQL.add('and kfxxzl.devcode <>''''');
    SQL.add('and kfzl_GS.GSBH= '''+main.Edit2.Text+''' ');
    if devtype.text <> '' then
      SQL.add('and kfxxzl.devtype like '''+'%'+devtype.Text+'%'+'''');
    if SR.Text <> '' then
      SQL.add('and kfxxzl.devcode like '''+'%'+SR.Text+'%'+'''');
    if SKU.Text <> '' then
      SQL.add('and kfxxzl.article like '''+'%'+SKU.Text+'%'+'''');
    if FD.Text <> '' then
      SQL.add('and kfxxzl.fd = '''+FD.Text+''' ');
    if Stage.Text <>'' then
      SQL.add('and YPZL.KFJD =  '''+Stage.Text+''' ');
    if LAI.Text <> '' then
      SQL.add('and  ypzl.ypdh like '''+LAI.text+'%'+'''');
    //memo1.text:=sql.text;
    SQL.add('group by xxzlkf.Segment,xxzlkf.category,XXZLKF.cut,kfxxzl.xieming,kfxxzl.ARTICLE  ');
    SQL.add(',KFXXZL.YSSM,XXZLKF.MMD,KFXXZL.GENDER,ypzl.ypcc,XXZLKF.SCC,xxzlkf.Tier ');
    SQL.add(',kfxxzl.XTMH,kfxxzl.DDMH,XXZLKF.LiningMatDetail,kfxxzl.DEVCODE,shoetest.TestNO,ypzl.ypdh,xxzlkf.Midsole,kfxxzl.KFLX');
    //memo1.Text:=sql.Text;
    Active:=true;
  end;
end;

procedure TShoeTracking.excel1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if kfxxzl.Active then
  begin
    if kfxxzl.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;

   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\192.168.23.9\liy_erp\Additional\Develop_SN71.xls'),Pchar(AppDir+'Additional\Develop_SN71.xls'),false);
   if FileExists(AppDir+'Additional\Develop_SN71.xls') then
   begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      //
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\Develop_SN71.xls');
        kfxxzl.First;
        j:=2;
        while   not  kfxxzl.Eof   do
        begin
            for  i:=0  to  kfxxzl.FieldCount-1   do
            begin
              eclApp.Cells(j,i+1):=kfxxzl.Fields[i].Value;
            end;
            kfxxzl.Next;
            inc(j);
        end;
        eclapp.columns.autofit;
        showmessage('Succeed.');
        eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
   end;
end;

procedure TShoeTracking.Button8Click(Sender: TObject);
begin
   with ShoeTotalQry do
      begin
       active:=false;
       sql.Clear;
       SQL.Add('select main.Season,ShoeQty,payment.USACC,payment.VNACC from (');
       SQL.Add('select left(testno,3) Season,sum(qty)as ShoeQty from shoetest2 where left(testno,3)='''+edit3.text+'''');
       SQL.Add('group by left(testno,3))main');
       SQL.Add('left join (');
       SQL.Add('select season,sum(usacc) usacc,sum(vnacc) vnacc from (');
       SQL.Add('select cgzl.season,cgzls.cgno,kcrks.rkno,cgzls.qty,cgzls.clbh,isnull(usacc,0) usacc,isnull(vnacc,0) vnacc from cgzl');
       SQL.Add('left join cgzls on cgzls.cgno=cgzl.cgno');
       SQL.Add('left join kcrks on kcrks.docno=cgzls.cgno and kcrks.clbh=cgzls.clbh');
       SQL.Add('where cgzl.gsbh='''+main.edit2.text+''' and season ='''+edit3.text+'''');
       SQL.Add('group by cgzls.cgno,cgzls.qty,cgzls.clbh,usacc,vnacc,kcrks.rkno,cgzl.season )Payment');
       SQL.Add('group by season)Payment on Payment.season=main.Season');
       Active:=true;
      end;
   with ShoeTotalsQry do
      begin
       active:=false;
       sql.Clear;
       SQL.Add('select Season,sum(shoetest2.qty) Qty,shoetest2.zwsm from shoetest left join (select Testno,sum(qty) Qty,parts,shoetestdetail.class,shoetestdetail.ywsm,');
       SQL.Add('shoetestdetail.zwsm from shoetest2  left join (select YYBH,YWSM,ZWSM,class from shoetestdetail)shoetestdetail on shoetestdetail.yybh=shoetest2.parts');
       SQL.Add('group by Testno,parts,shoetestdetail.class,shoetestdetail.ywsm,shoetestdetail.zwsm )shoetest2 on shoetest2.testno=shoetest.testno');
		   SQL.Add('where Season='''+edit3.text+'''  group by season,shoetest2.zwsm ');
       Active:=true;
      end;
end;

procedure TShoeTracking.Button10Click(Sender: TObject);
begin

   with ShoetotalFDQry do
      begin
       active:=false;
       sql.Clear;
       SQL.Add('select main.Season,main.FD,main.Qty,kfxxzl.Testno,kfxxzl.devcode,kfxxzl.devtype from (');
       SQL.Add('	select Season,FD,sum(shoetest2.qty) Qty,DEVTP from shoetest left join (select Testno,sum(qty) Qty  from shoetest2');
       SQL.Add('    group by Testno)shoetest2 on shoetest2.testno=shoetest.testno');
       SQL.Add('     where Season='''+edit4.text+'''  group by season,FD,DEVTP )main');
       SQL.Add('left join (select count(Devcode)Devcode,Kfxxzl.FD,devtype,shoetest.TESTNO from Kfxxzl');
       SQL.Add('LEFT JOIN (select count(testno) as Testno,FD,devtp from shoetest where season='''+edit4.text+''' group by FD,devtp)shoetest ON shoetest.fd=Kfxxzl.FD AND shoetest.DEVTP=Kfxxzl.DEVTYPE');
       SQL.Add('WHERE Kfxxzl.JIJIE='''+edit4.text+'''');
       SQL.Add('GROUP BY Kfxxzl.FD,devtype,shoetest.TESTNO');
       SQL.Add(')kfxxzl on kfxxzl.fd=main.fd AND kfxxzl.devtype=main.devtp where 1=1');
       if combobox2.text<>'' then
          SQL.Add('and kfxxzl.devtype='''+combobox2.text+''' ');
       if edit5.text<>'' then
          SQL.Add('and kfxxzl.fd='''+edit5.text+''' ');
       SQL.Add('order by main.Season,main.FD');
       Active:=true;
      end;
      
   with ShoeTotalDetailQry do
      begin
       active:=false;
       sql.Clear;
       SQL.Add('select main.Season,main.Article,main.FD,main.Qty,main.Zwsm,Kfxxzl.DevType,CountSR.Testno,kfxxzl.xieming from (');
       SQL.Add('select Season,article,FD,sum(shoetest2.qty) Qty,shoetest2.zwsm from shoetest left join (select Testno,sum(qty) Qty,parts,shoetestdetail.class,shoetestdetail.ywsm,');
       SQL.Add('   shoetestdetail.zwsm from shoetest2  left join (select YYBH,YWSM,ZWSM,class from shoetestdetail)shoetestdetail on shoetestdetail.yybh=shoetest2.parts');
       SQL.Add('   group by Testno,parts,shoetestdetail.class,shoetestdetail.ywsm,shoetestdetail.zwsm )shoetest2 on shoetest2.testno=shoetest.testno');
       SQL.Add('   where Season='''+edit4.text+'''  group by season,shoetest2.zwsm,article,FD )main');
       SQL.Add('left join Kfxxzl on kfxxzl.devcode=main.article');
       SQL.Add('left join (select count(testno) as Testno,article from shoetest where season='''+edit4.text+''' group by article )CountSR on CountSR.article=main.article where 1=1');
       if combobox2.text<>'' then
          SQL.Add('and kfxxzl.devtype='''+combobox2.text+''' ');
       if edit5.text<>'' then
          SQL.Add('and main.fd='''+edit5.text+''' ');
       SQL.Add('order by main.Season,kfxxzl.Devtype,main.FD,main.Article');
       //memo1.text:=sql.text;
       Active:=true;
      end;
end;

procedure TShoeTracking.Button11Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  ShoeTotalDetailQry.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   ShoeTotalDetailQry.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=ShoeTotalDetailQry.fields[i].FieldName;
          end;

        ShoeTotalDetailQry.First;
        j:=2;
        while   not   ShoeTotalDetailQry.Eof   do
          begin
            for   i:=0   to  ShoeTotalDetailQry.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=ShoeTotalDetailQry.Fields[i].Value;
            end;
          ShoeTotalDetailQry.Next;
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
end;

procedure TShoeTracking.Edit3Change(Sender: TObject);
begin
   edit4.text:=edit3.Text;
end;

procedure TShoeTracking.Edit4Change(Sender: TObject);
begin
   edit3.text:=edit4.Text;
end;

procedure TShoeTracking.CheckBox4Click(Sender: TObject);
begin
   if checkbox4.Checked then
      panel21.Visible:=false;
   if not checkbox4.Checked then
      panel21.Visible:=true;
end;

procedure TShoeTracking.Button12Click(Sender: TObject);
begin
if edit17.text='' then
begin
   showmessage('plz type Season');
   abort;
end;
   with TrialTimesQry do
      begin
       active:=false;
       sql.Clear;
       SQL.Add('select kfxxzl.devcode,kfxxzl.xieming,kfxxzl.kflx Level,teamleader.userid,kfxxzl.FD,kfxxzl.jijie,shoetest.article,shoetest.times,teamleader.teamleader,teamleader.TeamleaderName from kfxxzl');
       SQL.Add('left join (select stage,count(article) times ,article from shoetest where stage=''SEE'' group by stage,article)shoetest on shoetest.article=kfxxzl.devcode');
       SQL.Add('left join (select busers.userid,isnull(busers.Engname,'''') as busers,FDgroup.teamleader,isnull(teamleaderID.Engname,'''') as TeamleaderName from busers');
       SQL.Add('	       left join FDgroups on busers.userid=FDgroups.FDID');
       SQL.Add('	       left join FDgroup on FDgroups.FDTeam=FDgroup.FDTeam');
       SQL.Add('	       left join busers teamleaderID on teamleaderID.userid=FDgroup.teamleader');
       SQL.Add('	       left join busers teamleader2ID on teamleader2ID.userid=FDgroup.teamleader2');
       SQL.Add('           )teamleader on teamleader.busers=kfxxzl.fd');
       SQL.Add('where jijie='''+edit17.text+'''   and shoetest.article is not null');
       SQL.Add('order by shoetest.times desc');
       Active:=true;
      end;
      TrialTimessQry.Active:=true;
end;

procedure TShoeTracking.Button13Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  TrialTimesQry.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   TrialTimesQry.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=TrialTimesQry.fields[i].FieldName;
          end;

        TrialTimesQry.First;
        j:=2;
        while   not   TrialTimesQry.Eof   do
          begin
            for   i:=0   to  TrialTimesQry.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=TrialTimesQry.Fields[i].Value;
            end;
          TrialTimesQry.Next;
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
end;

procedure TShoeTracking.Button14Click(Sender: TObject);
var
  a: string;
  eclApp, WorkBook: OleVariant;
  i, j: Integer;
begin
  if (DDZLall.Active) then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
      Exit;
    end;

    try
      WorkBook := eclApp.workbooks.Add;
      for i:=0 to DDZLall.FieldCount-1 do
      begin
        eclApp.Cells(1,i+1) := DDZLall.Fields[i].FieldName;
      end;

      DDZLall.First;
      j:=2;
      while not DDZLall.Eof do
      begin
        for i:=0 to DDZLall.FieldCount-1 do
        begin
          eclApp.Cells(j,i+1) := DDZLall.Fields[i].Value;
        end;

        DDZLall.Next;
        Inc(j);
      end;

      eclapp.columns.Autofit;
      ShowMessage('Succeed');
      eclApp.Visible:=True;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

end.

