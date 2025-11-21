unit BOMVN1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, DBCtrls, Grids, DBGrids, StdCtrls, ComCtrls, OleServer,comobj ,
  Buttons, ExtCtrls, Menus, GridsEh, DBGridEh, iniFiles;

type
  TBOMVN = class(TForm)
    Top2Panel: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    PC1: TPageControl;
    TS1: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    DBGrid1: TDBGridEh;
    TS2: TTabSheet;
    Panel3: TPanel;
    DBText1: TDBText;
    DBText4: TDBText;
    Label6: TLabel;
    Label9: TLabel;
    DBGrid2: TDBGridEh;
    XXZL: TQuery;
    DS1: TDataSource;
    XXBWFL: TQuery;
    DS2: TDataSource;
    TS3: TTabSheet;
    Panel6: TPanel;
    DBGrid3: TDBGridEh;
    XXZLXieXing: TStringField;
    XXZLXieMing: TStringField;
    XXBWFLBWBH: TStringField;
    XXBWFLFLBH: TStringField;
    XXBWFLoldFLBH: TStringField;
    XXBWFLDFL: TStringField;
    XXBWFLXFL: TStringField;
    XXBWFLUSERID: TStringField;
    XXBWFLUSERDATE: TDateTimeField;
    XXBWFLYN: TStringField;
    XXBWFLXXBW: TStringField;
    XXBWFLXieXing: TStringField;
    XXBWFLYWSM: TStringField;
    XXZLSheHao: TStringField;
    XXZLYSSM: TStringField;
    XXZLBZCC: TStringField;
    XXZLARTICLE: TStringField;
    Label14: TLabel;
    DBText9: TDBText;
    Label15: TLabel;
    DBText10: TDBText;
    Label16: TLabel;
    DBText11: TDBText;
    Label17: TLabel;
    DBText12: TDBText;
    UPXXBWFL: TUpdateSQL;
    XXZLSVN: TQuery;
    UpXXZLSVN: TUpdateSQL;
    DS3: TDataSource;
    XXZLSVNXieXing: TStringField;
    XXZLSVNSheHao: TStringField;
    XXZLSVNBWBH: TStringField;
    XXZLSVNCLBH: TStringField;
    XXZLSVNCLSL: TCurrencyField;
    XXZLSVNUSERID: TStringField;
    XXZLSVNUSERDATE: TDateTimeField;
    XXZLSVNYN: TStringField;
    XXZLSVNYWSM: TStringField;
    XXZLSVNZSYWJC: TStringField;
    XXZLSVNYWPM: TStringField;                                                  
    XXZLSVNDWBH: TStringField;
    XXZLSVNCSBH: TStringField;
    Top3Panel: TPanel;
    BDT6: TBitBtn;
    BDT5: TBitBtn;
    BDT4: TBitBtn;
    BDT3: TBitBtn;
    BDT2: TBitBtn;
    BDT1: TBitBtn;
    BD7: TBitBtn;
    BD6: TBitBtn;
    BD5: TBitBtn;
    BD4: TBitBtn;
    BD3: TBitBtn;
    BD2: TBitBtn;
    XXZLSVNFLBH: TStringField;
    XXZLSVNDFL: TStringField;
    XXZLSVNXFL: TStringField;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DT7: TBitBtn;
    VNBWFL: TQuery;
    VNBWFLXieXing: TStringField;
    VNBWFLBWBH: TStringField;
    VNBWFLFLBH: TStringField;
    VNBWFLUSERDATE: TDateTimeField;
    VNBWFLUSERID: TStringField;
    VNBWFLYN: TStringField;
    UpVNBWFL: TUpdateSQL;
    TS5: TTabSheet;
    Panel5: TPanel;
    Button2: TButton;
    Label7: TLabel;
    DBGrid4: TDBGridEh;
    Qsearch: TQuery;
    DS4: TDataSource;
    QsearchXieXing: TStringField;
    QsearchSheHao: TStringField;
    QsearchBWBH: TStringField;
    QsearchYWSM: TStringField;
    XXZLKFJC: TStringField;
    XXBWFLZWSM: TStringField;
    XXZLVNBOM: TStringField;
    XXZLVNFL: TStringField;
    XXBWFLYWPM: TStringField;
    XXBWFLZWPM: TStringField;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    XXZLSVNLYCC: TStringField;
    TS4: TTabSheet;
    DBGridEh1: TDBGridEh;
    VNSize: TQuery;
    DS5: TDataSource;
    UpSize: TUpdateSQL;
    XXZLCCGB: TStringField;
    VNSizeXieXing: TStringField;
    VNSizeSheHao: TStringField;
    VNSizeBWBH: TStringField;
    VNSizeXXCC: TStringField;
    VNSizeCLSL: TCurrencyField;
    VNSizeUSERID: TStringField;
    VNSizeUSERDate: TDateTimeField;
    VNSizeYN: TStringField;
    VNSizeCC: TStringField;
    PopupMenu2: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    XXBWFLCLBH: TStringField;
    XXBWFLBWLB: TStringField;
    Top1Panel: TPanel;
    BA2: TBitBtn;
    BA3: TBitBtn;
    BA4: TBitBtn;
    BA5: TBitBtn;
    BA6: TBitBtn;
    BA7: TBitBtn;
    BA1: TBitBtn;
    BAT1: TBitBtn;
    BAT2: TBitBtn;
    BAT3: TBitBtn;
    BAT4: TBitBtn;
    XXZLQBT: TStringField;
    XXZLUPD: TUpdateSQL;
    XXZLUserdate: TDateTimeField;
    XXZLUserID: TStringField;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Label10: TLabel;
    BDelRec: TQuery;
    Label18: TLabel;
    SeasonEdit: TEdit;
    GroupBox2: TGroupBox;
    CK1: TCheckBox;
    CK2: TCheckBox;
    Label21: TLabel;
    Edit6: TEdit;
    XXZLSVNXXZLS_CLBH: TStringField;
    Label11: TLabel;
    BuyNoEdit: TEdit;
    Label12: TLabel;
    DBText2: TDBText;
    PopupMenu3: TPopupMenu;
    N4: TMenuItem;
    DFLChk: TCheckBox;
    FLBHCK: TCheckBox;
    DBGridEh2: TDBGridEh;
    Splitter1: TSplitter;
    DBGridEh3: TDBGridEh;
    Splitter2: TSplitter;
    XXBWFLXH: TStringField;
    XXBWFLdwbh: TStringField;
    procedure BB7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure XXBWFLAfterOpen(DataSet: TDataSet);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure XXZLSVNAfterOpen(DataSet: TDataSet);
    procedure BD7Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BDT6Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DT7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure XXZLSVNAfterScroll(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure VNSizeAfterOpen(DataSet: TDataSet);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure VNSizeNewRecord(DataSet: TDataSet);
    procedure BA4Click(Sender: TObject);
    procedure BA6Click(Sender: TObject);
    procedure BA5Click(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure N4Click(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumnEh);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FLBHCKClick(Sender: TObject);
  private
    ClickColumnIndex:integer;
    { Private declarations }
    procedure ReadIni();
  public
    BOM_N31_KFCQ:String;
    { Public declarations }
  end;

var
  BOMVN: TBOMVN;

implementation

uses BOMVN_BWFL1, main1, BOMVN_BW1, BOMVN_CL1, BOMVN_ZS1, BOMVN_FL1,
     MaterialNew1, PARTNEW1, BOMVN_copy1, untClipboard, FunUnit;

{$R *.dfm}

procedure TBOMVN.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TBOMVN.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin

  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      BOM_N31_KFCQ:=MyIni.ReadString('ERP','BOM_N31_KFCQ','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TBOMVN.Button1Click(Sender: TObject);
begin
  with XXZL do
  begin
    active:=false;
    sql.clear;
    sql.add('Select * from ( ');
    sql.add('Select XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.CCGB,XXZLSVN.VNBOM,');
    sql.add('       (select top 1 XXBWFL.XieXing  from XXZLS ');    
    sql.add('        left join XXBWFL on XXBWFL.BWBH=XXZLS.BWBH and XXBWFL.XieXing=XXZLS.XieXing') ;
    sql.add('        where XXZLS.XieXing=XXZL.XieXing and XXZLS.SheHao=XXZl.SheHao order by XXBWFL.XieXing ) as VNFL');
    sql.add('       ,XXZL.XieMing,XXZL.YSSM,KFZL.KFJC,XXZL.BZCC,XXZLSVNS2.QBT,XXZLSVNS2.Userdate,XXZLSVNS2.UserID  ');
    sql.add('from XXZL ');
    sql.add('left join KFZL on KFZL.KFDH=XXZL.KHDH ');
    sql.add('left join (select distinct XieXing,SheHao,XieXing as VNBOM from XXZLSVN) XXZLSVN');
    sql.add('           on XXZLSVN.XieXing=XXZL.XieXing and XXZLSVN.SheHao=XXZL.SheHao ');
    sql.add('left join KFXXZL on KFXXZL.SheHao=XXZL.SheHao and  KFXXZL.XieXing=XXZL.XieXing ');
    //201403006 增加前包頭資訊
    sql.Add('left join XXZLSVNS2 on XXZLSVNS2.XieXing=XXZL.XieXing and XXZLSVNS2.SheHao=XXZL.SheHao ');
    sql.add('where XXZL.XieXing like '''+edit1.Text+'%''');
    sql.add('and XXZL.SheHao like '''+edit2.Text+'%''');
    sql.add('and XXZL.ARTICLE like '''+edit3.Text+'%''');
    sql.add('and KFZL.KFJC like ''%'+edit4.Text+'%''');
    sql.add('and XXZL.XieMing like '''+edit5.Text+'%''');
    if BOM_N31_KFCQ<>'' then
    sql.add(' and XXZL.KFCQ in ('''+BOM_N31_KFCQ+''' )');
    if SeasonEdit.Text<>'' then
        sql.add('  and KFXXZL.JiJie like ''%'+SeasonEdit.Text+'%'' ');
    if BuyNoEdit.Text<>'' then
        sql.add('and exists (select XieXing,SheHao from DDZl where DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' group by XieXing,Shehao) ' );
    if CK1.Checked then
    begin
      sql.add('and XXZL.YN=''1'' ');
    end;
    if CK2.Checked then
    begin
      SQL.Add('and  exists (  ');
      SQL.Add('select * from (');
      SQL.Add('select XXZL.XieXing,XXZL.SheHao,XXZL.CLBH from (');
      SQL.Add('select XieXing,Shehao,CLBH from XXZLS where  CLBH like ''M%'' and XXZLS.BWLB = ''1''  ');
      SQL.Add('Group by XieXing,Shehao,CLBH ');
      SQL.Add(') XXZL ');
      SQL.Add('left join (');
      SQL.Add('select  XieXing,Shehao,CLBH  from XXZLSVN where   CLBH like ''M%'' Group by XieXing,Shehao,CLBH ');
      SQL.Add(') XXZLSVN on XXZLSVN.XieXing=XXZL.XieXing and XXZLSVN.SheHao=XXZL.SheHao  and XXZLSVN.CLBH=XXZL.CLBH   ');
      SQL.Add('where XXZLSVN.CLBH is null  ');
      SQL.Add(') SVN_M where SVN_M.XieXing=XXZL.XieXing and SVN_M.SheHao=XXZL.SheHao )');
    end;
    sql.add(') XXZL where 1=1 ');
    if DFLChk.Checked=true then
    sql.add(' and VNFL is null ');
    sql.add('order by XXZL.KFJC,XXZL.XieXing,XXZL.Shehao ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  //
  XXBWFL.Open;   // 顯示 bom  只新增或修改 xxbwfl
  XXZLSVN.Open;  // 顯示 vnbom  能新增或修改 xxzlsvn  xxbwfl
  VNBWFL.Open;  //  vnbom 用來新增或修改 xxbwfl
  BA4.Enabled:=true;
  BBT6.Enabled:=true;
  panel2.Visible:=false;
end;

procedure TBOMVN.BB1Click(Sender: TObject);
begin
  PC1.ActivePage:=TS1;
  panel2.Visible:=true;
  edit1.SetFocus;
end;

procedure TBOMVN.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if BD5.Enabled then
  begin
    showmessage('Pls save data first.');
    PC1.ActivePage:=TS3;
    Top2Panel.Visible:=false;
    Top3Panel.Visible:=true;
    action:=canone;
  end else
  begin
      if BB5.Enabled then
      begin
        showmessage('Pls save data first.');
        PC1.ActivePage:=TS2;
        Top2Panel.Visible:=true;
        Top3Panel.Visible:=false;
        action:=canone;
      end else
      begin
        action:=cafree;
      end
  end;
end;

procedure TBOMVN.XXBWFLAfterOpen(DataSet: TDataSet);
begin
  BB4.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  BBT4.Enabled:=true;
  BBT5.Enabled:=true;
  BBT6.Enabled:=true;

  with XXBWFL do
  begin
    requestlive:=false;
    cachedupdates:=false;
    BB5.Enabled:=false;
    BB6.Enabled:=false;
  end;
end;

procedure TBOMVN.BB4Click(Sender: TObject);
begin
  XXBWFL.RequestLive:=true;
  XXBWFL.CachedUpdates:=true;
  XXBWFL.Edit;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  dbgrid2.columns[3].ButtonStyle:=cbsEllipsis;
  dbgrid2.columns[4].ButtonStyle:=cbsEllipsis;
  dbgrid2.columns[5].ButtonStyle:=cbsEllipsis;

end;

procedure TBOMVN.BB6Click(Sender: TObject);
begin
  XXBWFL.active:=false;
  XXBWFL.requestlive:=false;
  XXBWFL.cachedupdates:=false;
  XXBWFL.active:=true;

  BB5.Enabled:=false;
  BB6.Enabled:=false;
  end;

  procedure TBOMVN.BB5Click(Sender: TObject);
  var i:integer;
  begin
  try
  XXBWFL.First;
  for i:=1 to XXBWFL.RecordCount do
    begin
      if XXBWFL.updatestatus=usmodified then
        begin
          if not XXBWFL.FieldByName('oldFLBH').isnull     then
            begin
              UPXXBWFL.apply(ukmodify);
            end
            else
              begin
                if  XXBWFL.FieldByName('oldFLBH').isnull then
                begin
                  XXBWFL.edit;
                  XXBWFL.fieldbyname('XieXing').Value:=XXZL.fieldbyname('XieXing').value;
                  XXBWFL.fieldbyname('BWBH').Value:=XXBWFL.fieldbyname('XXBW').Value ;
                  XXBWFL.fieldbyname('USERID').Value:=main.edit1.text;
                  UPXXBWFL.apply(ukinsert);
                end;
              end;
        end;
      XXBWFL.next;
    end;

  XXBWFL.active:=false;
  XXBWFL.requestlive:=false;
  XXBWFL.cachedupdates:=false;
  XXBWFL.active:=true;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  dbgrid2.columns[3].ButtonStyle:=cbsnone;
  dbgrid2.columns[4].ButtonStyle:=cbsnone;
  dbgrid2.columns[5].ButtonStyle:=cbsnone;
  showmessage('Succeed');
  except
   showmessage('have wrong');
  end;
end;

procedure TBOMVN.DBGrid2EditButtonClick(Sender: TObject);
begin
  BOMVN_BWFL:=TBOMVN_BWFL.create(self);
  BOMVN_BWFL.show;
end;

procedure TBOMVN.BD2Click(Sender: TObject);
begin
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  DT7.Enabled:=true;
  XXZLSVN.RequestLive:=true;
  XXZLSVN.CachedUpdates:=true;
  XXZLSVN.Insert;
  dbgrid3.columns[0].ButtonStyle:=cbsEllipsis;
  dbgrid3.columns[2].ButtonStyle:=cbsEllipsis;
  dbgrid3.columns[6].ButtonStyle:=cbsEllipsis;
  dbgrid3.columns[8].ButtonStyle:=cbsEllipsis;
end;

procedure TBOMVN.BD4Click(Sender: TObject);
begin
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  DT7.Enabled:=true;
  XXZLSVN.RequestLive:=true;
  XXZLSVN.CachedUpdates:=true;
  XXZLSVN.edit;
  dbgrid3.columns[0].ButtonStyle:=cbsEllipsis;
  dbgrid3.columns[2].ButtonStyle:=cbsEllipsis;
  dbgrid3.columns[6].ButtonStyle:=cbsEllipsis;
  dbgrid3.columns[8].ButtonStyle:=cbsEllipsis;
end;

procedure TBOMVN.BD3Click(Sender: TObject);
begin
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  DT7.Enabled:=true;
  XXZLSVN.RequestLive:=true;
  XXZLSVN.CachedUpdates:=true;
  XXZLSVN.edit;
  XXZLSVN.fieldbyname('YN').Value:='0';
end;

procedure TBOMVN.XXZLSVNAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  BDT1.Enabled:=true;
  BDT2.Enabled:=true;
  BDT3.Enabled:=true;
  BDT4.Enabled:=true;
  BDT5.Enabled:=true;
  BDT6.Enabled:=true;
  with XXZLSVN do
  begin
    requestlive:=false;
    cachedupdates:=false;
    BD5.Enabled:=false;
    BD6.Enabled:=false;
  end;
end;

procedure TBOMVN.BD7Click(Sender: TObject);
begin
close;
end;

procedure TBOMVN.BD5Click(Sender: TObject);
var i:integer;
begin
try
    XXZLSVN.first;
    for i:=1 to XXZLSVN.RecordCount do
    begin
        case XXZLSVN.updatestatus of
        usinserted:
          begin
              if XXZLSVN.fieldbyname('BWBH').isnull then
              begin
                  XXZLSVN.delete;
              end else
              begin
                if  XXZLSVN.FieldByName('CLSL').IsNull then
                begin
                  showmessage('指令用量不能為空白');
                  abort;
                end;
                XXZLSVN.edit;
                XXZLSVN.FieldByName('XieXing').Value:=XXZL.fieldbyname('XieXing').value;
                XXZLSVN.FieldByName('SheHao').Value:=XXZL.fieldbyname('SheHao').value;
                XXZLSVN.FieldByName('userID').Value:=main.edit1.text;
                XXZLSVN.FieldByName('userdate').Value:=date;
                XXZLSVN.FieldByName('YN').Value:='1';
                UPXXZLSVN.apply(ukinsert);
                with VNBWFL do
                begin
                  if not locate('BWBH',XXZLSVN.fieldbyname('BWBH').value,[]) then
                  begin
                     VNBWFL.insert ;
                     VNBWFL.FieldByName('XieXing').Value:=XXZLSVN.FieldByName('XieXing').Value;
                     VNBWFL.FieldByName('BWBH').Value:=XXZLSVN.FieldByName('BWBH').Value;
                     VNBWFL.FieldByName('FLBH').Value:=XXZLSVN.FieldByName('FLBH').Value;
                     VNBWFL.FieldByName('USERDATE').Value:=date;
                     VNBWFL.FieldByName('USERID').Value:=main.Edit1.Text;
                     VNBWFL.FieldByName('YN').Value:='1';
                     UpVNBWFL.Apply(ukinsert);
                  end else
                  begin
                     VNBWFL.edit ;
                     VNBWFL.FieldByName('XieXing').Value:=XXZLSVN.FieldByName('XieXing').Value;
                     VNBWFL.FieldByName('BWBH').Value:=XXZLSVN.FieldByName('BWBH').Value;
                     VNBWFL.FieldByName('FLBH').Value:=XXZLSVN.FieldByName('FLBH').Value;
                     VNBWFL.FieldByName('USERDATE').Value:=date;
                     VNBWFL.FieldByName('USERID').Value:=main.Edit1.Text;
                     VNBWFL.FieldByName('YN').Value:='1';
                     UpVNBWFL.Apply(ukmodify);
                  end;
                end;
              end;
          end;
        usmodified:
          begin
            //if XXZLSVN.FieldByName('userID').Value=main.Edit1.Text then
            //begin
              if XXZLSVN.fieldbyname('YN').value='0'then
              begin
                with BDelRec do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('insert into BDelRec ');
                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.add('values ('+''''+'XXZLSVN'+''''+','+''''+XXZLSVN.fieldbyname('XIEXING').Value+'***'+XXZLSVN.fieldbyname('SHEHAO').Value+'''');
                  sql.add(','+''''+XXZLSVN.fieldbyname('BWBH').Value+'***'+XXZLSVN.fieldbyname('CLBH').Value+''''+','+''''+XXZLSVN.fieldbyname('USERID').Value+''''+',');
                  sql.add(''''+main.Edit1.Text+''''+',getdate())');
                  execsql;
                  active:=false;
                end;
                  upXXZLSVN.apply(ukdelete);
              end else
              begin
                if  XXZLSVN.FieldByName('CLSL').IsNull then
                begin
                  showmessage('指令用量不能為空白');
                  abort;
                end;
                XXZLSVN.edit;
                XXZLSVN.FieldByName('userID').Value:=main.edit1.text;
                XXZLSVN.FieldByName('userdate').Value:=date;
                with BDelRec do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('insert into BDelRec ');
                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.add('values ('+''''+'XXZLSVNmod'+''''+','+''''+XXZLSVN.fieldbyname('XIEXING').Value+'***'+XXZLSVN.fieldbyname('SHEHAO').Value+'''');
                  sql.add(','+''''+XXZLSVN.fieldbyname('BWBH').Value+'***'+XXZLSVN.fieldbyname('CLBH').OldValue+'***'+XXZLSVN.fieldbyname('CLBH').Value+''''+','+''''+XXZLSVN.fieldbyname('USERID').Value+''''+',');
                  sql.add(''''+main.Edit1.Text+''''+',getdate())');
                  execsql;
                  active:=false;
                end;
                UPXXZLSVN.apply(ukmodify);
                with VNBWFL do
                begin
                  if not locate('BWBH',XXZLSVN.fieldbyname('BWBH').value,[]) then
                  begin
                    VNBWFL.insert ;
                    VNBWFL.FieldByName('XieXing').Value:=XXZLSVN.FieldByName('XieXing').Value;
                    VNBWFL.FieldByName('BWBH').Value:=XXZLSVN.FieldByName('BWBH').Value;
                    VNBWFL.FieldByName('FLBH').Value:=XXZLSVN.FieldByName('FLBH').Value;
                    VNBWFL.FieldByName('USERDATE').Value:=date;
                    VNBWFL.FieldByName('USERID').Value:=main.Edit1.Text;
                    VNBWFL.FieldByName('YN').Value:='1';
                    UpVNBWFL.Apply(ukinsert);
                  end else
                  begin
                    VNBWFL.edit ;
                    VNBWFL.FieldByName('XieXing').Value:=XXZLSVN.FieldByName('XieXing').Value;
                    VNBWFL.FieldByName('BWBH').Value:=XXZLSVN.FieldByName('BWBH').Value;
                    VNBWFL.FieldByName('FLBH').Value:=XXZLSVN.FieldByName('FLBH').Value;
                    VNBWFL.FieldByName('USERDATE').Value:=date;
                    VNBWFL.FieldByName('USERID').Value:=main.Edit1.Text;
                    VNBWFL.FieldByName('YN').Value:='1';
                    UpVNBWFL.Apply(ukmodify);
                  end;
                end;
              end;
            {
            end else
            begin
              showmessage(' It is not yours, can not modify.');
            end;
            }
          end;
        end;
        XXZLSVN.next;
    end;
    XXZLSVN.active:=false;
    XXZLSVN.cachedupdates:=false;
    XXZLSVN.requestlive:=false;
    XXZLSVN.active:=true;
    bD5.enabled:=false;
    bD6.enabled:=false;
    DT7.enabled:=false;
    dbgrid3.columns[0].ButtonStyle:=cbsNone;
    dbgrid3.columns[2].ButtonStyle:=cbsNone;
    dbgrid3.columns[6].ButtonStyle:=cbsNone;
    dbgrid3.columns[8].ButtonStyle:=cbsNone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TBOMVN.DBGrid3EditButtonClick(Sender: TObject);
begin
  if dbgrid3.selectedfield.fieldname='BWBH' then
  begin
    BOMVN_BW:=TBOMVN_BW.create(self);
    BOMVN_BW.show;
  end;
  if dbgrid3.selectedfield.fieldname='CLBH' then
  begin
    BOMVN_CL:=TBOMVN_CL.create(self);
    BOMVN_CL.show;
  end;
  if dbgrid3.selectedfield.fieldname='CSBH' then
  begin
    BOMVN_ZS:=TBOMVN_ZS.create(self);
    BOMVN_ZS.show;
  end;
  if dbgrid3.selectedfield.fieldname='DFL' then
  begin
    BOMVN_FL:=TBOMVN_FL.create(self);
    BOMVN_FL.show;
  end;
end;

procedure TBOMVN.BD6Click(Sender: TObject);
begin  
  XXZLSVN.active:=false;
  XXZLSVN.cachedupdates:=false;
  XXZLSVN.requestlive:=false;
  XXZLSVN.active:=true;
  bD5.enabled:=false;
  bD6.enabled:=false;
  DT7.enabled:=false;
  dbgrid3.columns[0].ButtonStyle:=cbsNone;
  dbgrid3.columns[2].ButtonStyle:=cbsNone;
  dbgrid3.columns[6].ButtonStyle:=cbsNone;
  dbgrid3.columns[8].ButtonStyle:=cbsNone;
end;

procedure TBOMVN.PC1Change(Sender: TObject);
begin
   //切換頁面編輯新增取消
   if BA6.Enabled=true then BA6.Click;
   if BB6.Enabled=true then BB6.Click;
   if BD6.Enabled=true then BD6.Click;
   //
   if PC1.ActivePage=TS2 then
   begin
     Top1Panel.Visible:=false;
     Top2Panel.visible:=true;
     Top3Panel.Visible:=false;
   end else  if PC1.ActivePage=TS3 then
   begin
     Top1Panel.Visible:=false;
     Top3Panel.visible:=true;
     Top2Panel.Visible:=false;
   end else
   begin
     Top1Panel.Visible:=true;
     Top2Panel.visible:=false;
     Top3Panel.Visible:=false;
   end;
end;

procedure TBOMVN.FormCreate(Sender: TObject);
begin
  PC1.ActivePage:=TS1;
end;

procedure TBOMVN.BDT6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if XXZLSVN.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   XXZLSVN.fieldCount-1   do
        begin
          eclApp.Cells(1,i+1):=XXZLSVN.fields[i].FieldName;
        end;
        XXZLSVN.First;
        j:=2;
        while   not   XXZLSVN.Eof   do
        begin
          eclApp.Rows[j].NumberFormatLocal:='@';
          for   i:=0   to   XXZLSVN.FieldCount-1   do
          begin
            eclApp.Cells(j,i+1):=XXZLSVN.Fields[i].Value;
            //eclApp.Cells(j,i+1).NumberFormatLocal:='@';
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
          //eclApp.Rows[j].NumberFormatLocal:='@';
          XXZLSVN.Next;
          inc(j);
        end;
      eclapp.columns.autofit;
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
  end;
end;

procedure TBOMVN.bbt6Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if XXBWFL.Active then
  begin
    if XXBWFL.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
    begin
      showmessage('No record.');
      abort;
    end;

try
  eclApp:=CreateOleObject('Excel.Application');
  WorkBook:=CreateOleObject('Excel.Sheet');
except
  Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
  Exit;
end;

try
  WorkBook:=eclApp.workbooks.Add; 
  eclApp.Cells(1,1):='NO';
  for   i:=1   to   XXBWFL.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=XXBWFL.fields[i-1].FieldName;
    end;
  XXBWFL.First;
  j:=2;
  while   not  XXBWFL.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   XXBWFL.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=XXBWFL.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      XXBWFL.Next;
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

procedure TBOMVN.BitBtn2Click(Sender: TObject);
begin
  MaterialNew:=TMaterialNew.create(self);
  MaterialNew.show;
end;

procedure TBOMVN.BitBtn3Click(Sender: TObject);
begin
  PARTNEW:=TPARTNEW.create(self);
  PARTNEW.show;
end;

procedure TBOMVN.DT7Click(Sender: TObject);
begin
  if XXZLSVN.RequestLive then
  begin
    BOMVN_copy:=TBOMVN_copy.create(self);
    BOMVN_copy.show;
  end;
end;

procedure TBOMVN.Button2Click(Sender: TObject);
begin
  with QSearch do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select XXZLS.XieXing,XXZLS.SheHao,XXZLS.BWBH,BWZL.YWSM  ');
    sql.add('from XXZLS  ');
    sql.add('left join BWZL on BWZL.BWDH=XXZLS.BWBH  ');
    sql.Add('where exists(select DDZL.DDBH from DDZL ');
    sql.add('             where DDZL.XieXing=XXZLS.XieXing');
    sql.add('               and DDZL.SheHao=XXZLS.SheHao');
    sql.add('               and DDZL.Shipdate>'+''''+formatdatetime('yyyy/mm/dd',date)+''''+')');
    sql.add('and exists(select XXBWFL.XieXing from XXBWFL where XXBWFL.XieXing=XXZLS.XieXing)'); 

    sql.add('and not exists(select XXBWFL.FLBH from XXBWFL ');
    sql.add('               where XXBWFL.XieXing=XXZLS.XieXing and XXBWFL.BWBH=XXZLS.BWBH)');
    sql.add('order by XXZLS.XieXing,XXZLS.SheHao,XXZLS.BWBH');
    active:=true;
  end;

end;

procedure TBOMVN.FormDestroy(Sender: TObject);
begin
BOMVN:=nil;
end;

procedure TBOMVN.Excel1Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
  if XXZL.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   XXZL.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=XXZL.fields[i].FieldName;
          end;

        XXZL.First;
        j:=2;
        while   not   XXZL.Eof   do
          begin
            for   i:=0   to   XXZL.FieldCount-1   do
            begin
              eclApp.Cells(j,i+1):=XXZL.Fields[i].Value;
              eclApp.Cells.Cells.item[j,i+1].font.size:='8';
            end;
          XXZL.Next;
          inc(j);
          end;
     eclapp.columns.autofit;
   { if SaveDialog1.execute then
      begin
        a:=SaveDialog1.FileName;
      end
      else
        begin
          a:='Unit List';
        end;
      WorkBook.SaveAS(a);
    //  WorkBook.close;    }
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TBOMVN.DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if XXZl.FieldByName('VNBOM').IsNull or XXZl.FieldByName('VNFL').IsNull then
  begin
    dbgrid1.canvas.font.color:=clred;
  end;
end;

procedure TBOMVN.DBGrid2GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin

  if  XXBWFL.fieldbyname('FLBH').IsNull then
  begin
    dbgrid2.canvas.font.color:=clred;
  end;

  if  XXBWFL.fieldbyname('FLBH').value<>XXBWFL.fieldbyname('oldFLBH').value then
  begin
    dbgrid2.canvas.font.color:=clLime;
  end;
end;

procedure TBOMVN.DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin

  if XXZLSVN.fieldbyname('YN').Value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
  end;

end;

procedure TBOMVN.XXZLSVNAfterScroll(DataSet: TDataSet);
var a:string;
begin

  if XXZLSVN.recordcount<=0  then
  begin
    exit;
  end;

  if XXZl.fieldbyname('CCGB').value='K' then
    a:='XXZLS3.UK_Size';
  if XXZl.fieldbyname('CCGB').value='J' then
    a:='XXZLS3.JPN_Size';
  if XXZl.fieldbyname('CCGB').value='E' then
    a:='XXZLS3.EUR_Size';
  if XXZl.fieldbyname('CCGB').value='F' then
    a:='XXZLS3.FRN_Size';
  if XXZl.fieldbyname('CCGB').value='M' then
    a:='XXZLS3.MX_Size';
  if XXZl.fieldbyname('CCGB').value='U' then
    a:='XXZLS3.US_Size';
  if XXZl.fieldbyname('CCGB').value='O' then
    a:='XXZLS3.OTH_Size';

  VNSize.active:=false;
  if XXZLSVN.fieldbyname('LYCC').AsString='Y' then
  begin
    with VNSize do
    begin
        //active:=false;
        sql.clear;
        sql.add('select XXZLSVNS.*,'+a+' as CC ');
        sql.add('from XXZLS3 ');
        sql.add('left join XXZLSVNS on XXZLSVNS.XieXing=XXZLS3.XieXing and XXZLSVNS.XXCC='+a);
        sql.add('       and XXZLSVNS.SheHao=:SheHao');
        sql.add('       and XXZLSVNS.BWBH=:BWBH');
        sql.add('where XXZLS3.XieXing=:XieXing');
        sql.add('order by '+a);
        active:=true;
     end;
  end;

end;

procedure TBOMVN.N1Click(Sender: TObject);
begin
  N2.Enabled:=true;
  N3.Enabled:=true;
  VNSize.RequestLive:=true;
  VNSize.CachedUpdates:=true;
end;

procedure TBOMVN.VNSizeAfterOpen(DataSet: TDataSet);
begin
  if VNSize.recordcount>0 then
  begin
    N1.Enabled:=true;
    N2.Enabled:=false;
    N3.Enabled:=false;
  end else
  begin
    N1.Enabled:=false;
    N2.Enabled:=false;
    N3.Enabled:=false;
  end;
  VNSize.requestlive:=false;
  VNSize.CachedUpdates:=false;
end;

procedure TBOMVN.N2Click(Sender: TObject);
begin
  with VNSize do
  begin
    first;
    while not eof do
    begin
        if fieldbyname('CLSL').IsNull then
        begin
            showmessage('Pls key usage first.');
            abort;
        end;
        if updatestatus=usmodified then
        begin
            if fieldbyname('XXCC').IsNull then
            begin
              edit;
              fieldbyname('XieXing').Value:=XXZLSVN.fieldbyname('XieXing').Value;
              fieldbyname('SheHao').Value:=XXZLSVN.fieldbyname('SheHao').Value;
              fieldbyname('BWBH').Value:=XXZLSVN.fieldbyname('BWBH').Value;
              fieldbyname('XXCC').Value:=fieldbyname('CC').Value;
              fieldbyname('USERDATE').Value:=date;
              fieldbyname('USERID').Value:=main.Edit1.text;
              fieldbyname('YN').Value:='1';
              Upsize.Apply(ukinsert);
            end else
            begin
              edit;
              fieldbyname('USERDATE').Value:=date;
              fieldbyname('USERID').Value:=main.Edit1.text;
              fieldbyname('YN').Value:='1';
              Upsize.Apply(ukmodify);
            end;
        end;
        Next;
    end;
    requestlive:=false;
    cachedupdates:=false;
    N2.Enabled:=false;
    N3.Enabled:=false;
  end;
end;

procedure TBOMVN.N3Click(Sender: TObject);
begin
  VNSize.Active:=false;
  VNSize.requestlive:=false;
  VNSize.cachedupdates:=false;
  VNSize.Active:=true;
  N2.Enabled:=false;
  N3.Enabled:=false;
end;

procedure TBOMVN.VNSizeNewRecord(DataSet: TDataSet);
begin
  abort;
end;

procedure TBOMVN.BA4Click(Sender: TObject);
begin

  XXZL.RequestLive:=true;
  XXZL.CachedUpdates:=true;
  XXZL.Edit;
  BA5.Enabled:=true;
  BA6.Enabled:=true;

end;

procedure TBOMVN.BA6Click(Sender: TObject);
begin
  //取消編輯
  XXZL.active:=false;
  XXZL.requestlive:=false;
  XXZL.cachedupdates:=false;
  XXZL.active:=true;
  BA5.Enabled:=false;
  BA6.Enabled:=false;
  //
end;

procedure TBOMVN.BA5Click(Sender: TObject);
var i:integer;
begin
  try
    //關閉明細關聯 增加更新速度
    XXBWFL.Close;   // 顯示 bom  只新增或修改 xxbwfl
    XXZLSVN.Close;  // 顯示 vnbom  能新增或修改 xxzlsvn  xxbwfl
    VNBWFL.Close;  //  vnbom 用來新增或修改 xxbwfl
    //
    XXZL.First;
    for i:=1 to XXZL.RecordCount do
    begin
      if XXZL.updatestatus=usmodified then
      begin
       //新增
       XXZL.Edit;
       XXZL.FieldByName('UserID').AsString:=main.Edit1.Text;
       XXZL.FieldByName('UserDate').Value:=now();
       if XXZL.FieldByName('QBT').OldValue = Null then
       begin
         XXZLUPD.apply(ukinsert)
       end else
       begin
         XXZLUPD.apply(ukmodify);
       end;
      //
      end;
      XXZL.next;
    end;

    XXZL.active:=false;
    XXZL.requestlive:=false;
    XXZL.cachedupdates:=false;
    XXZL.active:=true;
    BA5.Enabled:=false;
    BA6.Enabled:=false;
    //開啟明細關聯
    XXBWFL.Open;   // 顯示 bom  只新增或修改 xxbwfl
    XXZLSVN.Open;  // 顯示 vnbom  能新增或修改 xxzlsvn  xxbwfl
    VNBWFL.Open;  //  vnbom 用來新增或修改 xxbwfl
    //
    showmessage('Succeed');
  except
    on E:Exception do
      showmessage('have wrong:'+E.Message);
  end;

end;

procedure TBOMVN.DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if ((Copy(XXZLSVN.FieldByName('CLBH').AsString,1,1)='M') and (XXZLSVN.FieldByName('XXZLS_CLBH').AsString='') ) then
  begin
   if (DataCol=2) or (DataCol=3) then
   begin
     DBGrid3.canvas.Brush.Color:=clScrollBar;
     DBGrid3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;
  end;
end;

procedure TBOMVN.N4Click(Sender: TObject);
var
  CbBuf: PChar;
  BufSize: Integer;
  Handle: THandle;
  Text:WideString;
  rowList,colList:TStringlist;
  i,j:integer;
begin
 try
   if XXZLSVN.RequestLive=false then exit;
   Text:='';
   if Clipboard.HasFormat(CF_TEXT) then
   begin
    Handle := ClipBoard.GetAsHandle(CF_TEXT);
    BufSize := GlobalSize(Handle);
    GetMem(CbBuf, BufSize);
    Text:=Clipboard.AsUnicodeText;
    //
    rowList:=TStringlist.Create;
    rowList.Text:=Text;
    //ProdDetail.First;
    for i:=0 to rowList.Count-1 do
    begin
      colList:=funcObj.SplitString(rowList.Strings[i],'	');
      XXZLSVN.Append;
      for j:=0 to colList.Count-1 do
      begin
        if trim(colList.Strings[j])<>'' then
        begin
          XXZLSVN.Fields[j+ClickColumnIndex].Value:=colList.Strings[j];
        end;
        if j+ClickColumnIndex>=XXZLSVN.FieldCount-1 then break;
      end;
      colList.Free;
      XXZLSVN.Post;
    end;
    rowList.Free;
   end;
 except
   on E:Exception do
    Showmessage(E.Message);
 end;

end;

procedure TBOMVN.DBGrid3CellClick(Column: TColumnEh);
begin
  ClickColumnIndex:=Column.Index;
end;

procedure TBOMVN.DBGrid1DblClick(Sender: TObject);
begin
  PC1.ActivePageIndex:=1;

   //切換頁面編輯新增取消
   if BA6.Enabled=true then BA6.Click;
   if BB6.Enabled=true then BB6.Click;
   if BD6.Enabled=true then BD6.Click;
   //
   if PC1.ActivePage=TS2 then
   begin
     Top1Panel.Visible:=false;
     Top2Panel.visible:=true;
     Top3Panel.Visible:=false;
   end else  if PC1.ActivePage=TS3 then
   begin
     Top1Panel.Visible:=false;
     Top3Panel.visible:=true;
     Top2Panel.Visible:=false;
   end else
   begin
     Top1Panel.Visible:=true;
     Top2Panel.visible:=false;
     Top3Panel.Visible:=false;
   end;  
end;

procedure TBOMVN.FLBHCKClick(Sender: TObject);
begin
  if FLBHCK.Checked=true then
  begin
    with XXBWFL do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select distinct  XXZLS.XH,XXZLS.BWBH as XXBW,XXBWFL.XieXing,XXBWFL.BWBH,');
      SQL.Add('          XXBWFL.FLBH,XXZLS.BWLB,XXBWFL.USERID,XXBWFL.USERDATE,XXBWFL.YN,');
      SQL.Add('         XXBWFL.FLBH as oldFLBH,XXBWFLS.DFL,XXBWFLS.XFL,BWZL.YWSM,');
      SQL.Add('          BWZL.ZWSM,XXZLS.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH ');
      SQL.Add('from XXZLS');
      SQL.Add('left join XXBWFL on XXBWFL.BWBH=XXZLS.BWBH and XXBWFL.XieXing=XXZLS.XieXing ');
      SQL.Add('left join XXBWFLS on XXBWFL.FLBH=XXBWFLS.FLBH');
      SQL.Add('left join BWZL on BWZL.BWDH=XXZLS.BWBH');
      SQL.Add('left join CLZL on CLZL.CLDH=XXZLS.CLBH');
      SQL.Add('where XXZLS.XieXing=:XieXing');
      SQL.Add('        and XXZLS.SheHao=:SheHao');
      if DFLChk.Checked=true then
      sql.add('        and XXBWFL.FLBH is null  ');
      SQL.Add('order by XXZLS.XH');
      Active:=true;
    end;
  end else
  begin
    with XXBWFL do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select distinct  XXZLS.XH,XXZLS.BWBH as XXBW,XXBWFL.XieXing,XXBWFL.BWBH,');
      SQL.Add('          XXBWFL.FLBH,XXZLS.BWLB,XXBWFL.USERID,XXBWFL.USERDATE,XXBWFL.YN,');
      SQL.Add('         XXBWFL.FLBH as oldFLBH,XXBWFLS.DFL,XXBWFLS.XFL,BWZL.YWSM,');
      SQL.Add('          BWZL.ZWSM,XXZLS.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH');
      SQL.Add('from XXZLS');
      SQL.Add('left join XXBWFL on XXBWFL.BWBH=XXZLS.BWBH and XXBWFL.XieXing=XXZLS.XieXing ');
      SQL.Add('left join XXBWFLS on XXBWFL.FLBH=XXBWFLS.FLBH');
      SQL.Add('left join BWZL on BWZL.BWDH=XXZLS.BWBH');
      SQL.Add('left join CLZL on CLZL.CLDH=XXZLS.CLBH');
      SQL.Add('where XXZLS.XieXing=:XieXing');
      SQL.Add('        and XXZLS.SheHao=:SheHao');
      SQL.Add('order by  XXZLS.XH');
      Active:=true;
    end;
  end;
end;

end.
