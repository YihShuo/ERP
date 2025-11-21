unit MaterialRSL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, DB, DBTables, Buttons, Grids, DBGrids,
  ExtCtrls,comobj, Menus, GridsEh, DBGridEh;

type
  TMaterialRSL = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGridEh;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    CLDHEdit: TEdit;
    YWPM1Edit: TEdit;
    Button1: TButton;
    Panel1: TPanel;
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
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    CBX2: TDBComboBox;
    Label6: TLabel;
    YWPM2Edit: TEdit;
    DBMemo2: TDBMemo;
    DBEdit2: TDBEdit;
    CB1: TComboBox;
    Label7: TLabel;
    Query1: TQuery;
    Query1CLDH: TStringField;
    Query1CLLB: TStringField;
    Query1ZWPM: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1DCYN: TStringField;
    Query1PDYN: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Label9: TLabel;
    Query1ID: TFloatField;
    Query1ZSDH: TStringField;
    Query1CSBH: TStringField;
    Query1zsywjc: TStringField;
    BrandCombo: TComboBox;
    Query1CLZMLB: TStringField;
    Label14: TLabel;
    ZMLBCombo: TComboBox;
    Query1GSBH: TStringField;
    Query1CreateID: TStringField;
    Query1CreateDate: TDateTimeField;
    Query1DCCFM: TStringField;
    Query1PDCFM: TStringField;
    RB1: TRadioButton;
    RB2: TRadioButton;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    BuyNoEdit: TEdit;
    Label12: TLabel;
    DDBHEdit: TEdit;
    Label11: TLabel;
    ArticleEdit: TEdit;
    GroupBox2: TGroupBox;
    Label16: TLabel;
    JiJieEdit1: TEdit;
    Label13: TLabel;
    JiJieEdit2: TEdit;
    Label15: TLabel;
    KFJDEdit: TEdit;
    Label10: TLabel;
    SREdit: TEdit;
    CBNew: TCheckBox;
    PopupMenu1: TPopupMenu;
    mnu1: TMenuItem;
    mnu2: TMenuItem;
    mnu5: TMenuItem;
    Label17: TLabel;
    SupplierEdit: TEdit;
    Query1Memo: TStringField;
    mnu3: TMenuItem;
    Label18: TLabel;
    bbt7: TBitBtn;
    Query1Gender: TStringField;
    GenderCombo: TComboBox;
    N1: TMenuItem;
    mnu4: TMenuItem;
    mnu7: TMenuItem;
    mnu6: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB7Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure CLDHEditKeyPress(Sender: TObject; var Key: Char);
    procedure YWPM1EditKeyPress(Sender: TObject; var Key: Char);
    procedure YWPM2EditKeyPress(Sender: TObject; var Key: Char);
    procedure BB5Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure SetClick(Sender: TObject);
    procedure bbt7Click(Sender: TObject);
   // procedure BBTT1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialRSL: TMaterialRSL;

implementation

uses main1, SampleOrder_Mat_RSL1, FunUnit;

{$R *.dfm}

procedure TMaterialRSL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TMaterialRSL.BB7Click(Sender: TObject);
begin
close;
end;

procedure TMaterialRSL.BB1Click(Sender: TObject);
begin
  panel3.Visible:=true;
  CLDHEdit.SetFocus;
end;

procedure TMaterialRSL.Button1Click(Sender: TObject);
begin
  //
  if RB1.Checked=true then
  begin
    if ( (CLDHEdit.Text='') and (BuyNoEdit.Text='') and (JiJieEdit1.Text='') and (SREdit.Text='') and (ArticleEdit.Text='') and (DDBHEdit.Text='') and (YWPM1Edit.Text='') and (YWPM2Edit.Text='') ) then
    begin
      Showmessage('Please key in MatNo or BuyNO or Season or SR or Article or DDBH ');
      exit;
    end;
  end else if RB2.Checked=true then
  begin
    if (RB2.Checked) AND (CBNew.Checked) AND (JiJieEdit2.Text = '') then
    begin
      MessageDlg('Please enter the season if you want to show the new material of it.', mtWarning, [mbyes], 0);
      CBNew.Checked := false;
      JiJieEdit2.SetFocus;
      Exit;
    end;
  end;

  with Query1 do
  begin
    active:=false;
    sql.clear;
    SQL.Add('Select CLZL.CLDH,CLLB,CLZL.ZWPM,CLZL.YWPM,CLZL.DWBH,CLZL.DCYN,CLZL.PDYN,CLZL.USERID,CLZL.USERDATE,CLZL.ID,Max(CLZL.ZSDH) as ZSDH,Max(CLZL.CSBH) as CSBH,CLZL.CLZMLB');
    SQL.Add('       ,CLZL.GSBH,CLZL.CreateID,CLZL.CreateDate,CLZL.DCCFM,CLZL.PDCFM,Max(CLZL.zsywjc) as zsywjc,CLZL.Memo,CLZL.Gender from (');
    SQL.Add('Select CLZL.*,ZSZL.zsywjc from ( ');
    SQL.Add('SELECT CLZL.CLDH, CLZL.CLLB, CLZL.ZWPM, CLZL.YWPM, CLZL.DWBH, RSTList.DCYN, RSTList.PDYN, CLZL.USERID, CLZL.USERDATE,RSTList.ID,IsNull(RSTList.zsdh,XXZLS.CSBH) as ZSDH,XXZLS.CSBH,CLZL.CLZMLB, ');
    SQL.Add('       RSTList.GSBH,RSTList.CreateID,RSTList.CreateDate,RSTList.DCCFM,RSTList.PDCFM,RSTList.Memo,RSTList.Gender ');
    SQL.Add('FROM CLZL');
    SQL.Add('left join RSTList on RSTList.CLDH=CLZL.CLDH and GSBH='''+main.Edit2.Text+'''  ');
    SQL.Add('left join (');
    if RB1.Checked=true then //量產
    begin
      SQL.Add('  select XXZLS.CLBH,Max(XXZLS.CSBH) as CSBH ');
      SQL.Add('  from XXZLS ');
      SQL.Add('  left join XXZL on XXZL.XieXing=XXZLS.XieXing and XXZL.SheHao=XXZLS.SheHao ');
      SQL.Add('  left join KFXXZL on XXZL.XieXing=KFXXZL.XieXing and XXZL.SheHao=KFXXZL.SheHao ');
      SQL.Add('  left join DDZL on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao ');
      SQL.Add('  left join KFZL on XXZL.KHDH=KFZL.kfdh');
      if ((JiJieEdit1.Text<>'') or (DDBHEdit.Text<>'') or (BuyNoEdit.Text<>'') or (ArticleEdit.Text<>'') or (SREdit.Text<>'') ) then
      begin
      SQL.Add('  where  1=1 ');
      if BrandCombo.Text<>'' then
      SQL.Add('         and KFZL.kfjc like '''+BrandCombo.Text+'%''  ');
      if JiJieEdit1.Text<>'' then
      SQL.Add('         and XXZL.JiJie like '''+JiJieEdit1.Text+'%'' ');
      if CLDHEdit.Text<>'' then
      SQL.Add('         and XXZLS.CLBH like '''+CLDHEdit.Text+'%'' ');
      if DDBHEdit.Text<>'' then
      SQL.Add('         and DDZL.DDBH like '''+DDBHEdit.Text+'%''');
      if BuyNoEdit.Text<>'' then
      SQL.Add('         and DDZL.BUYNO like '''+BuyNoEdit.Text+'%''');
      if ArticleEdit.Text<>'' then
      SQL.Add('         and XXZL.ARTICLE like '''+ArticleEdit.Text+'%''');
      if GenderCombo.Text<>'' then
      SQL.Add('         and KFXXZL.GENDER like '''+GenderCombo.Text+'%''');
      end else
      begin
      SQL.Add('  where 1=2 ');
      end;
      SQL.Add('  Group by XXZLS.CLBH  ');
    end;
    //
    if RB2.Checked=true then //開發
    begin
      SQL.Add('  select YPZLS.CLBH,MAX(YPZLS.CSBH) as CSBH');
      SQL.Add('  from YPZLS');
      SQL.Add('  left join YPZL on YPZL.YPDH=YPZLS.YPDH and YPZL.GSDH = '''+main.Edit2.Text+'''');
      SQL.Add('  left join Kfxxzl on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.SheHao');
      SQL.Add('  left join KFZL on Kfxxzl.KHDH=KFZL.kfdh');
      if ((JiJieEdit2.Text<>'') or (KFJDEdit.Text<>'') or (SREdit.Text<>'') ) then
      begin
      SQL.Add('  where 1=1');
      if BrandCombo.Text<>'' then
      SQL.Add('        and KFZL.kfjc like '''+BrandCombo.Text+'%''  ');
      if JiJieEdit2.Text<>'' then
      SQL.Add('        and Kfxxzl.JiJie like '''+JiJieEdit2.Text+'%'' ');
      if KFJDEdit.Text<>'' then
      SQL.Add('        and YPZL.KFJD like ''%'+KFJDEdit.Text+'%''');
      if CLDHEdit.Text<>'' then
      SQL.Add('        and YPZLS.CLBH like '''+CLDHEdit.Text+'%'' ');
      if SREdit.Text<>'' then
      SQL.Add('        and KFXXZL.DEVCODE like ''%'+SREdit.Text+'%''');
      if GenderCombo.Text<>'' then
      SQL.Add('        and KFXXZL.GENDER like '''+GenderCombo.Text+'%''');
      end else
      begin
      SQL.Add('  where 1=2 ');
      end;
      SQL.Add('  Group by YPZLS.CLBH   ');
    end;
    SQL.Add('  ) XXZLS on XXZLS.CLBH=clzl.cldh');
    SQL.Add('WHERE 1=1 ');
    if CLDHEdit.Text<>'' then
    SQL.Add('AND CLZL.CLDH LIKE '''+CLDHEdit.Text+'%''');
    if YWPM1Edit.Text<>'' then
    SQL.Add('AND CLZL.YWPM LIKE ''%'+YWPM1Edit.Text+'%''');
    if YWPM2Edit.Text<>'' then
    SQL.Add('AND CLZL.YWPM LIKE ''%'+YWPM2Edit.Text+'%''');
    SQL.Add('AND (CLZL.TYJH IS NULL OR CLZL.TYJH<>''Y'') ');
    if RB1.Checked=true then //量產
    begin
      if ((JiJieEdit1.Text<>'') or (DDBHEdit.Text<>'') or (BuyNoEdit.Text<>'') or (ArticleEdit.Text<>'') or (SREdit.Text<>'') ) then
      begin
        SQL.Add('AND CLZL.CLDH in ( ');
        SQL.Add('  select XXZLS.CLBH');
        SQL.Add('  from XXZLS ');
        SQL.Add('  left join XXZL on XXZL.XieXing=XXZLS.XieXing and XXZL.SheHao=XXZLS.SheHao ');
        SQL.Add('  left join KFXXZL on XXZL.XieXing=KFXXZL.XieXing and XXZL.SheHao=KFXXZL.SheHao ');
        SQL.Add('  left join DDZL on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao ');
        SQL.Add('  left join KFZL on XXZL.KHDH=KFZL.kfdh');
        SQL.Add('  where  1=1 ');
        if BrandCombo.Text<>'' then
        SQL.Add('         and KFZL.kfjc like '''+BrandCombo.Text+'%''  ');
        if JiJieEdit1.Text<>'' then
        SQL.Add('         and XXZL.JiJie like '''+JiJieEdit1.Text+'%'' ');
        if CLDHEdit.Text<>'' then
        SQL.Add('         and XXZLS.CLBH like '''+CLDHEdit.Text+'%'' ');
        if DDBHEdit.Text<>'' then
        SQL.Add('         and DDZL.DDBH like '''+DDBHEdit.Text+'%''');
        if BuyNoEdit.Text<>'' then
        SQL.Add('         and DDZL.BUYNO like '''+BuyNoEdit.Text+'%''');
        if ArticleEdit.Text<>'' then
        SQL.Add('         and XXZL.ARTICLE like '''+ArticleEdit.Text+'%''');
        if GenderCombo.Text<>'' then
        SQL.Add('         and KFXXZL.GENDER like '''+GenderCombo.Text+'%''');
        SQL.Add('  Group by XXZLS.CLBH ');
        SQL.Add('  )');
      end;
    end;
    if RB2.Checked=true then //開發
    begin
      if ((JiJieEdit2.Text<>'') or (KFJDEdit.Text<>'') or (SREdit.Text<>'') ) then
      begin
        SQL.Add('AND CLZL.CLDH in ( ');
        SQL.Add('  select YPZLS.CLBH ');
        SQL.Add('  from YPZLS');
        SQL.Add('  left join YPZL on YPZL.YPDH=YPZLS.YPDH and YPZL.GSDH = '''+main.Edit2.Text+'''');
        SQL.Add('  left join Kfxxzl on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.SheHao');
        SQL.Add('  left join KFZL on Kfxxzl.KHDH=KFZL.kfdh');
        SQL.Add('  left join NewMaterialOfSeason ON NewMaterialOfSeason.JiJie = Kfxxzl.JiJie AND NewMaterialOfSeason.CLBH = YPZLS.CLBH');
        SQL.Add('  where 1=1');
        if BrandCombo.Text<>'' then
        SQL.Add('        and KFZL.kfjc like '''+BrandCombo.Text+'%''  ');
        if JiJieEdit2.Text<>'' then
        SQL.Add('        and Kfxxzl.JiJie like '''+JiJieEdit2.Text+'%'' ');
        if KFJDEdit.Text<>'' then
        SQL.Add('        and YPZL.KFJD like '''+KFJDEdit.Text+'%''');
        if CLDHEdit.Text<>'' then
        SQL.Add('        and YPZLS.CLBH like '''+CLDHEdit.Text+'%'' ');
        if SREdit.Text<>'' then
        SQL.Add('        and KFXXZL.DEVCODE like ''%'+SREdit.Text+'%''');
        if GenderCombo.Text<>'' then
        SQL.Add('         and KFXXZL.GENDER like '''+GenderCombo.Text+'%''');
        if (CBNew.Checked) then
        SQL.Add('        and NewMaterialOfSeason.CLBH IS NOT NULL');
        SQL.Add('  Group by YPZLS.CLBH   ');
        SQL.Add('  )');
      end;
    end;
    SQL.Add(') CLZL ');
    SQL.Add('left join ZSZL on ZSZL.ZSDH=CLZL.ZSDH ');
    SQL.Add('where 1=1 ');
    if ZMLBCombo.ItemIndex>0 then
    SQL.Add('and CLZL.CLZMLB='''+ZMLBCombo.Text+''' ');
    if CB1.ItemIndex = 1 then
      sql.add('AND DCYN = ''Y''')
    else if CB1.ItemIndex = 2 then
      sql.Add('AND DCYN = ''N''')
    else if CB1.ItemIndex = 3 then
      sql.Add('AND ISNULL(DCYN, '''') = ''''')
    else if CB1.ItemIndex = 4 then
      sql.Add('AND PDYN = ''Y''')
    else if CB1.ItemIndex = 5 then
      sql.Add('AND PDYN = ''N''')
    else if CB1.ItemIndex = 6 then
      sql.Add('AND ISNULL(PDYN, '''') = ''''')
    else if CB1.ItemIndex = 7 then
      sql.Add('AND ISNULL(Memo, '''') = ''''')
    else if CB1.ItemIndex = 8 then
      sql.Add('AND ISNULL(Memo, '''') <> ''''')
    else if CB1.ItemIndex = 9 then
      sql.Add('AND ISNULL(Gender, '''') = ''''')
    else if CB1.ItemIndex = 10 then
      sql.Add('AND ISNULL(Gender, '''') <> ''''');
    SQL.Add('union all');
    //加工貼合子材料
    SQL.Add('Select CLZL.*,ZSZL.zsywjc from ( ');
    SQL.Add('SELECT CLZL.CLDH, CLZL.CLLB, CLZL.ZWPM, CLZL.YWPM, CLZL.DWBH, RSTList.DCYN, RSTList.PDYN, CLZL.USERID, CLZL.USERDATE,RSTList.ID,IsNull(RSTList.zsdh,clzhzl.zsdh) as ZSDH,clzhzl.zsdh as CSBH');
    SQL.Add('       ,CLZL.CLZMLB,RSTList.GSBH,RSTList.CreateID,RSTList.CreateDate,RSTList.DCCFM,RSTList.PDCFM,RSTList.Memo,RSTList.Gender from (');
    SQL.Add('select clzhzl.cldh1,MAX(clzhzl.zsdh) as ZSDH from (');
    SQL.Add('select clzhzl.cldh1,clzhzl.zsdh from (');
    SQL.Add('SELECT CLZL.CLDH ');
    SQL.Add('FROM CLZL');
    SQL.Add('WHERE 1=1 ');
    SQL.Add('AND (CLZL.TYJH IS NULL OR CLZL.TYJH<>''Y'') and CLZL.CLZMLB=''Y''');
    if RB1.Checked=true then //量產
    begin
      if ((JiJieEdit1.Text<>'') or (DDBHEdit.Text<>'') or (BuyNoEdit.Text<>'') or (ArticleEdit.Text<>'') ) then
      begin
      SQL.Add('AND CLDH in ( ');
      SQL.Add('  select XXZLS.CLBH');
      SQL.Add('  from XXZLS ');
      SQL.Add('  left join XXZL on XXZL.XieXing=XXZLS.XieXing and XXZL.SheHao=XXZLS.SheHao ');
      SQL.Add('  left join KFXXZL on XXZL.XieXing=KFXXZL.XieXing and XXZL.SheHao=KFXXZL.SheHao ');
      SQL.Add('  left join DDZL on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao ');
      SQL.Add('  left join KFZL on XXZL.KHDH=KFZL.kfdh');
      SQL.Add('  where  1=1 ');
      if BrandCombo.Text<>'' then
      SQL.Add('         and KFZL.kfjc like '''+BrandCombo.Text+'%''  ');
      if JiJieEdit1.Text<>'' then
      SQL.Add('         and XXZL.JiJie like '''+JiJieEdit1.Text+'%'' ');
      if DDBHEdit.Text<>'' then
      SQL.Add('         and DDZL.DDBH like '''+DDBHEdit.Text+'%''');
      if BuyNoEdit.Text<>'' then
      SQL.Add('         and DDZL.BUYNO like '''+BuyNoEdit.Text+'%''');
      if ArticleEdit.Text<>'' then
      SQL.Add('         and XXZL.ARTICLE like '''+ArticleEdit.Text+'%''');
      if GenderCombo.Text<>'' then
      SQL.Add('         and KFXXZL.GENDER like '''+GenderCombo.Text+'%''');
      SQL.Add('  Group by XXZLS.CLBH ');
      SQL.Add('  )');
      end;
    end;
    if RB2.Checked=true then //開發
    begin
      if ((JiJieEdit2.Text<>'') or (KFJDEdit.Text<>'') or (SREdit.Text<>'') ) then
      begin
        SQL.Add('AND CLZL.CLDH in ( ');
        SQL.Add('  select YPZLS.CLBH ');
        SQL.Add('  from YPZLS');
        SQL.Add('  left join YPZL on YPZL.YPDH=YPZLS.YPDH and YPZL.GSDH = '''+main.Edit2.Text+'''');
        SQL.Add('  left join Kfxxzl on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.SheHao');
        SQL.Add('  left join KFZL on Kfxxzl.KHDH=KFZL.kfdh');
        //SQL.Add('  left join NewMaterialOfSeason ON NewMaterialOfSeason.JiJie = Kfxxzl.JiJie AND NewMaterialOfSeason.CLBH = YPZLS.CLBH');
        SQL.Add('  where 1=1');
        if BrandCombo.Text<>'' then
        SQL.Add('        and KFZL.kfjc like '''+BrandCombo.Text+'%''  ');
        if JiJieEdit2.Text<>'' then
        SQL.Add('        and Kfxxzl.JiJie like '''+JiJieEdit2.Text+'%'' ');
        if KFJDEdit.Text<>'' then
        SQL.Add('        and YPZL.KFJD like '''+KFJDEdit.Text+'%''');
        if CLDHEdit.Text<>'' then
        SQL.Add('        and YPZLS.CLBH like '''+CLDHEdit.Text+'%'' ');
        if SREdit.Text<>'' then
        SQL.Add('        and KFXXZL.DEVCODE like ''%'+SREdit.Text+'%''');
        if GenderCombo.Text<>'' then
        SQL.Add('         and KFXXZL.GENDER like '''+GenderCombo.Text+'%''');
        //if (CBNew.Checked) then
        //SQL.Add('        and NewMaterialOfSeason.CLBH IS NOT NULL');
        SQL.Add('  Group by YPZLS.CLBH   ');
        SQL.Add('  )');
      end;
    end;
    SQL.Add(') MCLZL ');
    SQL.Add('inner join clzhzl on clzhzl.cldh=MCLZL.cldh ) clzhzl ');
    SQL.Add('Group by clzhzl.cldh1');
    SQL.Add(' ) clzhzl');
    SQL.Add('left join CLZL on CLZL.cldh=clzhzl.cldh1 ');
    SQL.Add('left join RSTList on RSTList.CLDH=clzhzl.cldh1 and GSBH='''+main.Edit2.Text+''' ');
    if (RB2.Checked) AND (CBNew.Checked) then
    begin
      SQL.Add('left join NewMaterialOfSeason ON NewMaterialOfSeason.JiJie like ''' + JiJieEdit2.Text + '%'' AND NewMaterialOfSeason.CLBH = clzhzl.cldh1');
      SQL.Add('WHERE 1=1 and NewMaterialOfSeason.CLBH is not null');
    end
    else
      SQL.Add('WHERE 1=1');
    SQL.Add('AND (CLZL.TYJH IS NULL OR CLZL.TYJH<>''Y'') ');
    if CLDHEdit.Text<>'' then
    SQL.Add('AND CLZL.CLDH LIKE '''+CLDHEdit.Text+'%''');
    if YWPM1Edit.Text<>'' then
    SQL.Add('AND CLZL.YWPM LIKE ''%'+YWPM1Edit.Text+'%''');
    if YWPM2Edit.Text<>'' then
    SQL.Add('AND CLZL.YWPM LIKE ''%'+YWPM2Edit.Text+'%''');
    SQL.Add(') CLZL ');
    SQL.Add('left join ZSZL on ZSZL.ZSDH=CLZL.ZSDH');
    SQL.Add('where 1=1 ');
    if ZMLBCombo.ItemIndex>0 then
    SQL.Add('and CLZL.CLZMLB='''+ZMLBCombo.Text+''' ');
    if CB1.ItemIndex = 1 then
      sql.add('AND DCYN = ''Y''')
    else if CB1.ItemIndex = 2 then
      sql.Add('AND DCYN = ''N''')
    else if CB1.ItemIndex = 3 then
      sql.Add('AND ISNULL(DCYN, '''') = ''''')
    else if CB1.ItemIndex = 4 then
      sql.Add('AND PDYN = ''Y''')
    else if CB1.ItemIndex = 5 then
      sql.Add('AND PDYN = ''N''')
    else if CB1.ItemIndex = 6 then
      sql.Add('AND ISNULL(PDYN, '''') = ''''')
    else if CB1.ItemIndex = 7 then
      sql.Add('AND ISNULL(Memo, '''') = ''''')
    else if CB1.ItemIndex = 8 then
      sql.Add('AND ISNULL(Memo, '''') <> ''''')
    else if CB1.ItemIndex = 9 then
      sql.Add('AND ISNULL(Gender, '''') = ''''')
    else if CB1.ItemIndex = 10 then
      sql.Add('AND ISNULL(Gender, '''') <> ''''');
    SQL.Add(') AS CLZL');
    if SupplierEdit.Text <> '' then
      SQL.Add('WHERE CLZL.zsywjc LIKE ''%' + SupplierEdit.Text + '%''');
    SQL.Add('Group by CLZL.CLDH,CLLB,CLZL.ZWPM,CLZL.YWPM,CLZL.DWBH,CLZL.DCYN,CLZL.PDYN,CLZL.USERID,CLZL.USERDATE,CLZL.ID,CLZL.CLZMLB,CLZL.GSBH,CLZL.CreateID,CLZL.CreateDate,CLZL.DCCFM,CLZL.PDCFM,CLZL.Memo,CLZL.Gender ');
    SQL.Add('ORDER BY CLZL.CLDH ');
    //FuncObj.WriteErrorLog(SQL.Text);
    active:=true;
  end;
  panel3.visible:=false;
  panel2.visible:=true;
  bb4.enabled:=true;
  bb7.enabled:=true;
  bbt6.enabled:=true;
  DBEdit1.SetFocus;

end;

procedure TMaterialRSL.BB4Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;

  bb5.enabled:=true;
  bb6.enabled:=true;
  DBGrid1.PopupMenu := PopupMenu1;
  DBedit1.SetFocus;
end;

procedure TMaterialRSL.BB6Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;

  bb5.enabled:=false;
  bb6.enabled:=false;
  DBGrid1.PopupMenu := Nil;
end;

procedure TMaterialRSL.BBT1Click(Sender: TObject);
begin
  query1.First;
end;

procedure TMaterialRSL.BBT2Click(Sender: TObject);
begin
  query1.Prior;
end;

procedure TMaterialRSL.BBT3Click(Sender: TObject);
begin
  query1.Next;
end;

procedure TMaterialRSL.CLDHEditKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    YWPM1Edit.SetFocus;
end;

procedure TMaterialRSL.YWPM1EditKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    YWPM2Edit.SetFocus;
end;

procedure TMaterialRSL.YWPM2EditKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1click(nil);
end;

procedure TMaterialRSL.BB5Click(Sender: TObject);
var i:integer;
    a:string;
begin
  try
    query1.first;
    for i:=1 to query1.RecordCount do
    begin
      case query1.updatestatus of
        usmodified:
        begin
          query1.edit;
          query1.FieldByName('CreateID').Value:=main.edit1.text;
          query1.FieldByName('CreateDate').Value:=date;
          if query1.FieldByName('ID').IsNull then
          begin
            query1.FieldByName('PDCFM').Value:='N';
            query1.FieldByName('DCCFM').Value:='N';
            query1.FieldByName('GSBH').Value:=main.edit2.text;
            upsql1.apply(ukInsert);            
          end else
          begin
            upsql1.apply(ukmodify);
          end;
        end;
      end;
      query1.next;
    end;
    query1.active:=false;
    query1.cachedupdates:=false;
    query1.requestlive:=false;
    query1.active:=true;
    bb5.enabled:=false;
    bb6.enabled:=false;
    DBGrid1.PopupMenu := Nil;
  except
    Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
  end;

end;

procedure TMaterialRSL.FormDestroy(Sender: TObject);
begin
  MaterialRSL:=nil;
end;


procedure TMaterialRSL.BBT4Click(Sender: TObject);
begin
  query1.Last;
end;

procedure TMaterialRSL.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if  (query1.FieldByName('DCYN').Value = 'Y') and  (query1.FieldByName('PDYN').Value = 'Y') then
      dbgrid1.canvas.font.color:=clBlue;

  if  (query1.FieldByName('DCYN').Value = 'N') and  (query1.FieldByName('PDYN').Value = 'Y') then
      dbgrid1.canvas.font.color:=clGreen;

  if  (query1.FieldByName('DCYN').Value = 'Y') and  (query1.FieldByName('PDYN').Value = 'N') then
      dbgrid1.canvas.font.color:=clFuchsia;
end;


procedure TMaterialRSL.bbt6Click(Sender: TObject);
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
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TMaterialRSL.SetClick(Sender: TObject);
var
  i: integer;
  bm: Tbookmark;
  bookmarklist: TBookmarkListEh;
  SetVal,FieldName: string;
begin
  bm := Query1.GetBookmark;
  bookmarklist := DBGrid1.SelectedRows;

  if (TMenuItem(Sender).Name = 'mnu1') then
  begin
    SetVal := 'Y';
    FieldName:='PDYN';
  end else if (TMenuItem(Sender).Name = 'mnu2') then
  begin
    SetVal := 'N';
    FieldName:='PDYN';
  end else if (TMenuItem(Sender).Name = 'mnu5') then
  begin
    SetVal := '';
    FieldName:='PDYN';
  end else if (TMenuItem(Sender).Name = 'mnu6') then
  begin
    SetVal := '';
    FieldName:='Memo';
  end else if (TMenuItem(Sender).Name = 'mnu7') then
  begin
    SetVal := '';
    FieldName:='Gender';
  end else if (TMenuItem(Sender).Name = 'mnu3') then
  begin
    FieldName:='Memo';
    if (DBGrid1.SelectedRows.Count > 0) then
    begin
      if InputQuery('Memo', 'SET MEMO TO ...', SetVal) then
      begin
        if SetVal = '' then Exit;
      end
      else begin
        Exit;
      end;
    end
    else begin
      ShowMessage('Please select a material.');
      Exit;
    end;
  end else if (TMenuItem(Sender).Name = 'mnu4') then
  begin
    FieldName:='Gender';
    if (DBGrid1.SelectedRows.Count > 0) then
    begin
      if InputQuery('GenderMEMO', 'SET GenderMEMO TO ...', SetVal) then
      begin
        if SetVal = '' then Exit;
      end
      else begin
        Exit;
      end;
    end
    else begin
      ShowMessage('Please select a material.');
      Exit;
    end;
  end;
  try
    if (DBGrid1.SelectedRows.Count > 0) then
    begin
      for i:=0 to bookmarklist.Count-1 do
      begin
        Query1.GotoBookmark(Pointer(bookmarklist[i]));
        Query1.Edit;
        Query1.FieldByName(FieldName).Value := SetVal;
        Query1.Post;
      end;
    end
    else begin
      ShowMessage('Please select a material.');
    end;
  finally
    Query1.GotoBookmark(bm);
    Query1.FreeBookmark(bm);
  end;
end;

procedure TMaterialRSL.bbt7Click(Sender: TObject);
begin
   SampleOrder_Mat_RSL:=TSampleOrder_Mat_RSL.Create(self);
   SampleOrder_Mat_RSL.Show();
end;

end.


