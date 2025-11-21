unit SampleMerge1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls,
  Buttons, ExtCtrls, GridsEh, DBGridEh, ShellAPI, DBGridEhImpExp, Menus;

type
  TSampleMerge = class(TForm)
    Panel1: TPanel;
    PC1: TPageControl;
    TS4: TTabSheet;
    Panel3: TPanel;
    Label19: TLabel;
    DBEdit13: TDBEdit;
    BBTT2: TBitBtn;
    DBGrid4: TDBGridEh;
    YPZLZLS: TQuery;
    DS4: TDataSource;
    UPDet: TUpdateSQL;
    DS3: TDataSource;
    YPZLZL: TQuery;
    UpMas: TUpdateSQL;
    Query1: TQuery;
    YPZLZLYPZLBH: TStringField;
    YPZLZLKFJD: TStringField;
    YPZLZLJiJie: TStringField;
    YPZLZLUSERID: TStringField;
    YPZLZLYN: TStringField;
    YPZLZLSYPZLBH: TStringField;
    YPZLZLSYPDH: TStringField;
    YPZLZLSUSERID: TStringField;
    YPZLZLSUSERDATE: TDateTimeField;
    YPZLZLSYN: TStringField;
    YPZLZLSARTICLE: TStringField;
    YPZLZLSKFJD: TStringField;
    YPZLZLINSDATE: TDateTimeField;
    YPZLZLSJiJie: TStringField;
    YPZLZLCALDATE: TDateTimeField;
    YPZLZLS1: TQuery;
    TabSheet1: TTabSheet;
    DBGridEh1: TDBGridEh;
    YPZLZLS11: TQuery;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField19: TStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField20: TStringField;
    DS5: TDataSource;
    YPZLZLS11YPDH: TStringField;
    TabSheet2: TTabSheet;
    DBGridEh2: TDBGridEh;
    YPZLZLS2: TQuery;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField9: TStringField;
    FloatField2: TFloatField;
    StringField10: TStringField;
    StringField21: TStringField;
    DS6: TDataSource;
    YPZLZLSPAIRS: TFloatField;
    YPZLZLS2USAGE: TFloatField;
    YPZLZLS2MJBH: TStringField;
    YPZLZLS2CSBH: TStringField;
    YPZLZLUSERDATE: TDateTimeField;
    YPZLZLPD: TStringField;
    dlgSave1: TSaveDialog;
    btn1: TBitBtn;
    YPZLZLS2ARTICLE: TStringField;
    YPZLZLS11ARTICLE: TStringField;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    Excel1: TMenuItem;
    Excel2: TMenuItem;
    TabSheet4: TTabSheet;
    DBGridEh4: TDBGridEh;
    Qry_Purchase: TQuery;
    StringField1: TStringField;
    StringField22: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField37: TStringField;
    FloatField6: TFloatField;
    StringField39: TStringField;
    StringField41: TStringField;
    StringField42: TStringField;
    IntegerField1: TIntegerField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    StringField43: TStringField;
    CurrencyField1: TCurrencyField;
    DS_Purchase: TDataSource;
    Qry_PurchaseKFJD: TStringField;
    Qry_PurchasePAIRS: TFloatField;
    Pop_Purchase: TPopupMenu;
    MenuItem1: TMenuItem;
    Panel5: TPanel;
    Label9: TLabel;
    Edit5: TEdit;
    Button2: TButton;
    Panel7: TPanel;
    Label10: TLabel;
    Edit6: TEdit;
    Button3: TButton;
    Panel8: TPanel;
    Button4: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Qry_PurchaseUseStock: TCurrencyField;
    YPZLZLmemo: TStringField;
    Panel9: TPanel;
    DBGrid3: TDBGridEh;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    Label2: TLabel;
    Label5: TLabel;
    Panel4: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit4: TEdit;
    Edit1: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB8: TBitBtn;
    TabSheet3: TTabSheet;
    Panel2: TPanel;
    Button5: TButton;
    Radio_PurMat: TRadioButton;
    Radio_All: TRadioButton;
    DS_Summary: TDataSource;
    Qry_Summary: TQuery;
    StringField8: TStringField;
    StringField18: TStringField;
    StringField23: TStringField;
    StringField25: TStringField;
    FloatField1: TFloatField;
    StringField27: TStringField;
    IntegerField2: TIntegerField;
    StringField29: TStringField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    Pop_Summary: TPopupMenu;
    MenuItem2: TMenuItem;
    Panel6: TPanel;
    DBGridEh3: TDBGridEh;
    Qry_SummaryYPZLBH: TStringField;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    TabSheet5: TTabSheet;
    DBGridEh5: TDBGridEh;
    DS_Article: TDataSource;
    Qry_Article: TQuery;
    StringField24: TStringField;
    StringField28: TStringField;
    FloatField5: TFloatField;
    StringField32: TStringField;
    StringField36: TStringField;
    IntegerField3: TIntegerField;
    DateTimeField4: TDateTimeField;
    DateTimeField5: TDateTimeField;
    StringField38: TStringField;
    CurrencyField4: TCurrencyField;
    StringField40: TStringField;
    FloatField7: TFloatField;
    CurrencyField5: TCurrencyField;
    Qry_SummarySafeStock: TStringField;
    DS_Revise: TDataSource;
    Qry_Revise: TQuery;
    Qry_ReviseYPDH: TStringField;
    Qry_ReviseBWBH: TStringField;
    Qry_ReviseCSBH: TStringField;
    Qry_ReviseZSYWJC: TStringField;
    Qry_ReviseMJBH: TStringField;
    Qry_ReviseCLBH: TStringField;
    Qry_ReviseCLMC: TStringField;
    Qry_ReviseUSAGE: TFloatField;
    Qry_ReviseARTICLE: TStringField;
    Qry_ReviseKFJD: TStringField;
    Qry_ReviseBWMC: TStringField;
    PurchaseOrder1: TMenuItem;
    YPZLZLrevise: TStringField;
    DBGridEh6: TDBGridEh;
    Radio_Wait: TRadioButton;
    Qry_SummaryZSDH_VN: TStringField;
    Qry_ArticleYPCCO: TStringField;
    Qry_Article_PO: TQuery;
    StringField26: TStringField;
    FloatField8: TFloatField;
    StringField31: TStringField;
    StringField33: TStringField;
    CurrencyField6: TCurrencyField;
    StringField45: TStringField;
    CurrencyField7: TCurrencyField;
    StringField46: TStringField;
    Chk_Mine: TCheckBox;
    Edit_Supplier: TEdit;
    Label13: TLabel;
    Qry_ArticleFD: TStringField;
    Edit2: TEdit;
    Edit3: TEdit;
    YPZLZLSFD: TStringField;
    Qry_ReviseFD: TStringField;
    Label11: TLabel;
    Edit_Stage: TEdit;
    TabSheet6: TTabSheet;
    Panel10: TPanel;
    Label12: TLabel;
    Edit7: TEdit;
    Button6: TButton;
    Panel11: TPanel;
    DS_MergeNOCheck: TDataSource;
    Qry_MergeNOCheck: TQuery;
    StringField30: TStringField;
    StringField44: TStringField;
    StringField47: TStringField;
    StringField48: TStringField;
    StringField49: TStringField;
    FloatField9: TFloatField;
    StringField50: TStringField;
    StringField51: TStringField;
    StringField52: TStringField;
    IntegerField4: TIntegerField;
    DateTimeField3: TDateTimeField;
    DateTimeField6: TDateTimeField;
    StringField53: TStringField;
    CurrencyField8: TCurrencyField;
    StringField54: TStringField;
    FloatField10: TFloatField;
    CurrencyField9: TCurrencyField;
    DBGridEh7: TDBGridEh;
    CheckBox1: TCheckBox;
    YPZLZLGSBH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure YPZLZLSAfterOpen(DataSet: TDataSet);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure DBGrid4EditButtonClick(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure YPZLZLAfterOpen(DataSet: TDataSet);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
    procedure BB8Click(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure btn1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Excel2Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure YPZLZLAfterScroll(DataSet: TDataSet);
    procedure DBGridEh4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button5Click(Sender: TObject);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Radio_PurMatClick(Sender: TObject);
    procedure Radio_AllClick(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure YPZLZLCalcFields(DataSet: TDataSet);
    procedure Radio_WaitClick(Sender: TObject);
    procedure PurchaseOrder1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SampleMerge: TSampleMerge;
  NDate:TDate;

implementation

uses main1 ,SampleMerge_CL1, PurSample1, FunUnit;

{$R *.dfm}

procedure TSampleMerge.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    PC1.ActivePage:=TS4;
    panel1.Visible:=true;
    action:=canone;
  end
  else
    begin
      if BD5.enabled then
        begin
          messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
          PC1.ActivePage:=TS4;
          action:=canone;
        end
          else
            begin
              action:=Cafree;
            end;
    end;
end;

procedure TSampleMerge.Button1Click(Sender: TObject);
begin
YPZLZLS.Active:=false;
YPZLZLS11.Active:=false;
YPZLZLS2.Active:=false;
Qry_Purchase.Active:=false;
Qry_Revise.Active:=FALSE;
with YPZLZL do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YPZLZL.* ');
    sql.add('  from YPZLZL');
    sql.add('where PD=''P''  ');
    IF Edit1.TEXT<>'' THEN
       sql.add('   AND YPZLZL.YPZLBH LIKE '+''''+edit1.Text+'%'+'''');
    IF Edit2.TEXT<>'' THEN
       sql.add('   and YPZLZL.JiJie like '+''''+edit2.Text+'%'+'''');
    IF Edit3.TEXT<>'' THEN
       sql.add('   and YPZLZL.KFJD like '+''''+'%'+edit3.Text+'%'+'''');
    IF Edit4.TEXT<>'' THEN
       sql.add('   and YPZLZL.YPZLBH in (select YPZLBH from YPZLZLs,ypzl where ypzl.YPDH=YPZLZLS.YPDH AND ypzl.ARTICLE='+''''+edit4.Text+'''' +' ) ');
    sql.add('      and convert(smalldatetime,convert(varchar,YPZLZL.INSDATE,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add('order by YPZLZL.YPZLBH DESC');
    active:=true;
  end;
BB2.Enabled:=true;
BB3.Enabled:=true;
BB4.Enabled:=true;
BB8.Enabled:=true;
YPZLZLS.Active:=true;
Qry_Revise.Active:=TRUE;
//YPZLZLS11.Active:=true;
//YPZLZLS2.Active:=true;
//Qry_Summary.Active:=true;
end;

procedure TSampleMerge.FormCreate(Sender: TObject);
var i:integer;
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
PC1.ActivePage:=TS4;
DTP1.Date:=date-3;
DTP2.date:=date;

end;

procedure TSampleMerge.BB2Click(Sender: TObject);
begin
with YPZLZL do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
//BBTT1.Visible:=true;
BB2.Enabled:=false;
BB3.Enabled:=false;
BB4.Enabled:=false;
BB5.Enabled:=true;
BB6.Enabled:=true;
BB8.Enabled:=false;
PC1.Enabled:=false;
Button1.Enabled:=false;
//dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TSampleMerge.BB3Click(Sender: TObject);
begin
if YPZLZLS.recordcount=0 then
  begin
    with YPZLZL do
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end;
  end
    else
      begin
        showmessage('Pls delete the Deliver Detail first.')
      end;
BB2.Enabled:=false;
BB3.Enabled:=false;
BB4.Enabled:=false;
BB5.Enabled:=true;
BB6.Enabled:=true;
BB8.Enabled:=false;
PC1.Enabled:=false;
Button1.Enabled:=false;
//dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TSampleMerge.BB4Click(Sender: TObject);
begin
with YPZLZL do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
BB2.Enabled:=false;
BB3.Enabled:=false;
BB4.Enabled:=false;
BB5.Enabled:=true;
BB6.Enabled:=true;
BB8.Enabled:=false;
PC1.Enabled:=false;
Button1.Enabled:=false;
//dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TSampleMerge.BB5Click(Sender: TObject);
var y,m,a:string;
i:integer;
begin
with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    Ndate:=fieldbyname('NDate').value;
    active:=false;
  end;
if length(m)<2 then
  m:='0'+m;  

try
    YPZLZL.first;
    for i:=1 to YPZLZL.RecordCount do
      begin
        case YPZLZL.updatestatus of
          usinserted:
            begin
              if YPZLZL.fieldbyname('JiJie').isnull then
                begin
                  YPZLZL.delete;
                end
                 else
                   begin
                     with query1 do    //計算領料單流水號
                       begin
                         active:=false;
                         sql.Clear;
                         sql.Add('select YPZLBH from YPZLZL   where YPZLBH like '+''''+y+m+'%'+'''');
                         sql.add('order by YPZLBH');
                         active:=true;
                         if recordcount >0 then
                           begin
                             last;
                             a:=fieldbyname('YPZLBH').AsString;
                             a:=copy(a,7,5);
                             a:=inttostr(strtoint(a)+1);
                             while length(a)<5 do
                               begin
                                 a:='0'+a;
                               end;
                           end
                             else
                               begin
                                 a:='00001';
                               end;
                         a :=y+m+a;
                         active:=false;
                       end;
                     YPZLZL.edit;
                     YPZLZL.fieldbyname('YPZLBH').Value:=a;
                     YPZLZL.fieldbyname('GSBH').Value:=main.Edit2.text;
                     YPZLZL.FieldByName('userID').Value:=main.edit1.text;
                     YPZLZL.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                     YPZLZL.FieldByName('INSdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                     //YPZLZL.FieldByName('CFMID').Value:='NO';
                     YPZLZL.FieldByName('YN').Value:='1';
                     YPZLZL.FieldByName('PD').Value:='P';
                     upMas.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
              if YPZLZL.fieldbyname('YN').value='0'then
                begin
                  YPZLZLS1.active:=false;
                  YPZLZLS1.sql.Clear;
                  YPZLZLS1.sql.add('delete YPZLZLS1 where YPZLBH=:YPZLBH ');
                  YPZLZLS1.execsql;
                  YPZLZLS1.sql.Clear;
                  YPZLZLS1.sql.add('delete YPZLZLS2 where YPZLBH=:YPZLBH ');
                  YPZLZLS1.execsql;
                  upMas.apply(ukdelete);
                end
                else
                  begin

                            YPZLZL.edit;
                            YPZLZL.FieldByName('userID').Value:=main.edit1.text;
                            YPZLZL.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                            upMas.apply(ukmodify);


                  end;
             end;
        end;
       YPZLZL.next;
      end;
YPZLZL.active:=false;
YPZLZL.cachedupdates:=false;
YPZLZL.requestlive:=false;
YPZLZL.active:=true;
BB2.Enabled:=true;
BB3.Enabled:=true;
BB4.Enabled:=true;
bb5.enabled:=false;
bb6.enabled:=false;
BB8.Enabled:=true;
PC1.Enabled:=true;
Button1.Enabled:=true;
//BBTT1.Visible:=false;
//dbgrid3.columns[1].ButtonStyle:=cbsnone;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;


end;

procedure TSampleMerge.BB6Click(Sender: TObject);
begin
with YPZLZL do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
BB2.Enabled:=true;
BB3.Enabled:=true;
BB4.Enabled:=true;
bb5.enabled:=false;
bb6.enabled:=false;
BB8.Enabled:=true;
PC1.Enabled:=true;
Button1.Enabled:=true;
//BBTT1.Visible:=false;
//dbgrid3.columns[1].ButtonStyle:=cbsnone;
end;

procedure TSampleMerge.BD2Click(Sender: TObject);
begin
if YPZLZL.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS4;
    abort;
  end;

with YPZLZLS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
BBTT2.Visible:=true;
BD2.Enabled:=false;
BD3.Enabled:=false;
BD4.Enabled:=false;
BD5.Enabled:=true;
BD6.Enabled:=true;
Panel1.Enabled:=false;
dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;

end;

procedure TSampleMerge.BD3Click(Sender: TObject);
begin
if YPZLZL.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS4;
    panel1.visible:=true;
    abort;
  end;

with YPZLZLS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
BBTT2.Visible:=true;
BD2.Enabled:=false;
BD3.Enabled:=false;
BD4.Enabled:=false;
BD5.Enabled:=true;
BD6.Enabled:=true;
Panel1.Enabled:=false;
dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TSampleMerge.BD4Click(Sender: TObject);
begin
if YPZLZL.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS4;
    panel1.visible:=true;
    abort;
  end;

with YPZLZLS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
BBTT2.Visible:=true;
BD2.Enabled:=false;
BD3.Enabled:=false;
BD4.Enabled:=false;
BD5.Enabled:=true;
BD6.Enabled:=true;
Panel1.Enabled:=false;
dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TSampleMerge.BD5Click(Sender: TObject);
var i:integer;
begin
with YPZLZLS do
  begin
    first;
    while not YPZLZLS.Eof do
      begin
        if YPZLZLS.FieldByName('PAIRS').IsNull  then
          begin
            showmessage('The Pairs can not be empty.');
            abort;
          end;  
        next;
      end;
  end;

try
    YPZLZLS.first;
    for i:=1 to YPZLZLS.RecordCount do
      begin
        case YPZLZLS.updatestatus of
          usinserted:
            begin
              if YPZLZLS.fieldbyname('YPDH').isnull then
                begin
                  YPZLZLS.delete;
                end
                 else
                   begin
                     YPZLZLS.edit;
                     YPZLZLS.fieldbyname('YPZLBH').Value:=YPZLZL.fieldbyname('YPZLBH').Value;
                     YPZLZLS.FieldByName('userID').Value:=main.edit1.text;
                     YPZLZLS.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                     //YPZLZLS.FieldByName('BJLX').Value:='1';
                     YPZLZLS.FieldByName('YN').Value:='1';
                     upDet.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
              if YPZLZLS.fieldbyname('YN').value='0'then
                begin
                  UpDet.apply(ukdelete);
                end
                else
                  begin
                    YPZLZLS.edit;
                    YPZLZLS.FieldByName('userID').Value:=main.edit1.text;
                    YPZLZLS.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                    upDet.apply(ukmodify);
                  end;
              end;
        end;
        YPZLZLS.next;
      end;
YPZLZLS.active:=false;
YPZLZLS.cachedupdates:=false;
YPZLZLS.requestlive:=false;
YPZLZLS.active:=true;
bb6.enabled:=false;
BBTT2.Visible:=false;
BD2.Enabled:=true;
BD3.Enabled:=true;
BD4.Enabled:=true;
BD5.Enabled:=false;
BD6.Enabled:=false;
Panel1.Enabled:=true;
dbgrid4.columns[0].ButtonStyle:=cbsNone;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;

end;

procedure TSampleMerge.BB7Click(Sender: TObject);
begin
close;
end;

procedure TSampleMerge.BBT1Click(Sender: TObject);
begin
YPZLZL.First;
end;

procedure TSampleMerge.BBT2Click(Sender: TObject);
begin
YPZLZL.prior;
end;

procedure TSampleMerge.BBT3Click(Sender: TObject);
begin
YPZLZL.next;
end;

procedure TSampleMerge.BBT4Click(Sender: TObject);
begin
YPZLZL.last;
end;

procedure TSampleMerge.BDT1Click(Sender: TObject);
begin
YPZLZLS.First;
end;

procedure TSampleMerge.BDT2Click(Sender: TObject);
begin
YPZLZLS.prior;
end;

procedure TSampleMerge.BDT3Click(Sender: TObject);
begin
YPZLZLS.next;
end;

procedure TSampleMerge.BDT4Click(Sender: TObject);
begin
YPZLZLS.last;
end;

procedure TSampleMerge.BD6Click(Sender: TObject);
begin
with YPZLZLS do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
BBTT2.Visible:=false;
BD2.Enabled:=true;
BD3.Enabled:=true;
BD4.Enabled:=true;
BD5.Enabled:=false;
BD6.Enabled:=false;
Panel1.Enabled:=true;
dbgrid4.columns[0].ButtonStyle:=cbsNone;
end;

procedure TSampleMerge.YPZLZLSAfterOpen(DataSet: TDataSet);
begin
BD2.Enabled:=true;
BD3.Enabled:=true;
BD4.Enabled:=true;

if (NDate-YPZLZL.FieldByName('USERDATE').value)>90  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;

BD5.Enabled:=false;
BD6.Enabled:=false;
end;

procedure TSampleMerge.DBGrid3DblClick(Sender: TObject);
begin
if  YPZLZL.Active then
  begin
    if  (YPZLZL.recordcount>0) then
      begin
        PC1.ActivePage:=TS4;
        panel1.Visible:=false;
      end;
  end;
end;



procedure TSampleMerge.DBGrid3EditButtonClick(Sender: TObject);
begin
//BBTT1Click(nil);
end;



procedure TSampleMerge.DBGrid4EditButtonClick(Sender: TObject);
begin
BBTT2click(nil);
end;

procedure TSampleMerge.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
    DBGrid3DblClick(nil);
end;

procedure TSampleMerge.YPZLZLAfterOpen(DataSet: TDataSet);
begin
BB5.Enabled:=false;
BB6.Enabled:=false;
BD5.Enabled:=false;
BD6.Enabled:=false;
end;

procedure TSampleMerge.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit2.SetFocus;
end;

procedure TSampleMerge.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit3.SetFocus;
end;

procedure TSampleMerge.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TSampleMerge.FormDestroy(Sender: TObject);
begin
SampleMerge:=nil;
end;

procedure TSampleMerge.BBTT2Click(Sender: TObject);
begin
  SampleMerge_CL:=TSampleMerge_CL.create(self);
  SampleMerge_CL.show;
  SampleMerge_CL.Label6.Caption:=YPZLZL.fieldbyname('YPZLBH').AsString;
end;

procedure TSampleMerge.BB8Click(Sender: TObject);
var J:Variant;
begin

try
with YPZLZLS1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from YPZLZLS where YPZLBH=:YPZLBH ');
    active:=true;
    if YPZLZLS1.RecordCount=0 then
      begin
        showmessage('No any Sample Order . Pls select  sample order first.');
        abort;
      end;
    active:=false;
    sql.Clear;
    sql.add('select * from YPZLZLS1 where YPZLBH=:YPZLBH  ');
    active:=true;
    if recordcount>0 then
      begin
        if messagedlg('You want to recalucate  again?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
          begin
            active:=false;
            sql.Clear;
            sql.add('delete YPZLZLS1 where YPZLBH=:YPZLBH ');
            execsql;
            sql.Clear;
            sql.add('delete YPZLZLS2 where YPZLBH=:YPZLBH ');
            execsql;
          end
          else
            begin
              abort;
            end;
      end;
    active:=false;
    sql.clear;
    sql.add('delete YPZLZLS1 where YPZLBH=:YPZLBH  ');
    sql.add('  insert YPZLZLS1 ');
    sql.add('select  :YPZLBH as YPZLBH,YPDH,xh,BWBH,BWLB,CLBH,CSBH,LOSS,CLSL,CLDJ,Currency,Rate,Remark,JGZWSM,JGYWSM');
    sql.add('from ypzls');
    sql.add('where exists (select *  from  YPZLZLS WHERE  ypzls.YPDH=YPZLZLS.YPDH AND YPZLZLS.YPZLBH=:YPZLBH   ) ');
    //新增母件
    sql.add('delete YPZLZLS2 where YPZLBH=:YPZLBH');
    sql.add('  insert YPZLZLS2 ');
    sql.add('select  YPZLZLS.YPZLBH,ypzls.YPDH,ypzls.BWBH,ypzls.CSBH,');
    sql.add( ''''+'ZZZZZZZZZZ'+''''+' as MJBH,ypzls.CLBH,CLZL.CLZMLB as ZMLB,');
    sql.add(''''+'ZZZZZZ'+''''+' as SIZE, round(YPZLZLS.Pairs*ypzls.CLSL+0.0499,1) as CLSL,ypzls.CLSL as  USAGE ,');
    sql.add(''''+main.edit1.text+''''+'  as USERID,');
    sql.add(''''+formatdatetime('yyyy/MM/dd',date)+''''+' as USERDATE,');
    sql.add(''''+'2'+''''+' as YN ');
    sql.add(' from YPZLZLS ');
    sql.add(' left join ypzls on ypzls.YPDH=YPZLZLS.YPDH ');
    sql.add(' left join CLZL on CLZL.CLDH=ypzls.CLBH ');
    sql.add(' where YPZLZLS.YPZLBH=:YPZLBH   ');
    //新增子件
    sql.add('  insert YPZLZLS2 ');
    sql.add('select  YPZLZLS.YPZLBH,ypzls.YPDH,ypzls.BWBH,CLZHZL.ZSDH,');
    sql.add(' ypzls.CLBH  as MJBH,CLZHZL.CLDH1 AS CLBH,CLZL.CLZMLB as ZMLB,');
    sql.add(''''+'ZZZZZZ'+''''+' as SIZE, round(YPZLZLS.Pairs*ypzls.CLSL*CLZHZL.SYL+0.0499,1) as CLSL,ypzls.CLSL* CLZHZL.SYL as  USAGE ,');
    sql.add(''''+main.edit1.text+''''+'  as USERID,');
    sql.add(''''+formatdatetime('yyyy/MM/dd',date)+''''+' as USERDATE,');
    sql.add(''''+'2'+''''+' as YN ');
    sql.add(' from YPZLZLS ');
    sql.add(' INNER join ypzls on ypzls.YPDH=YPZLZLS.YPDH ');
    sql.add(' INNER  JOIN CLZHZL   ON ypzls.CLBH = CLZHZL.cldh ');
    sql.add(' left join CLZL on CLZL.CLDH=CLZHZL.CLDH1 ');
    sql.add(' where CLZHZL.SYL>0 and YPZLZLS.YPZLBH=:YPZLBH   ');

    execsql;

  end;
with YPZLZLS1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('update  YPZLZL set CALDATE= '+''''+formatdatetime('yyyy/MM/dd',date)+'''' +'  where YPZLBH=:YPZLBH ');
    execsql;
  end;
j:=YPZLZL.fieldbyname('YPZLBH').Value;
YPZLZL.Active:= false;
YPZLZL.Active:= true;

IF  J<>' ' THEN   YPZLZL.Locate('YPZLBH',J,[]) ;

  showmessage('Calculate finished.');
except
   showmessage('Have wrong.');
end;

end;

procedure TSampleMerge.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
 if YPZLZLS.FieldByName('YN').value='0' then
  begin
    dbgrid4.canvas.font.color:=clred;
    dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TSampleMerge.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if YPZLZL.FieldByName('YN').value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
    dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TSampleMerge.btn1Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext:String;
begin
  dlgSave1.FileName := 'ex';
if (DBGrid4 is TDBGridEh) then
  if dlgSave1.Execute then
  begin
    case dlgSave1.FilterIndex of
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
      if UpperCase(Copy(dlgSave1.FileName,Length(dlgSave1.FileName)-2,3)) <> UpperCase(Ext) then
        dlgSave1.FileName := dlgSave1.FileName + '.' + Ext;
      SaveDBGridEhToExportFile(ExpClass,DBGrid4,dlgSave1.FileName,true);
      if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
        shellexecute(handle,'open',pchar(dlgSave1.FileName),nil,nil,SW_SHOWNORMAL);
    end;
  end;
end;

procedure TSampleMerge.Excel1Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext:String;
begin
  dlgSave1.FileName := 'ex';
if (DBGridEh1 is TDBGridEh) then
  if dlgSave1.Execute then
  begin
    case dlgSave1.FilterIndex of
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
      if UpperCase(Copy(dlgSave1.FileName,Length(dlgSave1.FileName)-2,3)) <> UpperCase(Ext) then
        dlgSave1.FileName := dlgSave1.FileName + '.' + Ext;
      SaveDBGridEhToExportFile(ExpClass,DBGridEh1,dlgSave1.FileName,true);
      if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
        shellexecute(handle,'open',pchar(dlgSave1.FileName),nil,nil,SW_SHOWNORMAL);
    end;
  end;

end;

procedure TSampleMerge.Excel2Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext:String;
begin
  dlgSave1.FileName := 'ex';
if (DBGridEh2 is TDBGridEh) then
  if dlgSave1.Execute then
  begin
    case dlgSave1.FilterIndex of
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
      if UpperCase(Copy(dlgSave1.FileName,Length(dlgSave1.FileName)-2,3)) <> UpperCase(Ext) then
        dlgSave1.FileName := dlgSave1.FileName + '.' + Ext;
      SaveDBGridEhToExportFile(ExpClass,DBGridEh2,dlgSave1.FileName,true);
      if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
        shellexecute(handle,'open',pchar(dlgSave1.FileName),nil,nil,SW_SHOWNORMAL);
    end;
  end;

end;

procedure TSampleMerge.MenuItem1Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext:String;
begin
  dlgSave1.FileName := 'ex';
if (DBGridEh4 is TDBGridEh) then
  if dlgSave1.Execute then
  begin
    case dlgSave1.FilterIndex of
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
      if UpperCase(Copy(dlgSave1.FileName,Length(dlgSave1.FileName)-2,3)) <> UpperCase(Ext) then
        dlgSave1.FileName := dlgSave1.FileName + '.' + Ext;
      SaveDBGridEhToExportFile(ExpClass,DBGridEh4,dlgSave1.FileName,true);
      if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
        shellexecute(handle,'open',pchar(dlgSave1.FileName),nil,nil,SW_SHOWNORMAL);
    end;
  end;

end;

procedure TSampleMerge.Button2Click(Sender: TObject);
begin

  IF NOT YPZLZL.Active THEN
     BEGIN
       ABORT;
     END;
  with YPZLZLS11 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YPZLZLS1.YPDH,YPZLZLS1.XH, YPZLZLS1.BWBH,BWZL.ywsm BWMC,YPZLZLS1.CLBH,CLZL.YWPM as CLMC,');
    sql.add('           CLZL.DWBH,CLZL.LYCC,ZSZL.ZSYWJC,YPZLZLS1.LOSS,YPZLZLS1.CLSL,CLZL.CLZMLB ,ypzl.ARTICLE');
    sql.add(' FROM YPZLZLS1');
    sql.add('LEFT JOIN BWZL  ON YPZLZLS1.BWBH = BWZL.bwdh');
    sql.add('LEFT JOIN CLZL   ON YPZLZLS1.CLBH = CLZL.cldh');
    sql.add('LEFT JOIN ZSZL on ZSZL.ZSDH=YPZLZLS1.CSBH');
    sql.add('LEFT JOIN ypzl  ON ypzl.YPDH=YPZLZLS1.YPDH');
    sql.add('where YPZLZLS1.YPZLBH='+''''+YPZLZL.FieldByName('YPZLBH').AsString+'''');
    IF Edit5.TEXT<>'' THEN
       sql.add(' AND ypzl.ARTICLE='+''''+Edit5.Text+'''');
    sql.add('order by YPZLZLS1.YPDH,YPZLZLS1.XH, YPZLZLS1.BWBH');
    active:=true;
  end;
  
end;

procedure TSampleMerge.Button3Click(Sender: TObject);
begin
  IF NOT YPZLZL.Active THEN
     BEGIN
       ABORT;
     END;
  with YPZLZLS2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YPZLZLS2.YPDH,YPZLZLS2.BWBH,BWZL.ywsm BWMC,YPZLZLS2.CLBH,CLZL.YWPM as CLMC,');
    sql.add('           CLZL.DWBH,CLZL.LYCC,ZSZL.ZSYWJC,YPZLZLS2.CLSL,CLZL.CLZMLB,YPZLZLS2.USAGE,');
    sql.add('            YPZLZLS2.MJBH,YPZLZLS2.CSBH,ypzl.ARTICLE');
    sql.add(' FROM YPZLZLS2');
    sql.add('LEFT JOIN BWZL  ON YPZLZLS2.BWBH = BWZL.bwdh');
    sql.add('LEFT JOIN CLZL   ON YPZLZLS2.CLBH = CLZL.cldh');
    sql.add('LEFT JOIN ZSZL on ZSZL.ZSDH=YPZLZLS2.CSBH');
    sql.add('LEFT JOIN ypzl  ON ypzl.YPDH=YPZLZLS2.YPDH');
    sql.add('where YPZLZLS2.YPZLBH='+''''+YPZLZL.FieldByName('YPZLBH').AsString+'''');
    IF Edit6.TEXT<>'' THEN
       sql.add(' AND ypzl.ARTICLE='+''''+Edit6.Text+'''');
    sql.add('order by YPZLZLS2.YPDH  ASC, YPZLZLS2.BWBH  ASC,YPZLZLS2.MJBH DESC');
    active:=true;
  end;
end;

procedure TSampleMerge.RadioButton1Click(Sender: TObject);
begin
  RadioButton2.Checked:=false;
end;

procedure TSampleMerge.RadioButton2Click(Sender: TObject);
begin
  RadioButton1.Checked:=false;
end;

procedure TSampleMerge.Button4Click(Sender: TObject);
begin
  IF NOT YPZLZL.Active THEN
     BEGIN
       ABORT;
     END;
  with Qry_Purchase do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YPZLZLS2.YPDH,YPZLZLS2.CLBH,CLZL.YWPM as CLMC,');
    sql.add('           CLZL.DWBH,CLZL.LYCC,ZSZL.ZSYWJC,SUM(YPZLZLS2.CLSL) AS CLSL,');
    sql.add('            YPZLZLS2.CSBH,ypzl.ARTICLE ,ypzl.KFJD');
    sql.add('            ,cg.recs,cg.cgdate,cg.yqdate,cg.cgno,cg.PurQty,YPZLZLS.PAIRS,cgkcuse.qty as UseStock');
    sql.add('FROM YPZLZLS2');
    sql.add('LEFT JOIN YPZLZLS on YPZLZLS.YPZLBH=YPZLZLS2.YPZLBH and YPZLZLS.YPDH=YPZLZLS2.YPDH');
    sql.add('LEFT JOIN CLZL   ON YPZLZLS2.CLBH = CLZL.cldh');
    sql.add('LEFT JOIN ZSZL on ZSZL.ZSDH=YPZLZLS2.CSBH');
    sql.add('LEFT JOIN ypzl  ON ypzl.YPDH=YPZLZLS2.YPDH');
    sql.add('left join cgkcuse on cgkcuse.zlbh=YPZLZLS2.ypdh and cgkcuse.clbh=YPZLZLS2.clbh and cgkcuse.GSBH=''R&D'' ');
    sql.add('left join zszlfilter on zszlfilter.zsdh=YPZLZLS2.CSBH');
    sql.add('left join clzlfilter on clzlfilter.cldh=YPZLZLS2.CLBH');
    sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.add('left join (select cs.clbh,cs.Stage,cs.zlbh,count(cs.clbh) as recs, min(cgzl.cgdate) as cgdate, min(cgzls.CFMdate) as yqdate, min(cgzls.cgno) as cgno,sum(CS.Qty) as PurQty');
    sql.add('                 from cgzlss cs');
    sql.add('                 left join cgzl on cgzl.cgno=cs.cgno');
    sql.add('                 left join cgzls on cgzls.cgno=cs.cgno and cgzls.clbh=cs.clbh');
    sql.add('                 where cgzl.CGLX=''6'' ');
    sql.add('                 group by cs.clbh,cs.Stage,cs.zlbh');
    sql.add('                 ) cg on cg.clbh=YPZLZLS2.CLBH and cg.Stage=ypzl.kfjd and cg.zlbh=YPZL.Article');
    sql.add('where CLZL.CLZMLB=''N'' ');
    sql.add('      and YPZLZLS2.YPZLBH='+''''+YPZLZL.FieldByName('YPZLBH').AsString+'''');
    if RadioButton1.Checked then
       begin
         sql.add('and zszlfilter.zsdh is null ');
         sql.add('and clzlfilter.cldh is null ');
       end;
    sql.add('group by  YPZLZLS2.YPDH,YPZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.LYCC,ZSZL.ZSYWJC,YPZLZLS2.CSBH,ypzl.ARTICLE,ypzl.KFJD');
    sql.add('          ,cg.recs,cg.cgdate,cg.yqdate,cg.cgno,cg.PurQty,YPZLZLS.PAIRS,cgkcuse.qty');
    sql.add('order by YPZLZLS2.YPDH  ASC');
    active:=true;
  end;
end;

procedure TSampleMerge.YPZLZLAfterScroll(DataSet: TDataSet);
begin
  YPZLZLS11.Active:=false;
  YPZLZLS2.Active:=false;
  Qry_Purchase.Active:=false;
end;

procedure TSampleMerge.DBGridEh4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if (Qry_Purchase.FieldByName('PurQty').isnull) and (Qry_Purchase.FieldByName('UseStock').isnull) then
  begin
    DBGridEh4.canvas.font.color:=clred;
    DBGridEh4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TSampleMerge.Button5Click(Sender: TObject);
begin
  IF NOT YPZLZL.Active THEN
     BEGIN
       ABORT;
     END;
  Qry_Article.Active:=false;
  
  with Qry_Summary do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YPZL_Mat.*,cg.recs,cg.cgno,cg.PurQty,kcuse.UseStock ,zszlSample.ZSDH as ZSDH_VN ');
    sql.add('from     (select YPZLZLS2.YPZLBH,YPZLZLS2.CLBH,CLZL.YWPM as CLMC');
    sql.add('              ,CLZL.DWBH,ZSZL.ZSYWJC,SUM(YPZLZLS2.CLSL) AS CLSL,YPZLZLS2.CSBH');
    sql.add('              ,case when clzlfilter.cldh is null then ''''  else ''Other''  end as SafeStock ');
    sql.add('          FROM YPZLZLS2');
    sql.add('          LEFT JOIN YPZL on YPZL.YPDH=YPZLZLS2.YPDH');
    sql.add('          LEFT JOIN CLZL   ON YPZLZLS2.CLBH = CLZL.cldh');
    sql.add('          LEFT JOIN ZSZL on ZSZL.ZSDH=YPZLZLS2.CSBH');
    sql.add('          left join zszlfilter on zszlfilter.zsdh=YPZLZLS2.CSBH');
    sql.add('          left join clzlfilter on clzlfilter.cldh=YPZLZLS2.CLBH');
    sql.add('          where CLZL.CLZMLB=''N'' and YPZLZLS2.YPZLBH='+''''+YPZLZL.FieldByName('YPZLBH').AsString+'''');
    if (Radio_PurMat.Checked) or (Radio_Wait.Checked) then  //選擇未採購和採購件...都要過濾
       begin
         sql.add('           and zszlfilter.zsdh is null ');
         sql.add('           and clzlfilter.cldh is null ');
       end;
    if (Radio_Wait.Checked) then     //只顯示未採購未使用庫存的材料
       begin
         sql.add('           and YPZLZLS2.CLBH<>''O040000031'' ');
         sql.add('           and not exists (select zlbh from cgkcuse where cgkcuse.zlbh=YPZLZLS2.ypdh and cgkcuse.clbh=YPZLZLS2.clbh and cgkcuse.GSBH=''R&D'' ) ');
         sql.add('           and not exists (select clbh from cgzlss where qty>0 and cgzlss.zlbh=YPZL.Article and cgzlss.clbh=YPZLZLS2.clbh and cgzlss.Stage=ypzl.kfjd  ) ');
       end;
    if Edit_Supplier.text<>'' then
         sql.add('           and ZSZL.ZSYWJC like ''%'+Edit_Supplier.text+'%''');
    if Edit_Stage.text<>'' then
         sql.add('           and YPZL.KFJD='''+Edit_Stage.text+'''');
    sql.add('          group by  YPZLZLS2.YPZLBH,YPZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,YPZLZLS2.CSBH,clzlfilter.cldh');
    sql.add('          ) YPZL_Mat');
    sql.add('left join (select cs.clbh,count(cs.clbh) as recs, min(cs.cgno) as cgno,sum(CS.Qty) as PurQty');
    sql.add('            from cgzlss cs');
    sql.add('            where exists (select ypzl.YPDH from YPZLZLS2,ypzl ');
    sql.add('                          where ypzl.YPDH=YPZLZLS2.YPDH and YPZLZLS2.YPZLBH='+''''+YPZLZL.FieldByName('YPZLBH').AsString+'''');
    sql.add('                                and cs.clbh=YPZLZLS2.CLBH and cs.Stage=ypzl.kfjd and cs.zlbh=YPZL.Article )  ');
    sql.add('            group by cs.clbh ');
    sql.add('           ) cg on cg.clbh=YPZL_Mat.CLBH ');
    sql.add('left join (select cgkcuse.clbh,sum(cgkcuse.qty) as UseStock from cgkcuse ');
    sql.add('            where exists (select YPDH from YPZLZLS2 ');
    sql.add('                          where  YPZLZLS2.YPZLBH='+''''+YPZLZL.FieldByName('YPZLBH').AsString+'''');
    sql.add('                                 and cgkcuse.clbh=YPZLZLS2.CLBH and cgkcuse.zlbh=YPZLZLS2.ypdh  )  ');
    sql.add('                  and cgkcuse.GSBH=''R&D'' ');
    sql.add('            group by cgkcuse.clbh ');
    sql.add('           ) kcuse on kcuse.clbh=YPZL_Mat.CLBH ');
    sql.add('left join (select Zsdh_TW,Max(ZSZL.ZSDH) as ZSDH from zszl where isnull(SamplePurchaser,'''')<>'''' group by Zsdh_TW) zszlSample on zszlSample.Zsdh_TW=YPZL_Mat.csbh ');
    sql.add('left join ZSZL ZSZLYP on ZSZLYP.ZSDH=zszlSample.ZSDH ');
    IF Chk_Mine.Checked then
       sql.add(' where ZSZLYP.SamplePurchaser='''+main.Edit1.Text+'''');
    sql.add('order by YPZL_Mat.ZSYWJC ');
    active:=true;
  end;

  with Qry_Article do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YPZLZLS2.YPDH,YPZLZLS2.CLBH,CLZL.DWBH,SUM(YPZLZLS2.CLSL) AS CLSL,ypzl.ARTICLE ,ypzl.KFJD ');
    sql.add('       ,cg.recs,cg.cgdate,cg.yqdate,cg.cgno,cg.PurQty,YPZLZLS.PAIRS,cgkcuse.qty as UseStock,ypzl.YPCCO,kfxxzl.FD ');
    sql.add('FROM YPZLZLS2 ');
    sql.add('LEFT JOIN YPZLZLS on YPZLZLS.YPZLBH=YPZLZLS2.YPZLBH and YPZLZLS.YPDH=YPZLZLS2.YPDH ');
    sql.add('LEFT JOIN CLZL   ON YPZLZLS2.CLBH = CLZL.cldh ');
    sql.add('LEFT JOIN ypzl  ON ypzl.YPDH=YPZLZLS2.YPDH ');
    sql.add('left join cgkcuse on cgkcuse.zlbh=YPZLZLS2.ypdh and cgkcuse.clbh=YPZLZLS2.clbh and cgkcuse.GSBH=''R&D'' ');
    sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
    sql.add('left join (select cs.clbh,cgzl.season,cs.Stage,cs.zlbh,count(cs.clbh) as recs, min(cgzl.cgdate) as cgdate, min(cgzls.CFMdate) as yqdate, min(cgzls.cgno) as cgno,sum(CS.Qty) as PurQty ');
    sql.add('                 from cgzlss cs ');
    sql.add('                 left join cgzl on cgzl.cgno=cs.cgno ');
    sql.add('                 left join cgzls on cgzls.cgno=cs.cgno and cgzls.clbh=cs.clbh ');
    sql.add('                 where cgzl.CGLX=''6'' ');
    sql.add('                 group by cs.clbh,cgzl.season,cs.Stage,cs.zlbh ');
    sql.add('                 ) cg on cg.clbh=YPZLZLS2.CLBH and cg.Stage=ypzl.kfjd and cg.zlbh=YPZL.Article ');
    sql.add('where  YPZLZLS2.CLBH=:CLBH ');
    sql.add('       and YPZLZLS2.YPZLBH=:YPZLBH ');
    if Edit_Stage.text<>'' then
         sql.add('           and YPZL.KFJD='''+Edit_Stage.text+'''');
    sql.add('group by  YPZLZLS2.YPDH,YPZLZLS2.CLBH,CLZL.DWBH,ypzl.ARTICLE ,ypzl.KFJD ');
    sql.add('          ,cg.recs,cg.cgdate,cg.yqdate,cg.cgno,cg.PurQty,YPZLZLS.PAIRS ,cgkcuse.qty,ypzl.YPCCO,kfxxzl.FD ');
    sql.add('order by ypzl.ARTICLE  ASC  ');
    active:=true;
  end;

end;

procedure TSampleMerge.DBGridEh3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if (Qry_Summary.FieldByName('PurQty').isnull) and (Qry_Summary.FieldByName('UseStock').isnull) then
  begin
    DBGridEh3.canvas.font.color:=clred;
    DBGridEh3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TSampleMerge.Radio_PurMatClick(Sender: TObject);
begin
  Radio_Wait.Checked:=false;
  Radio_All.Checked:=false;
end;

procedure TSampleMerge.Radio_AllClick(Sender: TObject);
begin
  Radio_Wait.Checked:=false;
  Radio_PurMat.Checked:=false;
end;

procedure TSampleMerge.MenuItem2Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext:String;
begin
  dlgSave1.FileName := 'ex';
if (DBGridEh3 is TDBGridEh) then
  if dlgSave1.Execute then
  begin
    case dlgSave1.FilterIndex of
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
      if UpperCase(Copy(dlgSave1.FileName,Length(dlgSave1.FileName)-2,3)) <> UpperCase(Ext) then
        dlgSave1.FileName := dlgSave1.FileName + '.' + Ext;
      SaveDBGridEhToExportFile(ExpClass,DBGridEh3,dlgSave1.FileName,true);
      if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
        shellexecute(handle,'open',pchar(dlgSave1.FileName),nil,nil,SW_SHOWNORMAL);
    end;
  end;

end;

procedure TSampleMerge.YPZLZLCalcFields(DataSet: TDataSet);
begin
  with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.add('     select ypzls.CLBH ');
      sql.add('     from YPZLZLS ');
      sql.add('     left join ypzls on ypzls.YPDH=YPZLZLS.YPDH ');
      sql.add('     left join CLZL on CLZL.CLDH=ypzls.CLBH ');
      sql.add('     where CLZL.CLZMLB=''N'' and YPZLZLS.YPZLBH='''+YPZLZL.FieldByName('YPZLBH').AsString+'''');
      sql.add('           and not exists (select YPZLZLS2.CLBH from YPZLZLS2 where YPZLZLS2.CLBH=ypzls.CLBH AND YPZLZLS2.YPZLBH='''+YPZLZL.FieldByName('YPZLBH').AsString+''')');
      sql.add('     union all ');
      sql.add('     select CLZHZL.CLDH1 as CLBH ');
      sql.add('     from YPZLZLS ');
      sql.add('     INNER join ypzls on ypzls.YPDH=YPZLZLS.YPDH ');
      sql.add('     INNER  JOIN CLZHZL ON ypzls.CLBH = CLZHZL.cldh ');
      sql.add('     left join CLZL on CLZL.CLDH=CLZHZL.CLDH1 ');
      sql.add('     where CLZHZL.SYL>0 and CLZL.CLZMLB=''N'' and YPZLZLS.YPZLBH='''+YPZLZL.FieldByName('YPZLBH').AsString+'''');
      sql.add('           and not exists (select YPZLZLS2.CLBH from YPZLZLS2 where YPZLZLS2.CLBH=CLZHZL.CLDH1 AND YPZLZLS2.YPZLBH='''+YPZLZL.FieldByName('YPZLBH').AsString+''')');
      active:=true;
      if query1.RecordCount>0 then
         begin
           YPZLZL.FieldByName('revise').Value:='Waiting Re-Cal' ;
         end;
      active:=false;
    end;

end;

procedure TSampleMerge.Radio_WaitClick(Sender: TObject);
begin
  Radio_PurMat.Checked:=false;
  Radio_All.Checked:=false;
end;

procedure TSampleMerge.PurchaseOrder1Click(Sender: TObject);
var bm:Tbookmark;
y,m,a,Supp_VN:string;
i,j:integer;
Qty:real;
bookmarklist:tbookmarklistEH;
begin
  if not Qry_Summary.Active then
     abort;
  if (Qry_Summary.recordcount<1) then
     abort;
  if (YPZLZL.FieldByName('JiJie').AsString='') or (YPZLZL.FieldByName('KFJD').AsString='')  then
     begin
       showmessage('Pls keyin [Season]&[Stage] first!');
       abort;
     end;
  if PurSample<>nil then  //檢查採購單程式是否有被開啟
     begin
       if (PurSample.BB5.Enabled=true) or (PurSample.BD5.Enabled=true) or (PurSample.BO3.Enabled=true) then //是否在編輯狀態
          begin
            PurSample.show;
            PurSample.windowstate:=wsmaximized;
            showmessage('Pls save Purchase Order first ');
            abort;
          end;
     end;
  if messagedlg('Do you really want to generate Purchase Order?',mtconfirmation,[mbYes,mbNo],0)=mrNo then
     abort;
  with query1 do          //取服務器的年月值 為產生採購單號用
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('Ndate').Value;
    active:=false;
  end;
  if length(m)<2 then
     m:='0'+m;
  //開始產生採購單
  Supp_VN:='';
  Qry_Summary.disablecontrols;
  bm:=Qry_Summary.getbookmark;
  bookmarklist:=DBGridEh3.selectedrows;
  if bookmarklist.count=0 then
     begin
       showmessage('Pls choose data first !');
       abort;
     end;
  if bookmarklist.count>0 then
     begin
       try
           Qry_Summary.gotobookmark(pointer(bookmarklist[0]));
           if Qry_Summary.FieldByName('ZSDH_VN').AsString='' then //檢查是否有對應的VN廠商代號
              begin
                showmessage('No mapping VN_Supplier ID');
                exit;
              end;
           Supp_VN:=Qry_Summary.FieldByName('ZSDH_VN').AsString ; //記錄選取第一筆的VN廠商代號
         //計算採購單流水號
         with query1 do
           begin
             active:=false;
             sql.Clear;
             sql.Add('select CGNO from CGZL where CGNO like '+''''+y+m+'%'+'''');
             sql.add('order by CGNO');
             active:=true;
             if recordcount >0 then
                begin
                  last;
                  a:=fieldbyname('CGNO').AsString;
                  a:=copy(a,7,5);
                  a:=inttostr(strtoint(a)+1);
                  while length(a)<5 do
                    begin
                      a:='0'+a;
                    end;
               end
               else
               begin
                 a:='00001';
               end;
             a :=y+m+a;
             active:=false;
           end;
         //新增採購單頭檔CGZL
         with query1 do
           begin
             active:=false;
             sql.Clear;
             sql.Add('insert CGZL ');
             sql.Add('(CGNO');
             sql.Add(',GSBH');
             sql.Add(',CGLX');
             sql.Add(',ZSBH');
             sql.Add(',SEASON');
             sql.Add(',PURPOSE');
             sql.Add(',USERID,USERDATE,CGDate,YN) values (');
             sql.Add(' '''+a+'''');
             sql.Add(','''+main.Edit2.text+'''');
             sql.Add(',''6'' ');
             sql.Add(','''+Supp_VN+'''');  //廠商代號
             sql.Add(','''+YPZLZL.FieldByName('JiJie').AsString+'''');  //SEASON
             sql.Add(','''+YPZLZL.FieldByName('KFJD').AsString+'''');  //PURPOSE
             sql.Add(','''+main.edit1.Text+'''');
             sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
             sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
             sql.Add(',''1'')');
             execsql;
             active:=false;
           end;

       //新增採購單身檔CGZLS
         for i:=0 to bookmarklist.count-1 do
         begin
           Qry_Summary.gotobookmark(pointer(bookmarklist[i]));
           with Qry_Article_PO do
           begin
             active:=false;
             sql.Clear;
             sql.add('select YPZLZLS2.YPDH,YPZLZLS2.CLBH,SUM(YPZLZLS2.CLSL) AS CLSL,ypzl.ARTICLE ,ypzl.KFJD ');
             sql.add('            ,cg.PurQty,cgkcuse.qty as UseStock,ypzl.YPCCO ');
             sql.add('FROM YPZLZLS2 ');
             sql.add('LEFT JOIN YPZLZLS on YPZLZLS.YPZLBH=YPZLZLS2.YPZLBH and YPZLZLS.YPDH=YPZLZLS2.YPDH ');
             sql.add('LEFT JOIN ypzl  ON ypzl.YPDH=YPZLZLS2.YPDH ');
             sql.add('left join cgkcuse on cgkcuse.zlbh=YPZLZLS2.ypdh and cgkcuse.clbh=YPZLZLS2.clbh and cgkcuse.GSBH=''R&D'' ');
             sql.add('left join (select cs.clbh,cs.Stage,cs.zlbh,sum(CS.Qty) as PurQty ');
             sql.add('                 from cgzlss cs ');
             sql.add('                 left join cgzl on cgzl.cgno=cs.cgno ');
             sql.add('                 where cgzl.CGLX=''6'' ');
             sql.add('                 group by cs.clbh,cs.Stage,cs.zlbh ');
             sql.add('                 ) cg on cg.clbh=YPZLZLS2.CLBH and cg.Stage=ypzl.kfjd and cg.zlbh=YPZL.Article ');
             sql.add('where  YPZLZLS2.CLBH='''+Qry_Summary.FieldByName('CLBH').AsString+'''');
             sql.add('       and YPZLZLS2.YPZLBH='''+Qry_Summary.fieldbyname('YPZLBH').AsString+'''');
             if Edit_Stage.text<>'' then
                sql.add('    and YPZL.KFJD='''+Edit_Stage.text+'''');
             if not CheckBox1.Checked then
               begin
                 sql.add('       and isnull(cg.PurQty,0)=0 ');
                 sql.add('       and isnull(cgkcuse.qty,0)=0 ');
               end;
             sql.add('group by  YPZLZLS2.YPDH,YPZLZLS2.CLBH,ypzl.ARTICLE ,ypzl.KFJD ');
             sql.add('          ,cg.PurQty,cgkcuse.qty,ypzl.YPCCO ');
             active:=true;
           end;
           if  Qry_Article_PO.RecordCount>0 then
           begin
             with query1 do
             begin
               active:=false;
               sql.Clear;
               sql.Add('insert CGZLS ');
               sql.Add('(CGNO');
               sql.Add(',BJNO');
               sql.Add(',YQDate');
               sql.Add(',CLBH');
               sql.Add(',Qty');
               sql.Add(',USPrice');
               sql.Add(',JGNO');    //填Merge NO
               sql.Add(',USERID,USERDATE,YN) values (');
               sql.Add(' '''+a+''' ');
               sql.Add(',''Sample'' ');  //固定填Sample
               sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate+7)+'''');  //需求日期固定加7天
               sql.Add(','''+Qry_Summary.fieldbyname('CLBH').AsString+'''');
               sql.Add(',0 '); //Qty填0
               sql.Add(',0 '); //USPrice填0
               sql.Add(','''+YPZLZL.fieldbyname('YPZLBH').AsString+'''');     //填Merge NO
               sql.Add(','''+main.edit1.Text+'''');
               sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
               sql.Add(',''1'')');
               execsql;
               active:=false;
             end;
             //新增採購單第三層CGZLSS
             Qry_Article_PO.First;
             for j:=1 to Qry_Article_PO.RecordCount do
               begin
                 with query1 do
                 begin
                 active:=false;
                 sql.Clear;
                 sql.Add('insert CGZLSS ');
                 sql.Add('(CGNO');
                 sql.Add(',ZLBH');   //Article
                 sql.Add(',XXCC');   //Size
                 sql.Add(',Stage');
                 sql.Add(',YQDate');
                 sql.Add(',CLBH');
                 sql.Add(',Qty');
                 sql.Add(',CLSL');
                 sql.Add(',USERID,USERDATE,YN) values (');
                 sql.Add(' '''+a+''' ');
                 sql.Add(','''+Qry_Article_PO.fieldbyname('ARTICLE').AsString+'''');
                 if (COPY(Qry_Summary.FieldByName('CLBH').AsString,1,3)='J03') then //只有大底要填SIZE
                    sql.Add(','''+Qry_Article_PO.fieldbyname('YPCCO').AsString+'''')
                 else
                    sql.Add(',''N'' ');
                 sql.Add(','''+Qry_Article_PO.fieldbyname('KFJD').AsString+'''');
                 sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate+7)+'''');  //需求日期固定加7天
                 sql.Add(','''+Qry_Summary.fieldbyname('CLBH').AsString+'''');
                 sql.Add(',0.1 '); //Qty填0.1
                 sql.Add(','+Qry_Article_PO.fieldbyname('CLSL').AsString+'');
                 sql.Add(','''+main.edit1.Text+'''');
                 sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
                 sql.Add(',''1'')');
                 execsql;
                 active:=false;
                 end;
                 Qry_Article_PO.next;
               end;
           end;
         end;
       finally
         begin
           Qry_Summary.gotobookmark(bm);
           Qry_Summary.freebookmark(bm);
           Qry_Summary.enablecontrols;
         end;
       end;
     end;

  with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.add('UPDATE CGZLS set QTY=isnull((select isnull(SUM(QTY),0) AS SQTY from CGZLSS WHERE CGZLSS.CGNO=CGZLS.CGNO AND CGZLSS.CLBH=CGZLS.CLBH  ');
      sql.add('  and CGZLSS.CGNO='+''''+A+'''' +' GROUP BY CGNO,CLBH),0) ');
      sql.add(' where CGZLS.CGNO='+''''+A+'''');
      execsql;
      close;
    end;

  Button5Click(NIL);
  showmessage('finish !');
  //自動開啟採購單畫面
  if PurSample<>nil then
  begin
    PurSample.show;
    PurSample.windowstate:=wsmaximized;
  end
  else
    begin
      PurSample:=TPurSample.create(self);
      PurSample.show;
    end;
  if (PurSample.BB5.Enabled=true) or (PurSample.BD5.Enabled=true) or (PurSample.BO3.Enabled=true) then
     begin
       showmessage('Pls save data first ');
       abort;
     end;

  PurSample.Edit1.Text:=a;
  PurSample.Check.Checked:=false;
//  PurSample.DTP1.Date:=date-360;
  PurSample.Button1Click(nil);
end;

procedure TSampleMerge.Button6Click(Sender: TObject);
begin
  IF NOT YPZLZL.Active THEN
     BEGIN
       ABORT;
     END;
  with Qry_MergeNOCheck do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YPZLZLS2.YPDH,YPZLZLS2.CLBH,CLZL.YWPM as CLMC');
    sql.add('       ,CLZL.DWBH,CLZL.LYCC,ZSZL.ZSYWJC,SUM(YPZLZLS2.CLSL) AS CLSL');
    sql.add('       ,YPZLZLS2.CSBH,ypzl.ARTICLE ,ypzl.KFJD');
    sql.add('       ,cg.recs,cg.cgdate,cg.yqdate,cg.cgno,cg.PurQty,YPZLZLS.PAIRS,cgkcuse.qty as UseStock');
    sql.add('FROM YPZLZLS2');
    sql.add('LEFT JOIN YPZLZLS on YPZLZLS.YPZLBH=YPZLZLS2.YPZLBH and YPZLZLS.YPDH=YPZLZLS2.YPDH');
    sql.add('LEFT JOIN CLZL   ON YPZLZLS2.CLBH = CLZL.cldh');
    sql.add('LEFT JOIN ZSZL on ZSZL.ZSDH=YPZLZLS2.CSBH');
    sql.add('LEFT JOIN ypzl  ON ypzl.YPDH=YPZLZLS2.YPDH');
    sql.add('left join cgkcuse on cgkcuse.zlbh=YPZLZLS2.ypdh and cgkcuse.clbh=YPZLZLS2.clbh and cgkcuse.GSBH=''R&D'' ');
    sql.add('left join zszlfilter on zszlfilter.zsdh=YPZLZLS2.CSBH');
    sql.add('left join clzlfilter on clzlfilter.cldh=YPZLZLS2.CLBH');
    sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.add('left join (select cs.clbh,cs.Stage,cs.zlbh,count(cs.clbh) as recs, min(cgzl.cgdate) as cgdate, min(cgzls.CFMdate) as yqdate, min(cgzls.cgno) as cgno,sum(CS.Qty) as PurQty');
    sql.add('                 from cgzlss cs');
    sql.add('                 left join cgzl on cgzl.cgno=cs.cgno');
    sql.add('                 left join cgzls on cgzls.cgno=cs.cgno and cgzls.clbh=cs.clbh');
    sql.add('                 where cgzl.CGLX=''6'' ');
    sql.add('                       and cgzlS.JGNO='+''''+YPZLZL.FieldByName('YPZLBH').AsString+'''');
    sql.add('                 group by cs.clbh,cs.Stage,cs.zlbh');
    sql.add('                 ) cg on cg.clbh=YPZLZLS2.CLBH and cg.Stage=ypzl.kfjd and cg.zlbh=YPZL.Article');
    sql.add('where CLZL.CLZMLB=''N'' ');
    sql.add('      and YPZLZLS2.YPZLBH='+''''+YPZLZL.FieldByName('YPZLBH').AsString+'''');
    if RadioButton1.Checked then
       begin
         sql.add('and zszlfilter.zsdh is null ');
         sql.add('and clzlfilter.cldh is null ');
       end;
    if Edit7.text<>'' then
         sql.add('           and ZSZL.ZSYWJC like ''%'+Edit7.text+'%''');
    sql.add('group by  YPZLZLS2.YPDH,YPZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.LYCC,ZSZL.ZSYWJC,YPZLZLS2.CSBH,ypzl.ARTICLE,ypzl.KFJD');
    sql.add('          ,cg.recs,cg.cgdate,cg.yqdate,cg.cgno,cg.PurQty,YPZLZLS.PAIRS,cgkcuse.qty');

    sql.add('union all');      //要加上顯示該Mergo NO所產生的採購單...但已不存在Merge 中....

    sql.add('select '''' as YPDH,cgzlss.CLBH,CLZL.YWPM as CLMC');
    sql.add('       ,CLZL.DWBH,CLZL.LYCC,ZSZL.ZSYWJC,0 AS CLSL');
    sql.add('       ,cgzl.ZSBH as CSBH,cgzlss.ZLBH as ARTICLE ,cgzlss.stage as KFJD');
    sql.add('       ,1 as recs,cgzl.cgdate,cgzls.yqdate,cgzls.cgno,cgzlss.Qty as PurQty,0 as PAIRS,0 as UseStock');
    sql.add('FROM cgzlss');
    sql.add('left join cgzl on cgzl.cgno=cgzlss.cgno');
    sql.add('left join cgzls on cgzls.cgno=cgzlss.cgno and cgzls.clbh=cgzlss.clbh');
    sql.add('LEFT JOIN CLZL ON cgzls.CLBH=CLZL.cldh');
    sql.add('LEFT JOIN ZSZL on ZSZL.ZSDH=cgzl.ZSBH');
    sql.add('where cgzl.CGLX=''6'' ');
    sql.add('      and cgzlS.JGNO='+''''+YPZLZL.FieldByName('YPZLBH').AsString+'''');
    sql.add('      and not exists (select YPZLBH from YPZLZLS2 ');
    sql.add('                      LEFT JOIN ypzl ON ypzl.YPDH=YPZLZLS2.YPDH');
    sql.add('                      where YPZLZLS2.YPZLBH='+''''+YPZLZL.FieldByName('YPZLBH').AsString+'''');
    sql.add('                            and ypzl.Article=cgzlss.ZLBH and YPZLZLS2.CLBH=cgzlss.CLBH and ypzl.KFJD=cgzlss.stage )');


    if Edit7.text<>'' then
       sql.add('   and ZSZL.ZSYWJC like ''%'+Edit7.text+'%''');







    //sql.add('order by YPZLZLS2.YPDH  ASC');





    
    active:=true;
  end;

end;

end.
