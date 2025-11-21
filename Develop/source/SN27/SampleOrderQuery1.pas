unit SampleOrder1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, Mask, DBCtrls, Buttons,
  ExtCtrls, DB, DBTables, GridsEh, DBGridEh, Menus, comobj;

const ReadOnly=true;
type
  TSampleOrder = class(TForm)
    MasPanel: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    BDT6: TBitBtn;
    DetPanel: TPanel;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    PC1: TPageControl;
    TS1: TTabSheet;
    InfoPanel: TPanel;
    Label11: TLabel;
    Label13: TLabel;
    Label6: TLabel;
    YPDH_DB: TDBEdit;
    ARTNO_DB: TDBEdit;
    DBEdit1: TDBEdit;
    TS2: TTabSheet;
    upMas: TUpdateSQL;
    YPZL: TQuery;
    YPZLYPDH: TStringField;
    YPZLXieXing: TStringField;
    YPZLSheHao: TStringField;
    YPZLARTICLE: TStringField;
    YPZLKFJD: TStringField;
    YPZLYPCC: TStringField;
    YPZLRate: TFloatField;
    YPZLCurrency: TStringField;
    YPZLKFRQ: TStringField;
    YPZLSDRQ: TStringField;
    YPZLJHRQ: TStringField;
    YPZLQuantity: TFloatField;
    YPZLPFC: TStringField;
    YPZLCFM: TStringField;
    YPZLFINDATE: TStringField;
    YPZLGSDH: TStringField;
    YPZLUSERID: TStringField;
    YPZLUSERDATE: TStringField;
    YPZLCGBH: TStringField;
    YPZLKFLX: TStringField;
    YPZLYPCCO: TStringField;
    YPZLYPCCL: TStringField;
    YPZLCGBH1: TStringField;
    YPZLXieMing: TStringField;
    YPZLARTNO: TStringField;
    YPZLYSSM: TStringField;
    YPZLJiJie: TStringField;
    YPZLXTMH: TStringField;
    YPZLDDMH: TStringField;
    YPZLKFLX2: TStringField;
    YPZLDEVCODE: TStringField;
    YPZLkfjc: TStringField;
    YPZLywsm: TStringField;
    YPZLkfdh: TStringField;
    YPZLCCGB: TStringField;
    YPZLFD: TStringField;
    YPZLDevType: TStringField;
    YPZLCategory: TStringField;
    YPZL_DS: TDataSource;
    YPZLS: TQuery;
    UpDet: TUpdateSQL;
    YPZLGrid: TDBGridEh;
    Label2: TLabel;
    Rate_DB: TDBEdit;
    Label7: TLabel;
    USERDATE_DB: TDBEdit;
    Label8: TLabel;
    PFC_DB: TDBEdit;
    Label9: TLabel;
    JiJie_DB: TDBEdit;
    Label20: TLabel;
    DBEdit14: TDBEdit;
    Label21: TLabel;
    YPCC_DB: TDBEdit;
    Label23: TLabel;
    YPCCO_DB: TDBEdit;
    Label24: TLabel;
    USERID_DB: TDBEdit;
    Label25: TLabel;
    YPCCL_DB: TDBEdit;
    Label26: TLabel;
    Quantity_DB: TDBEdit;
    Label27: TLabel;
    FD_DB: TDBEdit;
    Label10: TLabel;
    XieXing_DB: TDBEdit;
    XieMing_DB: TDBEdit;
    Label12: TLabel;
    Label14: TLabel;
    Currency_DB: TDBEdit;
    KFRQ_DB: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    FINDATE_DB: TDBEdit;
    KFLX2_DB: TDBEdit;
    Label19: TLabel;
    DevType_DB: TDBEdit;
    Label28: TLabel;
    Label22: TLabel;
    DBEdit2: TDBEdit;
    Label29: TLabel;
    DBEdit3: TDBEdit;
    Label30: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label31: TLabel;
    YPZLSGrid: TDBGridEh;
    Panel2: TPanel;
    Label32: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    YPZLSYPDH: TStringField;
    YPZLSxh: TStringField;
    YPZLSBWBH: TStringField;
    YPZLSCLBH: TStringField;
    YPZLSBWLB: TStringField;
    YPZLSCSBH: TStringField;
    YPZLSloss: TFloatField;
    YPZLSCLSL: TFloatField;
    YPZLSCLDJ: TFloatField;
    YPZLSCurrency: TStringField;
    YPZLSRate: TFloatField;
    YPZLSRemark: TStringField;
    YPZLSBWMC: TStringField;
    YPZLSBWYWMC: TStringField;
    YPZLSCLMC: TStringField;
    YPZLSdwbh: TStringField;
    YPZLSzsjc: TStringField;
    YPZLSclzmlb: TStringField;
    YPZLStyjh: TStringField;
    YPZLStyjh_1: TStringField;
    YPZLSJGZWSM: TStringField;
    YPZLSJGYWSM: TStringField;
    YPZLSzsywjc: TStringField;
    YPZLSywpm: TStringField;
    YPZLScqdh: TStringField;
    YPZLS_DS: TDataSource;
    DBEdit8: TDBEdit;
    ToolPanel: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    YPDHEdit: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Check: TCheckBox;
    Label5: TLabel;
    ArticleEdit: TEdit;
    Label34: TLabel;
    XieXingEdit: TEdit;
    Label36: TLabel;
    SheHaoEdit: TEdit;
    Label37: TLabel;
    Label38: TLabel;
    KFJDEdit: TEdit;
    JiJieEdit: TEdit;
    Label39: TLabel;
    XieMingEdit: TEdit;
    TempQry: TQuery;
    YPZLYN: TStringField;
    XieXingQry: TSpeedButton;
    StageQry: TSpeedButton;
    CurrencyQry: TSpeedButton;
    YPZLSYN: TStringField;
    MatQry: TQuery;
    PartQry: TQuery;
    SupplierQry: TQuery;
    PopupMenu: TPopupMenu;
    CopySampleOrder2: TMenuItem;
    TS3: TTabSheet;
    RemarkPanel: TPanel;
    BE2: TBitBtn;
    BE3: TBitBtn;
    BE4: TBitBtn;
    BE5: TBitBtn;
    BE6: TBitBtn;
    YPZLS2Grid: TDBGridEh;
    YPZLS2: TQuery;
    UpMemo: TUpdateSQL;
    YPZLS2_DS: TDataSource;
    YPZLS2ypdh: TStringField;
    YPZLS2LineNum: TStringField;
    YPZLS2Remark: TStringField;
    YPZLS2YN: TStringField;
    DelCK: TCheckBox;
    Label17: TLabel;
    Label18: TLabel;
    BBT5: TBitBtn;
    YPZLSSamplePurchaser: TStringField;
    Label40: TLabel;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    Label41: TLabel;
    DevCodeEdit: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure YPZLGridGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure XieXingQryClick(Sender: TObject);
    procedure StageQryClick(Sender: TObject);
    procedure CurrencyQryClick(Sender: TObject);
    procedure YPZLGridEditButtonClick(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure YPZLSAfterOpen(DataSet: TDataSet);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure YPZLSGridEditButtonClick(Sender: TObject);
    procedure YPZLSGridGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure YPZLSGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure YPZLSCLBHSetText(Sender: TField; const Text: String);
    procedure YPZLSBWBHSetText(Sender: TField; const Text: String);
    procedure YPZLSCSBHSetText(Sender: TField; const Text: String);
    procedure CopySampleOrder2Click(Sender: TObject);
    procedure YPZLGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BB7Click(Sender: TObject);
    procedure BE2Click(Sender: TObject);
    procedure BE3Click(Sender: TObject);
    procedure BE4Click(Sender: TObject);
    procedure YPZLS2AfterOpen(DataSet: TDataSet);
    procedure BE5Click(Sender: TObject);
    procedure YPZLS2GridGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BE6Click(Sender: TObject);
    procedure YPZLS2GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BDT6Click(Sender: TObject);
    procedure YPZLSAfterInsert(DataSet: TDataSet);
    procedure YPZLGridDblClick(Sender: TObject);
    procedure BBT5Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
  private
    DelList:TStringlist;
    NDate:TDate;
    { Private declarations }
    AppDir:String;
    procedure CopySampleOrder();
    procedure SampleOrderInitPickList();
    procedure ExportSampleOrder();
    procedure PageChange();
  public
    { Public declarations }
  end;

var
  SampleOrder: TSampleOrder;

implementation
  uses main1,SampleOrder_Article1, SampleOrder_Stage1, SampleOrder_Curency1,
       SampleOrder_Mat1, SampleOrder_Part1, SampleOrder_Supplier1,SampleMaterial_CombinatedDev1
       , FunUnit;
{$R *.dfm}

procedure TSampleOrder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DelList.Free;
  Action:=caFree;
end;

procedure TSampleOrder.FormDestroy(Sender: TObject);
begin
  SampleOrder:=nil;
end;

procedure TSampleOrder.Button1Click(Sender: TObject);
begin
  //
  with YPZL do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('SELECT ypzl.* ,kfxxzl.XieMing ,kfxxzl.ARTICLE AS ARTNO ,kfxxzl.YSSM ,kfxxzl.JiJie ,kfxxzl.XTMH ,kfxxzl.DDMH ,kfxxzl.KFLX AS KFLX2 ,kfxxzl.DEVCODE ,kfzl.kfjc ,lbzls.ywsm ,kfzl.kfdh ,kfxxzl.CCGB ');
    SQL.Add(',kfxxzl.FD ,kfxxzl.DevType ,kfxxzl.Category,''1'' as YN FROM ypzl ypzl ');
    SQL.Add('LEFT JOIN kfxxzl kfxxzl ON ypzl.XieXing = kfxxzl.XieXing AND ypzl.SheHao = kfxxzl.SheHao ');
    SQL.Add('LEFT JOIN kfzl kfzl ON kfxxzl.KHDH = kfzl.kfdh ');
    SQL.Add('LEFT JOIN lbzls lbzls ON ypzl.KFJD = lbzls.lbdh AND lbzls.lb = ''04'' ');
    SQL.Add('where  ypzl.YPDH like  ''%'+YPDHEdit.Text+'%'' ');
    sql.add('   and convert(smalldatetime,convert(varchar,YPZL.USERDATE,111)) between ');
    sql.add('   '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.Add('   and (GSDH='''+main.Edit2.Text+''' or GSDH=''LAI'') ');
    if YPDHEdit.Text<>'' then
      sql.Add(' and YPZL.YPDH like ''%'+YPDHEdit.Text+'%'' ');
    if ArticleEdit.Text<>'' then
      sql.Add(' and YPZL.Article like ''%'+ArticleEdit.Text+'%'' ');
    if XieXingEdit.Text<>'' then
      sql.Add(' and kfxxzl.XieXing like ''%'+XieXingEdit.Text+'%'' ');
    if SheHaoEdit.Text<>'' then
      sql.Add(' and kfxxzl.SheHao like ''%'+SheHaoEdit.Text+'%'' ');
    if KFJDEdit.Text<>'' then
      sql.Add(' and ypzl.KFJD like ''%'+KFJDEdit.Text+'%'' ');
    if JiJieEdit.Text<>'' then
      sql.Add(' and kfxxzl.JiJie like ''%'+JiJieEdit.Text+'%'' ');
    if DevCodeEdit.Text<>'' then
      sql.Add(' and kfxxzl.DevCode like ''%'+DevCodeEdit.Text+'%'' ');
    if XieMingEdit.Text<>'' then
      sql.Add(' and kfxxzl.XieMing like ''%'+JiJieEdit.Text+'%'' ');
    if Check.Checked=true then
      sql.Add(' and YPZL.UserID='''+main.Edit1.Text+''' ');
    sql.Add('order by YPZL.YPDH desc ');
    Active:=true;
  end;
  YPZLS.Active:=true;
  YPZLS2.Active:=true;
  ToolPanel.Visible:=false;
  InfoPanel.Visible:=true;
  //
  if ReadOnly=false then
  begin
    BB2.Enabled:=true;
    BB3.Enabled:=true;
    BB4.Enabled:=true;
  end;
  //
end;

procedure TSampleOrder.BB2Click(Sender: TObject);
begin
  with YPZL do
  begin
      requestlive:=true;
      cachedupdates:=true;
      insert;
      YPZL.FieldByName('YPDH').AsString:='Auto';
      YPZL.FieldByName('PFC').AsString:='JNG';
      YPZL.FieldByName('Currency').AsString:='USD';
      YPZL.FieldByName('Rate').AsString:='1';
      YPZL.FieldByName('UserDate').AsString:=FormatDateTime('YYYYMMDD',NDate);
      YPZL.FieldByName('UserID').AsString:=main.Edit1.Text;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  YPZLGrid.columns[3].ButtonStyle:=cbsEllipsis;
  YPZLGrid.columns[6].ButtonStyle:=cbsEllipsis;
  //
  XieXingQry.Visible:=true;
  StageQry.Visible:=true;
  CurrencyQry.Visible:=true;
  //
end;

procedure TSampleOrder.BB3Click(Sender: TObject);
begin
  if YPZLS.recordcount=0 then
  begin
      with YPZL do
      begin
          if fieldbyname('USERID').value=main.edit1.Text then
          begin
              requestlive:=true;
              cachedupdates:=true;
              edit;
              fieldbyname('YN').Value:='0';
          end else
          begin
              showmessage('It is not yours,can not delete.');
          end;
      end;
  end else
  begin
          showmessage('Pls delete the Deliver Detail first.')
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TSampleOrder.BB4Click(Sender: TObject);
begin
  //
  with YPZL do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  YPZLGrid.columns[3].ButtonStyle:=cbsEllipsis;
  YPZLGrid.columns[6].ButtonStyle:=cbsEllipsis;
  //
  XieXingQry.Visible:=true;
  StageQry.Visible:=true;
  CurrencyQry.Visible:=true;
end;

procedure TSampleOrder.BB1Click(Sender: TObject);
begin
  ToolPanel.Visible:=true;
end;

procedure TSampleOrder.BB5Click(Sender: TObject);
var y,m,YPDH:string;
    i:integer;
begin
  //
  with TempQry do          //取服務器的年月值
  begin
      active:=false;
      sql.Clear;
      sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
      active:=true;
      y:=Copy(fieldbyname('FY').asstring,3,2);
      m:=fieldbyname('FM').asstring;
      NDate:=fieldbyname('NDate').Value;
      active:=false;
  end;
  if length(m)<2 then
    m:='0'+m;

  try
      YPZLS.Active:=false;
      YPZL.first;
      for i:=1 to YPZL.RecordCount do
      begin
          case YPZL.updatestatus of
           usinserted:
           begin
                if YPZL.fieldbyname('YPDH').isnull then
                begin
                    YPZL.delete;
                end else
                begin
                       with TempQry do    //計算領料單流水號
                       begin
                         active:=false;
                         sql.Clear;
                         sql.Add('select YPDH from YPZL where YPDH like ''LAIV'+y+m+'%''');
                         sql.add('order by YPDH');
                         active:=true;
                         if recordcount >0 then
                         begin
                             last;
                             YPDH:=fieldbyname('YPDH').AsString;
                             YPDH:=copy(YPDH,9,5);
                             YPDH:=inttostr(strtoint(YPDH)+1);
                             while length(YPDH)<5 do
                             begin
                               YPDH:='0'+YPDH;
                             end;
                         end else
                         begin
                               YPDH:='00001';
                         end;
                         YPDH :='LAIV'+y+m+YPDH;
                         active:=false;
                         sql.Clear;
                       end;
                       YPZL.edit;
                       YPZL.fieldbyname('YPDH').Value:=YPDH;
                       YPZL.FieldByName('GSDH').Value:=main.Edit2.Text;
                       YPZL.FieldByName('userID').Value:=main.edit1.text;
                       YPZL.FieldByName('userdate').AsString:=FormatDateTime('YYYYMMDD',Ndate);
                       upMas.apply(ukinsert);
                end;
            end;
            usmodified:
            begin
                if YPZL.fieldbyname('YN').value='0'then
                begin
                    //刪除紀錄
                    with TempQry do
                      begin
                        active:=false;
                        sql.Clear;
                        sql.add('insert into BDelRec ');
                        sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                        sql.add('values ('+''''+'YPZL'+''''+','+''''+YPZL.fieldbyname('YPDH').Value+'''');
                        sql.add(','+''''+''+''''+','+''''+YPZL.fieldbyname('USERID').Value+''''+',');
                        sql.add(''''+main.Edit1.Text+''''+',getdate())');
                        execsql;
                        active:=false;
                      end;
                    upMas.apply(ukdelete);
                end else
                begin
                  if  YPZL.FieldByName('userID').Value=main.Edit1.Text then
                    begin
                      YPZL.edit;
                      YPZL.FieldByName('userID').Value:=main.edit1.text;
                      YPZL.FieldByName('userdate').AsString:=FormatDateTime('YYYYMMDD',Ndate);
                      upMas.apply(ukmodify);
                    end else
                    begin
                        showmessage('It is not yours, can not modify.');
                    end;
                end;
            end;
         end;
         YPZL.next;
      end;//for
  YPZL.active:=false;
  YPZL.cachedupdates:=false;
  YPZL.requestlive:=false;
  YPZL.active:=true;
  YPZLS.Active:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  //
  YPZLGrid.columns[3].ButtonStyle:=cbsnone;
  YPZLGrid.columns[6].ButtonStyle:=cbsnone;  
  XieXingQry.Visible:=false;
  StageQry.Visible:=false;
  CurrencyQry.Visible:=false;
  showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TSampleOrder.YPZLGridGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

  if ((YPZL.FieldByName('Article').AsString<>'') and (YPZL.FieldByName('XieXing').AsString='')) then
  begin
    YPZLGrid.canvas.font.color:=clBlue;
  end;
  
  if YPZL.FieldByName('YN').value='0' then
  begin
    YPZLGrid.canvas.font.color:=clred;
  end;
  if YPZL.FieldByName('YPDH').AsString='Auto' then
  begin
    YPZLGrid.canvas.font.color:=clGreen;
  end;

end;

procedure TSampleOrder.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  DelList:=TStringlist.Create;//
  with TempQry do
  begin
    Active:=false;
    Sql.Clear;
    Sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  //
  DTP1.Date:=Date()-30;
  DTP2.Date:=Date();
  SampleOrderInitPickList();
  PC1.ActivePage:=TS1;
  //唯讀
  if ReadOnly=true then
  begin
    Check.Checked:=false;
  end else
  begin
    YPZLGrid.PopupMenu:=PopupMenu;
    YPZLSGrid.PopupMenu:=PopupMenu1;
  end;
end;

procedure TSampleOrder.BB6Click(Sender: TObject);
begin
  YPZL.active:=false;
  YPZL.cachedupdates:=false;
  YPZL.requestlive:=false;
  YPZL.active:=true;
  YPZLS.Active:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  //
  YPZLGrid.columns[3].ButtonStyle:=cbsnone;
  YPZLGrid.columns[6].ButtonStyle:=cbsnone;
  XieXingQry.Visible:=false;
  StageQry.Visible:=false;
  CurrencyQry.Visible:=false;
end;

procedure TSampleOrder.XieXingQryClick(Sender: TObject);
begin
  SampleOrder_Article:=TSampleOrder_Article.Create(self);
  SampleOrder_Article.ShowModal();
  SampleOrder_Article.Free;
end;

procedure TSampleOrder.StageQryClick(Sender: TObject);
begin
  SampleOrder_Stage:=TSampleOrder_Stage.Create(self);
  SampleOrder_Stage.ShowModal();
  SampleOrder_Stage.Free;
end;

procedure TSampleOrder.CurrencyQryClick(Sender: TObject);
begin
  SampleOrder_Curency:=TSampleOrder_Curency.Create(self);
  SampleOrder_Curency.ShowModal();
  SampleOrder_Curency.Free;
end;

procedure TSampleOrder.YPZLGridEditButtonClick(Sender: TObject);
begin
  with YPZLGrid do
  begin
    if Selectedfield.fieldname='XieXing' then XieXingQry.Click;
    if Selectedfield.fieldname='KFJD' then StageQry.Click;
  end;
end;

procedure TSampleOrder.PC1Change(Sender: TObject);
begin
  PageChange();
end;

procedure TSampleOrder.YPZLSAfterOpen(DataSet: TDataSet);
begin
  DelList.Clear;
  if ReadOnly=false then
  begin
    BD2.Enabled:=true;
    BD3.Enabled:=true;
    BD4.Enabled:=true;
  end;
end;

procedure TSampleOrder.BD2Click(Sender: TObject);
begin
  with YPZLS do
  begin
      requestlive:=true;
      cachedupdates:=true;
      Last;
      Append;
      FieldByName('XH').Value:='000';
      FieldByName('Loss').Value:=0;
      FieldByName('CLSL').Value:=0;
      FieldByName('Rate').Value:=0;
      FieldByName('CLDJ').Value:=0;
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  YPZLSGrid.columns[1].ButtonStyle:=cbsEllipsis;
  YPZLSGrid.columns[3].ButtonStyle:=cbsEllipsis;
  YPZLSGrid.columns[9].ButtonStyle:=cbsEllipsis;
end;

procedure TSampleOrder.BD3Click(Sender: TObject);
begin

  if YPZL.fieldbyname('USERID').value=main.edit1.Text then
  begin
      YPZLS.requestlive:=true;
      YPZLS.cachedupdates:=true;
      if DelCK.Checked=false then //刪除顯示保留原本操作
      begin
        DelList.Add(YPZLS.FieldByName('YPDH').AsString+';'+YPZLS.FieldByName('XH').AsString+';'+YPZLS.FieldByName('BWBH').AsString);
        YPZLS.delete;
      end else
      begin
        YPZLS.Edit;
        YPZLS.fieldbyname('YN').Value:='0';
      end;

  end else
  begin
     showmessage('It is not yours,can not delete.');
  end;

  BD5.Enabled:=true;
  BD6.Enabled:=true;
end;

procedure TSampleOrder.BD4Click(Sender: TObject);
begin
  with YPZLS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  YPZLSGrid.columns[1].ButtonStyle:=cbsEllipsis;
  YPZLSGrid.columns[3].ButtonStyle:=cbsEllipsis;
  YPZLSGrid.columns[9].ButtonStyle:=cbsEllipsis;  
end;
//  11 4
procedure TSampleOrder.SampleOrderInitPickList();
begin
  YPZLSGrid.Columns[11].PickList.Clear;
  YPZLSGrid.Columns[11].PickList.Add('USD');
  YPZLSGrid.Columns[11].PickList.Add('VND');
  YPZLSGrid.Columns[11].PickList.Add('NTD');
  YPZLSGrid.Columns[11].PickList.Add('EUR');
  YPZLSGrid.Columns[11].PickList.Add('GBP');
  YPZLSGrid.Columns[11].PickList.Add('HKD');
  YPZLSGrid.Columns[11].PickList.Add('JPD');
  YPZLSGrid.Columns[11].PickList.Add('RMB');
end;

procedure TSampleOrder.YPZLSGridEditButtonClick(Sender: TObject);
begin
  with YPZLSGrid do
  begin
    if Selectedfield.fieldname='BWBH' then
    begin
     if SampleOrder_Part=nil then
     begin
       SampleOrder_Part:=TSampleOrder_Part.Create(self);
       SampleOrder_Part.Show;
     end else
     begin
       SampleOrder_Part.Show;
     end;
    end;
    if Selectedfield.fieldname='CLBH' then
    begin
     if SampleOrder_Mat=nil then
     begin
       SampleOrder_Mat:=TSampleOrder_Mat.Create(self);
       SampleOrder_Mat.Show;
     end else
     begin
       SampleOrder_Mat.Show;
     end;
    end;
    if Selectedfield.fieldname='CSBH' then
    begin
     if SampleOrder_Supplier=nil then
     begin
       SampleOrder_Supplier:=TSampleOrder_Supplier.Create(self);
       SampleOrder_Supplier.Show;
     end else
     begin
       SampleOrder_Supplier.Show;
     end;
    end;
  end;
   
end;

procedure TSampleOrder.YPZLSGridGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

  if Copy(YPZLS.FieldByName('CLBH').AsString,1,4)='V901' then
  begin
    YPZLSGrid.canvas.font.color:=clBlue;
  end;
  if YPZLS.FieldByName('YN').value='0' then
  begin
    YPZLSGrid.canvas.font.color:=clred;
  end;
  if YPZLS.FieldByName('XH').AsString='000' then
  begin
    YPZLSGrid.canvas.font.color:=clGreen;
  end;
  if YPZLS.FieldByName('clzmlb').AsString='Y' then
  begin
    YPZLSGrid.canvas.Font.Style:=[fsBold];
  end;
end;

procedure TSampleOrder.BD5Click(Sender: TObject);
var i:integer;
    XH:string;
    tmpList:TStringlist;
begin
  //先刪除隱藏Delete
  for i:=0 to DelList.Count-1 do
  begin
    tmpList:=FuncObj.SplitString(DelList[i],';');
    if tmpList.Count=3 then
    begin
      with TempQry do
      begin
        active:=false;
        sql.Clear;
        sql.add('Delete YPZLS where ');
        sql.Add('YPDH='''+tmpList.Strings[0]+''' and XH='''+tmpList.Strings[1]+''' and BWBH='''+tmpList.Strings[2]+''' ');
        execsql;
        active:=false;
      end;
    end;
    tmpList.Free;
  end;
  //
  YPZLS.first;
  for i:=1 to YPZLS.RecordCount do
  begin
    case YPZLS.updatestatus of
     usinserted:
     begin
       if ( (trim(YPZLS.FieldByName('XH').AsString)='') or (trim(YPZLS.FieldByName('BWBH').AsString)='') ) then
       begin
         YPZLS.Delete;
       end else
       begin
         //使用者沒有輸入
         if YPZLS.FieldByName('XH').AsString='000' then
         begin
           with TempQry do    //計算領料單流水號
           begin
             active:=false;
             sql.Clear;
             sql.Add('select Max(XH) as XH from YPZLS where YPDH='''+YPZL.FieldByName('YPDH').AsString+''' ');
             active:=true;
             if fieldbyname('XH').AsString <> '' then
             begin
                 last;
                 XH:=fieldbyname('XH').AsString;
                 XH:=Format('%.3d',[strtoint(XH)+5]);
             end else
             begin
                 XH:='005';
             end;
             active:=false;
           end;
         end else
         begin
           XH:=YPZLS.FieldByName('XH').AsString;
         end;
         //
         YPZLS.edit;
         YPZLS.fieldbyname('YPDH').Value:=YPZL.FieldByName('YPDH').AsString;
         YPZLS.fieldbyname('XH').Value:=XH;
         //檢查部位是否存在
         with TempQry do    //計算領料單流水號
         begin
           active:=false;
           sql.Clear;
           sql.Add('select YPDH from YPZLS where YPDH='''+YPZL.FieldByName('YPDH').AsString+'''  and BWBH='''+YPZLS.FieldByName('BWBH').AsString+''' ');
           active:=true;
         end;
         if TempQry.RecordCount=0 then
         begin
           upDet.apply(ukinsert)
         end else
         begin
           Showmessage('Part is exists!');
           exit;
         end;
         //
         TempQry.Active:=false;

       end;
     end;
     usmodified:
     begin
         if YPZLS.fieldbyname('YN').value='0'then
         begin
            //刪除紀錄
            with TempQry do
              begin
                active:=false;
                sql.Clear;
                sql.add('insert into BDelRec ');
                sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                sql.add('values ('+''''+'YPZLS'+''''+','+''''+YPZLS.fieldbyname('BWBH').AsString+'_'+YPZLS.fieldbyname('CLBH').AsString+'''');
                sql.add(','+''''+''+''''+','+''''+YPZL.fieldbyname('USERID').Value+''''+',');
                sql.add(''''+main.Edit1.Text+''''+',getdate())');
                execsql;
                active:=false;
              end;
            upDet.apply(ukdelete);
         end else
         begin
            if  YPZL.FieldByName('userID').Value=main.Edit1.Text then
            begin
              with TempQry do    //計算領料單流水號
              begin
               active:=false;
               sql.Clear;
               sql.Add('Update YPZL Set USERID='''+main.Edit1.Text+''',USERDATE='''+FormatDateTime('YYYYMMDD',NDate)+''' where YPDH='''+YPZL.FieldByName('YPDH').AsString+'''  ');
               execsql;
              end;
              upDet.apply(ukmodify);
            end else
            begin
                showmessage('It is not yours, can not modify.');
            end;
         end;
         //
     end;
    end;
    YPZLS.Next;
  end;
  //
  YPZLS.active:=false;
  YPZLS.cachedupdates:=false;
  YPZLS.requestlive:=false;
  YPZLS.Active:=true;
  BD5.enabled:=false;
  BD6.enabled:=false;
  //
  YPZLSGrid.columns[1].ButtonStyle:=cbsnone;
  YPZLSGrid.columns[3].ButtonStyle:=cbsnone;
  YPZLSGrid.columns[9].ButtonStyle:=cbsnone;
end;

procedure TSampleOrder.BD6Click(Sender: TObject);
begin
  YPZLS.active:=false;
  YPZLS.cachedupdates:=false;
  YPZLS.requestlive:=false;
  YPZLS.Active:=true;
  BD5.enabled:=false;
  BD6.enabled:=false;
  //
  YPZLSGrid.columns[1].ButtonStyle:=cbsnone;
  YPZLSGrid.columns[3].ButtonStyle:=cbsnone;
  YPZLSGrid.columns[9].ButtonStyle:=cbsnone;
end;

procedure TSampleOrder.YPZLSGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if PC1.ActivePageIndex=1 then
  begin
    //if Key=45 then BD2.Click; //Insert
    if Key=46 then BD3.Click; //Delete
  end;
end;
//

procedure TSampleOrder.YPZLSCLBHSetText(Sender: TField;
  const Text: String);
begin
  Sender.Value:=Text;
  with MatQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select CLDH,ZWPM,dwbh,CQDH from CLZL where CLDH='''+Sender.AsString+''' and ((Substring(CLDH,1,4)=''V901'') or YN=1 ) ');
    Active:=true;
    if RecordCount>0 then
    begin
      YPZLS.Edit;
      YPZLS.FieldByName('CLMC').Value:=MatQry.FieldByName('ZWPM').Value;
      YPZLS.FieldByName('CQDH').Value:=MatQry.FieldByName('CQDH').Value;
      YPZLS.FieldByName('dwbh').Value:=MatQry.FieldByName('dwbh').Value;
      YPZLS.Post;
    end;
  end;
end;

procedure TSampleOrder.YPZLSBWBHSetText(Sender: TField;
  const Text: String);
begin
  Sender.Value:=Text;
  with PartQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select bwdh,zwsm,ywsm,bwlb from bwzl where bwdh='''+Sender.AsString+'''  ');
    Active:=true;
    if RecordCount>0 then
    begin
      YPZLS.Edit;
      YPZLS.FieldByName('BWMC').Value:=PartQry.FieldByName('zwsm').Value;
      YPZLS.FieldByName('BWLB').Value:=PartQry.FieldByName('BWLB').Value;
      YPZLS.Post;
    end;
  end;

end;

procedure TSampleOrder.YPZLSCSBHSetText(Sender: TField;
  const Text: String);
begin
  Sender.Value:=Text;
  with SupplierQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select zsdh,zsqm,ZSYWJC from ZSZL where zsdh<>'''' and ZSDH='''+Sender.AsString+''' and YN=1 ');
    Active:=true;
    if RecordCount>0 then
    begin
      YPZLS.Edit;
      YPZLS.FieldByName('CSBH').Value:=SupplierQry.FieldByName('zsdh').Value;
      YPZLS.FieldByName('ZSJC').Value:=SupplierQry.FieldByName('ZSQM').Value;
      YPZLS.Post;
    end;
  end;

end;

//複製樣品單
procedure TSampleOrder.CopySampleOrder();
var y,m,YPDH:string;
begin
   //
   with TempQry do          //取服務器的年月值
   begin
        active:=false;
        sql.Clear;
        sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
        active:=true;
        y:=Copy(fieldbyname('FY').asstring,3,2);
        m:=fieldbyname('FM').asstring;
        NDate:=fieldbyname('NDate').Value;
        active:=false;
   end;
   if length(m)<2 then m:='0'+m;
   //
   with TempQry do    //計算領料單流水號
   begin
     active:=false;
     sql.Clear;
     sql.Add('select YPDH from YPZL where YPDH like ''LAIV'+y+m+'%''');
     sql.add('order by YPDH');
     active:=true;
     if recordcount >0 then
     begin
         last;
         YPDH:=fieldbyname('YPDH').AsString;
         YPDH:=copy(YPDH,9,5);
         YPDH:=inttostr(strtoint(YPDH)+1);
         while length(YPDH)<5 do
         begin
           YPDH:='0'+YPDH;
         end;
     end else
     begin
           YPDH:='00001';
     end;
     YPDH :='LAIV'+y+m+YPDH;
     active:=false;
     sql.Clear;
   end;
   //主檔
   with TempQry do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Insert into YPZL');
     SQL.Add('Select '''+YPDH+''', XieXing, SheHao, ARTICLE ,KFJD, YPCC, Rate, Currency, KFRQ, SDRQ, JHRQ, Quantity, PFC, CFM , FINDATE, '''+main.Edit2.Text+''', '''+main.Edit1.Text+''', '''+FormatDateTime('YYYYMMDD',Date())+''', CGBH, KFLX, YPCCO ,YPCCL , CGBH1 from YPZL ');
     SQL.Add('where YPDH='''+YPZL.fieldByName('YPDH').AsString+''' ');
     ExecSQL;
   end;
   //
   with TempQry do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Insert into YPZLS');
     SQL.Add('Select '''+YPDH+''', XH, BWBH, BWLB ,CLBH, CSBH, LOSS, CLSL, CLDJ, Currency, Rate, Remark, JGZWSM, JGYWSM from YPZLS ');
     SQL.Add('where YPDH='''+YPZL.fieldByName('YPDH').AsString+''' ');
     ExecSQL;
   end;
end;
//
procedure TSampleOrder.CopySampleOrder2Click(Sender: TObject);
begin
  //
  if YPZL.Active=true then
  begin
    if  MessageDlg('Ok to copy SampleOrder No:'+YPZL.fieldByName('YPDH').AsString,mtCustom,[mbYes,mbCancel],0)=mrYes then
    begin
      CopySampleOrder();
      YPZL.Active:=false;
      YPZL.Active:=true;
      Showmessage('Successfully!');
    end;
  end;
  //
end;

procedure TSampleOrder.YPZLGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if PC1.ActivePageIndex=0 then
  begin
    if Key=46 then BB3.Click; //Delete
  end;
end;

procedure TSampleOrder.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TSampleOrder.BE2Click(Sender: TObject);
begin

  with YPZLS2 do
  begin
      requestlive:=true;
      cachedupdates:=true;
      insert;
      FieldByName('LineNum').Value:='000';
  end;
  BE5.Enabled:=true;
  BE6.Enabled:=true;
end;

procedure TSampleOrder.BE3Click(Sender: TObject);
begin
  //
  if YPZL.fieldbyname('USERID').value=main.edit1.Text then
  begin
      YPZLS2.requestlive:=true;
      YPZLS2.cachedupdates:=true;
      YPZLS2.Edit;
      YPZLS2.fieldbyname('YN').Value:='0';
  end else
  begin
     showmessage('It is not yours,can not delete.');
  end;
  BE5.Enabled:=true;
  BE6.Enabled:=true;
end;

procedure TSampleOrder.BE4Click(Sender: TObject);
begin
  with YPZLS2 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BE5.Enabled:=true;
  BE6.Enabled:=true;  
end;

procedure TSampleOrder.YPZLS2AfterOpen(DataSet: TDataSet);
begin
  if ReadOnly=false then
  begin
    BE2.Enabled:=true;
    BE3.Enabled:=true;
    BE4.Enabled:=true;
  end;

end;

procedure TSampleOrder.BE5Click(Sender: TObject);
var i:integer;
    LineNum:string;
begin
  //
  YPZLS2.First;
  for i:=1 to YPZLS2.RecordCount do
  begin
    case YPZLS2.updatestatus of
     usinserted:
     begin
         //使用者沒有輸入
         if YPZLS2.FieldByName('LineNum').AsString='000' then
         begin
           with TempQry do    //計算領料單流水號
           begin
             active:=false;
             sql.Clear;
             sql.Add('select Max(LineNum) as LineNum from YPZLS2 where YPDH='''+YPZL.FieldByName('YPDH').AsString+''' ');
             active:=true;
             if fieldbyname('LineNum').AsString <> '' then
             begin
                 last;
                 LineNum:=fieldbyname('LineNum').AsString;
                 LineNum:=Format('%.3d',[strtoint(LineNum)+5]);
             end else
             begin
                 LineNum:='005';
             end;
             active:=false;
           end;
         end else
         begin
           LineNum:=YPZLS2.FieldByName('LineNum').AsString;
         end;
         //
         YPZLS2.edit;
         YPZLS2.fieldbyname('YPDH').Value:=YPZL.FieldByName('YPDH').AsString;
         YPZLS2.fieldbyname('LineNum').Value:=LineNum;
         //檢查部位是否存在
         with TempQry do    //計算領料單流水號
         begin
           active:=false;
           sql.Clear;
           sql.Add('select YPDH from YPZLS2 where YPDH='''+YPZL.FieldByName('YPDH').AsString+''' and LineNum='''+YPZLS2.FieldByName('LineNum').AsString+''' ');
           active:=true;
         end;
         //
         if TempQry.RecordCount=0 then
         begin
           upMemo.apply(ukinsert)
         end else
         begin
           Showmessage('Part is exists!');
           exit;
         end;
     end;
     usmodified:
     begin
         if YPZLS2.fieldbyname('YN').value='0' then
         begin
            upMemo.apply(ukdelete);
         end else
         begin
            if  YPZL.FieldByName('userID').Value=main.Edit1.Text then
            begin
              upMemo.apply(ukmodify);
            end else
            begin
              showmessage('It is not yours, can not modify.');
            end;
         end;
         //
     end;
    end;
    YPZLS2.Next;
  end;
  YPZLS2.active:=false;
  YPZLS2.cachedupdates:=false;
  YPZLS2.requestlive:=false;
  YPZLS2.Active:=true;
  BE5.enabled:=false;
  BE6.enabled:=false;
end;

procedure TSampleOrder.YPZLS2GridGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if YPZLS2.FieldByName('YN').value='0' then
  begin
    YPZLS2Grid.canvas.font.color:=clred;
  end;
  if YPZLS2.FieldByName('LineNum').AsString='000' then
  begin
    YPZLS2Grid.canvas.font.color:=clBlue;
  end;
end;

procedure TSampleOrder.BE6Click(Sender: TObject);
begin
  //
  YPZLS2.active:=false;
  YPZLS2.cachedupdates:=false;
  YPZLS2.requestlive:=false;
  YPZLS2.Active:=true;
  BE5.enabled:=false;
  BE6.enabled:=false;
  //
end;

procedure TSampleOrder.YPZLS2GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if PC1.ActivePageIndex=2 then
  begin
    if Key=45 then BE2.Click; //Delete
    if Key=46 then BE3.Click; //Delete
  end;
end;
//匯出 Excel
procedure TSampleOrder.ExportSampleOrder();
var eclApp,WorkBook:olevariant;
    i,offset:integer;
    SubPart:boolean;
begin
   if MessageDlg('Print Sub Parts?',mtCustom,[mbYes,mbNo], 0)=mrYes then
      SubPart:=true
   else
      SubPart:=false;
   //
   if FileExists(AppDir+'Additional\SampleOrdernew.xls')=false  then
   begin
     if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\SampleOrdernew.xls'),Pchar(AppDir+'Additional\SampleOrdernew.xls'),false);
   end;
   if FileExists(AppDir+'Additional\SampleOrdernew.xls') then
   begin
      if  YPZL.active  then
      begin
        try
          eclApp:=CreateOleObject('Excel.Application');
          WorkBook:=CreateOleObject('Excel.Sheet');
        except
          Application.MessageBox('No Microsoft Excel','Microsoft Excel',MB_OK+MB_ICONWarning);
          Exit;
        end;
        //
        try
          eclApp.WorkBooks.Open(AppDir+'Additional\SampleOrdernew.xls');
          eclApp.WorkSheets[1].Activate;//第一頁為主
          eclApp.ActiveSheet.Rows.Font.Size := 13;

          //內腰資訊
          //Select YPZL_S1.*  From YPZL_S1 YPZL_S1
          //WHERE YPDH = 'LAIS140700011'
          //抬頭資訊
          with TempQry do
          begin
            Active:=false;
            SQL.Clear;
            SQL.Add('SELECT ypzl.* ,kfxxzl.XieMing ,kfxxzl.ARTICLE AS ARTNO ,kfxxzl.YSSM ,kfxxzl.JiJie ,kfxxzl.XTMH ,kfxxzl.DDMH ,kfxxzl.KFLX AS KFLX2 ');
            SQL.Add(',kfxxzl.DEVCODE ,kfzl.kfjc ,lbzls.zwsm ,lbzls.ywsm ,kfzl.kfdh ,kfxxzl.CCGB ,kfxxzl.IMGName ,lbzls03.zwsm AS zwsm03 ,lbzls03.ywsm AS ywsm03 ,kfxxzl.DAOMH ');
            SQL.Add('FROM ypzl  ');
            SQL.Add('LEFT JOIN kfxxzl kfxxzl ON ypzl.XieXing = kfxxzl.XieXing AND ypzl.SheHao = kfxxzl.SheHao ');
            SQL.Add('LEFT JOIN kfzl kfzl ON kfxxzl.KHDH = kfzl.kfdh ');
            SQL.Add('LEFT JOIN lbzls lbzls ON ypzl.KFJD = lbzls.lbdh AND lbzls.lb = ''04'' ');
            SQL.Add('LEFT JOIN lbzls lbzls03 ON kfxxzl.XieGN = lbzls03.lbdh AND lbzls03.lb = ''03'' ');
            SQL.Add('WHERE YPDH = '''+YPZL.FieldByName('YPDH').AsString+''' ');
            Active:=true;
          end;
          //
          eclApp.Cells(1,1):=TempQry.FieldByName('KFJC').AsString+' PROTOTYPE SAMPLE';
          eclApp.Cells(2,1):=YPZL.FieldByName('YPDH').AsString;    //編號
          eclApp.Cells(2,7):=YPZL.FieldByName('Article').AsString; //
          eclApp.Cells(2,11):=FormatDateTime('YYYY/MM/DD',Date()); //日期
          //
          eclApp.Cells(4,3):=TempQry.FieldByName('KFJC').AsString;
          eclApp.Cells(4,6):=TempQry.FieldByName('JiJie').AsString;
          eclApp.Cells(5,3):=TempQry.FieldByName('Article').AsString;
          eclApp.Cells(5,6):=TempQry.FieldByName('YWSM').AsString;
          {  DON'T GET SKU NAME
          eclApp.Cells(6,3):=TempQry.FieldByName('XieXing').AsString;
          }
          eclApp.Cells(6,6):=TempQry.FieldByName('Quantity').AsString;
          eclApp.Cells(7,3):=TempQry.FieldByName('YPCC').AsString;
          eclApp.Cells(7,6):=TempQry.FieldByName('XieXing').AsString;
          eclApp.Cells(8,3):=TempQry.FieldByName('YSSM').AsString;
          eclApp.Cells(8,6):=TempQry.FieldByName('SheHao').AsString;
          eclApp.Cells(9,3):='['+TempQry.FieldByName('YPCCO').AsString+']'+TempQry.FieldByName('DDMH').AsString;
          eclApp.Cells(9,6):='['+TempQry.FieldByName('YPCCL').AsString+']'+TempQry.FieldByName('XTMH').AsString;
        //  eclApp.Cells(10,3):=TempQry.FieldByName('KFRQ').AsString;
        // MODIFY DELIVERY DATE IS ETA
          eclApp.Cells(10,3):=TempQry.FieldByName('JHRQ').AsString;
          //
          eclApp.Cells(10,6):=TempQry.FieldByName('FINDATE').AsString;
          eclApp.Cells(10,8):=TempQry.FieldByName('DAOMH').AsString;
          //
          TempQry.Active:=false;
          //備註資訊
          with TempQry do
          begin
            Active:=false;
            SQL.Clear;
            SQL.Add('select LineNum,Remark from ypzls2 ');
            SQL.Add('WHERE YPDH = '''+YPZL.FieldByName('YPDH').AsString+''' ');
            SQL.Add('order by LineNum ');
            Active:=true;
            if RecordCount>0 then
            begin
              Offset:=13;
              First;
              for i:=0 to RecordCount-1  do
              begin
                if i<>RecordCount-1 then
                begin
                  eclApp.ActiveSheet.Rows[13].Copy;
                  eclApp.ActiveSheet.Rows[13].Insert(-4121);

                end;
              end;
              First;
              for i:=0 to RecordCount-1  do
              begin
              //  eclApp.ActiveSheet.Rows.Font.Size := 15;

                eclApp.Cells(Offset+i,1):=TempQry.FieldByName('LineNum').AsString;
                eclApp.Cells(Offset+i,2):=TempQry.FieldByName('Remark').AsString;
                Next;
              end;
            end else
            begin
              eclApp.ActiveSheet.Rows[13].Delete;
            end;
          end;
          //材料

          with TempQry do
          begin
            Active:=false;
            SQL.Clear;
            if SubPart=false then
            begin
              SQL.Add('SELECT ypzls.YPDH ,ypzls.xh ,ypzls.BWBH ,ypzls.CLBH ,ypzls.BWLB ,ypzls.CSBH ,ypzls.loss ,ypzls.CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH ');
              SQL.Add(',ypzls.Remark ,bwzl.zwsm AS BWMC,bwzl.Ywsm AS BWYWMC ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,zszl.zsjc ,clzl.clzmlb ,clzl.tyjh ,clzl.tyjh ,ypzls.JGZWSM ,ypzls.JGYWSM ,zszl.zsywjc ');
              SQL.Add('FROM ypzls ypzls ');
              SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
              SQL.Add('LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
              SQL.Add('LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh WHERE YPDH = '''+YPZL.FieldByName('YPDH').AsString+''' ');
              SQL.Add('ORDER BY YPZLS.YPDH , YPZLS.XH');
            end else
            begin
              SQL.Add('select * from ( ');
              SQL.Add('SELECT ypzls.YPDH ,ypzls.xh ,ypzls.BWBH ,ypzls.CLBH ,ypzls.BWLB ,ypzls.CSBH ,ypzls.loss ,ypzls.CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH ');
              SQL.Add(',ypzls.Remark ,bwzl.zwsm AS BWMC,bwzl.Ywsm AS BWYWMC ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,zszl.zsjc ,clzl.clzmlb ,ypzls.JGZWSM ,ypzls.JGYWSM ,zszl.zsywjc ');
              SQL.Add('FROM ypzls ypzls ');
              SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
              SQL.Add('LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
              SQL.Add('LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh WHERE YPDH = '''+YPZL.FieldByName('YPDH').AsString+''' ');
              SQL.Add('union all ');
              SQL.Add('SELECT ypzls.YPDH ,ypzls.xh ,'''' as BWBH,clzhzl.CLDH1 as CLBH ');
              SQL.Add(' ,ypzls.BWLB , ');
              SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH ');
              SQL.Add(' ,ypzls.loss ,ypzls.CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH ');
              SQL.Add(',ypzls.Remark ,'''' AS BWMC,'''' AS BWYWMC ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
              SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc ');
              SQL.Add(',clzl.clzmlb  ,ypzls.JGZWSM ,ypzls.JGYWSM ,');
              SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc ');
              SQL.Add('FROM ypzls ypzls ');
              SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
              SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
              SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
              SQL.Add('LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
              SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
              SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
              SQL.Add('WHERE YPDH = '''+YPZL.FieldByName('YPDH').AsString+'''  and CLZHZL.SYL>0  ');
              SQL.Add(')  YPZLS order by   YPZLS.YPDH, YPZLS.XH ,YPZLS.BWBH desc ');
            end;
            Active:=true;
            if TempQry.RecordCount>0 then
            begin
              Offset:=12;
              First;
              for i:=0 to TempQry.RecordCount-1  do
              begin
                if i<>RecordCount-1 then
                begin

                  eclApp.ActiveSheet.Rows[12].Copy;
                  eclApp.ActiveSheet.Rows[12].Insert(-4121);
                end;
              end;
              First;
              for i:=0 to TempQry.RecordCount-1  do
              begin
                eclApp.Cells(Offset+i,1):=TempQry.FieldByName('BWBH').AsString;
                eclApp.Cells(Offset+i,2):=TempQry.FieldByName('BWYWMC').AsString;
                if TempQry.FieldByName('CLBH').AsString<>'' then
                eclApp.Cells(Offset+i,3):=TempQry.FieldByName('CLBH').AsString+'('+TempQry.FieldByName('CQDH').AsString+')';
                eclApp.Cells(Offset+i,4):=TempQry.FieldByName('CLYWMC').AsString;
                eclApp.Cells(Offset+i,11):=TempQry.FieldByName('DWBH').AsString;
                eclApp.Cells(Offset+i,12):=TempQry.FieldByName('CLSL').AsString;
                eclApp.Cells(Offset+i,13):=YPZL.FieldByName('Quantity').AsString;
                eclApp.Cells(Offset+i,14):=TempQry.FieldByName('loss').AsString;
                if YPZL.FieldByName('Quantity').AsString<>'' then
                eclApp.Cells(Offset+i,15):=YPZL.FieldByName('Quantity').Value * TempQry.FieldByName('CLSL').Value ;
                eclApp.Cells(Offset+i,16):=TempQry.FieldByName('zsywjc').AsString;
                TempQry.Next;
              end;
            end else
            begin
              eclApp.ActiveSheet.Rows[12].Delete;
            end;
          end;
          eclApp.CutCopyMode := False;//取消最後Copy
          //
          showmessage('Succeed');
          eclApp.Visible:=True;
         except
            on F:Exception do
              showmessage(F.Message);
         end;
      end;
   end;
end;
//
procedure TSampleOrder.BDT6Click(Sender: TObject);
begin
  ExportSampleOrder();
end;

procedure TSampleOrder.YPZLSAfterInsert(DataSet: TDataSet);
begin
  with YPZLS do
  begin
      FieldByName('XH').Value:='000';
      FieldByName('Loss').Value:=0;
      FieldByName('CLSL').Value:=0;
      FieldByName('Rate').Value:=0;
      FieldByName('CLDJ').Value:=0;
  end;
end;

procedure TSampleOrder.YPZLGridDblClick(Sender: TObject);
begin
 PC1.ActivePageIndex:=1;
 PageChange();
end;

procedure TSampleOrder.PageChange();
begin
  if PC1.ActivePageIndex=0 then
  begin
    MasPanel.Visible:=true;
    DetPanel.Visible:=false;
    RemarkPanel.Visible:=false;
  end else if PC1.ActivePageIndex=1 then
  begin
    MasPanel.Visible:=false;
    DetPanel.Visible:=true;
    RemarkPanel.Visible:=false;
  end else if PC1.ActivePageIndex=2 then
  begin
    MasPanel.Visible:=false;
    DetPanel.Visible:=false;
    RemarkPanel.Visible:=true;
  end;
end;
procedure TSampleOrder.BBT5Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  with TempQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select top 500 YPZL.Article,YPZLS.CLBH,CLZL.YWPM, ZSZL.ZSDH,ZSZL.ZSYWJC from YPZLS ');
    SQL.Add('Left join YPZL on YPZL.YPDH=YPZLS.YPDH ');
    SQL.Add('Left join ZSZL on ZSZL.ZSDH=YPZLS.CSBH');
    SQL.Add('left join CLZL on CLZL.CLDH=YPZLS.CLBH ');
    SQL.Add('where (ZSZL.SamplePurchaser is null or ZSZL.SamplePurchaser='''') ');
    if YPDHEdit.Text<>'' then
      sql.Add(' and YPZL.YPDH like ''%'+YPDHEdit.Text+'%'' ');
    if ArticleEdit.Text<>'' then
      sql.Add(' and YPZL.Article like ''%'+ArticleEdit.Text+'%'' ');
    if Check.Checked=true then
      sql.Add(' and YPZL.UserID='''+main.Edit1.Text+''' ');
    sql.Add('group by YPZL.Article,YPZLS.CLBH,CLZL.YWPM, ZSZL.ZSDH,ZSZL.ZSYWJC ');
    Active:=true;
  end;
  if TempQry.RecordCount>0 then
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
          for   i:=0   to   TempQry.fieldcount-1   do
            begin
              eclApp.ActiveSheet.Columns[i+1].ColumnWidth := 20;
              eclApp.Cells(1,i+1):=TempQry.fields[i].FieldName;
            end;

          TempQry.First;
          j:=2;
          while   not   TempQry.Eof   do
          begin
              for   i:=0   to  TempQry.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=TempQry.Fields[i].Value;
              end;
            TempQry.Next;
            inc(j);
          end;
         showmessage('Succeed');
         eclApp.Visible:=True;
      except
         on   F:Exception   do
          showmessage(F.Message);
      end;
  end else
  begin
    Showmessage('All material have purchaser');
  end;
  TempQry.Active:=false;
end;

procedure TSampleOrder.MenuItem1Click(Sender: TObject);
begin
  if YPZLS.FieldByName('clzmlb').AsString='Y' then
  begin
    SampleMaterial_CombinatedDev:=TSampleMaterial_CombinatedDev.Create(self);
    SampleMaterial_CombinatedDev.ShowModal();
    SampleMaterial_CombinatedDev.Free;
  end;
end;

end.
