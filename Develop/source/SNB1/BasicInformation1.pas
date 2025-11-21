unit BasicInformation1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, GridsEh, DBGridEh, StdCtrls, Buttons, DBTables, DB,
  ComCtrls, ComObj,fununit;


type
  TBasicInformation = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    QSearch: TQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DataSource2: TDataSource;
    UpdateSQL2: TUpdateSQL;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1XieMing: TStringField;
    Query1DevCode: TStringField;
    Query1ARTICLE: TStringField;
    Query1Dropped: TBooleanField;
    Query1Cut: TStringField;
    Query1Productiontype: TStringField;
    Query1Segment: TStringField;
    Query1Category: TStringField;
    Query1Bucket: TStringField;
    Query1JiJie: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1SS: TStringField;
    Query1Transfer: TBooleanField;
    Query1TransferIn: TBooleanField;
    DBGridEh2: TDBGridEh;
    Query2: TQuery;
    Query1DropDetail: TStringField;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    DBGridEh3: TDBGridEh;
    DBGridEh4: TDBGridEh;
    Query3: TQuery;
    Query4: TQuery;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    UpdateSQL3: TUpdateSQL;
    UpdateSQL4: TUpdateSQL;
    TabSheet5: TTabSheet;
    DBGridEh5: TDBGridEh;
    DataSource5: TDataSource;
    Query5: TQuery;
    UpdateSQL5: TUpdateSQL;
    Query1CTS: TStringField;
    Panel2: TPanel;
    MC1: TMonthCalendar;
    Query1Transferstage: TStringField;
    TabSheet6: TTabSheet;
    DBGridEh6: TDBGridEh;
    Query6: TQuery;
    DataSource6: TDataSource;
    Query6XieXing: TStringField;
    Query6SheHao: TStringField;
    Query6RiskLevel: TStringField;
    Query6BuyMonth: TDateTimeField;
    Query6ISD: TDateTimeField;
    Query6FinalBom: TBooleanField;
    Query6FinalBomDate: TDateTimeField;
    Query6CTSsignCFMshoes: TBooleanField;
    Query6CTSsignCFMshoesDate: TDateTimeField;
    Query6CFMShoesToQC: TBooleanField;
    Query6CFMShoesToQCDate: TDateTimeField;
    Query6CSBookToQC: TBooleanField;
    Query6CSBookToQCDate: TDateTimeField;
    Query6CWToQCOP: TStringField;
    Query6CWToQC: TStringField;
    Query6CWToQCDate: TDateTimeField;
    Query6UserID_Dev: TStringField;
    Query6Userdate_Dev: TDateTimeField;
    Query6FinalBOMQCReceive: TBooleanField;
    Query6FinalBOMQCReceiveDate: TDateTimeField;
    Query6CFMshoesQCReceive: TBooleanField;
    Query6CFMshoesQCReceiveDate: TDateTimeField;
    Query6CFMshoesQCprovidetoPur: TBooleanField;
    Query6CFMshoesQCprovidetoPurDate: TDateTimeField;
    Query6CSbookQCReceive: TBooleanField;
    Query6CSbookQCReceiveDate: TDateTimeField;
    Query6CSbookQCprovidetoPur: TBooleanField;
    Query6CSbookQCprovidetoPurDate: TDateTimeField;
    Query6CWQCReceive: TBooleanField;
    Query6CWQCReceiveDate: TDateTimeField;
    Query6CWQCprovidetoPur: TBooleanField;
    Query6CWQCprovidetoPurDate: TDateTimeField;
    Query6UserID_QC: TStringField;
    Query6Userdate_QC: TDateTimeField;
    Query6FinalBOMPurReceive: TBooleanField;
    Query6FinalBOMPurReceiveDate: TDateTimeField;
    Query6CFMShoesPurReceive: TBooleanField;
    Query6CFMShoesPurReceiveDate: TDateTimeField;
    Query6CSBookPurReceive: TBooleanField;
    Query6CSBookPurReceiveDate: TDateTimeField;
    Query6CWPurReceive: TBooleanField;
    Query6CWPurReceiveDate: TDateTimeField;
    Query6CWShipping: TBooleanField;
    Query6CWShippingDate: TDateTimeField;
    Query6UserID_Pur: TStringField;
    Query6Userdate_Pur: TDateTimeField;
    Query6CFMShoesSPTeamReceive: TBooleanField;
    Query6CFMShoesSPTeamReceiveDate: TDateTimeField;
    Query6CFMShoesShipping: TBooleanField;
    Query6CFMShoesShippingDate: TDateTimeField;
    Query6UserID_SP: TStringField;
    Query6Userdate_SP: TDateTimeField;
    Query6ShoeName: TStringField;
    Query6SR: TStringField;
    Query6SKU: TStringField;
    Query6TechLevel: TStringField;
    Query6SheHao_1: TStringField;
    Query6XieXing_1: TStringField;
    Query6FD: TStringField;
    Query6Exist: TStringField;
    Query6ImgNameCFM: TStringField;
    Query6Size: TStringField;
    Panel1: TPanel;
    Label4: TLabel;
    Label2: TLabel;
    Label66: TLabel;
    Label229: TLabel;
    Label89: TLabel;
    Label46: TLabel;
    BB1: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    CB_SEASON: TComboBox;
    ED_SR: TEdit;
    ED_SKU: TEdit;
    CB_FD: TComboBox;
    CB_TEAM: TComboBox;
    CB_DEVTYPE: TComboBox;
    CB_NNULL: TCheckBox;
    BB8: TButton;
    GroupBox2: TGroupBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    Query1Hold: TBooleanField;
    Query1HoldStage: TStringField;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Query1YSSM: TStringField;
    Query2XieXing: TStringField;
    Query2SheHao: TStringField;
    Query2XieMing: TStringField;
    Query2DevCode: TStringField;
    Query2ARTICLE: TStringField;
    Query2JiJie: TStringField;
    Query2TPDate: TStringField;
    Query2Status: TStringField;
    Query2RSD: TStringField;
    Query2UserID: TStringField;
    Query2UserDate: TDateTimeField;
    Query2YSSM: TStringField;
    Query2BOMDate: TDateTimeField;
    Query2DevelopDate: TDateTimeField;
    Query2DFMEA: TStringField;
    Query2PurchaseDate: TDateTimeField;
    Query2MTRLInComingDate: TStringField;
    Query3XieXing: TStringField;
    Query3SheHao: TStringField;
    Query3XieMing: TStringField;
    Query3DevCode: TStringField;
    Query3ARTICLE: TStringField;
    Query3JiJie: TStringField;
    Query3TPDate: TStringField;
    Query3Status: TStringField;
    Query3RSD: TStringField;
    Query3UserID: TStringField;
    Query3UserDate: TDateTimeField;
    Query3YSSM: TStringField;
    Query3BOMDate: TDateTimeField;
    Query3DevelopDate: TDateTimeField;
    Query3DFMEA: TStringField;
    Query3PurchaseDate: TDateTimeField;
    Query3MTRLInComingDate: TStringField;
    Query4XieXing: TStringField;
    Query4SheHao: TStringField;
    Query4XieMing: TStringField;
    Query4DevCode: TStringField;
    Query4ARTICLE: TStringField;
    Query4JiJie: TStringField;
    Query4TPDate: TStringField;
    Query4Status: TStringField;
    Query4RSD: TStringField;
    Query4UserID: TStringField;
    Query4UserDate: TDateTimeField;
    Query4YSSM: TStringField;
    Query4BOMDate: TDateTimeField;
    Query4DevelopDate: TDateTimeField;
    Query4DFMEA: TStringField;
    Query4PurchaseDate: TDateTimeField;
    Query4MTRLInComingDate: TStringField;
    Query5XieXing: TStringField;
    Query5SheHao: TStringField;
    Query5XieMing: TStringField;
    Query5DevCode: TStringField;
    Query5ARTICLE: TStringField;
    Query5JiJie: TStringField;
    Query5TPDate: TStringField;
    Query5Status: TStringField;
    Query5RSD: TStringField;
    Query5UserID: TStringField;
    Query5UserDate: TDateTimeField;
    Query5YSSM: TStringField;
    Query5BOMDate: TDateTimeField;
    Query5DevelopDate: TDateTimeField;
    Query5DFMEA: TStringField;
    Query5PurchaseDate: TDateTimeField;
    Query5MTRLInComingDate: TStringField;
    Query2WarehouseScanDate: TDateTimeField;
    Query3WarehouseScanDate: TDateTimeField;
    Query4WarehouseScanDate: TDateTimeField;
    Query5WarehouseScanDate: TDateTimeField;
    Query2Latest_MTRL_ETADate: TDateTimeField;
    Query3Latest_MTRL_ETADate: TDateTimeField;
    Query4Latest_MTRL_ETADate: TDateTimeField;
    Query5Latest_MTRL_ETADate: TDateTimeField;
    Query2TPlate: TBooleanField;
    Query3TPlate: TBooleanField;
    Query4TPlate: TBooleanField;
    Query2CTS_TP_DEADLINE: TDateTimeField;
    Query4CTS_TP_DEADLINE: TDateTimeField;
    Query3CTS_TP_DEADLINE: TDateTimeField;
    ImportETCBtn: TButton;
    OpenDialog: TOpenDialog;
    Query1Planning_Level_2: TStringField;
    Query1TechLevel_Flex: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure BB7Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure BB8Click(Sender: TObject);
    procedure DBGridEh1Columns6UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh1Columns7UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEhMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGridEhColumns6EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure MC1DblClick(Sender: TObject);
    procedure QueryAfterOpen(DataSet: TDataSet);
    procedure QueryAfterScroll(DataSet: TDataSet);
    procedure DBGridEhColumns8EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure Query4CalcFields(DataSet: TDataSet);
    procedure Query3CalcFields(DataSet: TDataSet);
    procedure Query2CalcFields(DataSet: TDataSet);
    procedure ImportETCBtnClick(Sender: TObject);
  private
    UserName, Mode: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BasicInformation: TBasicInformation;

implementation

uses main1;

{$R *.dfm}

procedure TBasicInformation.FormCreate(Sender: TObject);
begin
  with QSearch do
  begin
    //USERNAME
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT IsNull(engname, '''') AS engname FROM Busers');
    SQL.add('WHERE UserID = ''' + main.Edit1.Text + '''');
    Active := true;
    UserName := FieldByName('engname').AsString;

    //CB_SEASON
    Active := false;
    SQL.Clear;
    SQL.add('SELECT JiJie FROM KFXXZL');
    SQL.add('LEFT JOIN KFZL_GS ON KFZL_GS.KHBH = KFXXZL.KHDH');
    SQL.add('WHERE FD IS NOT NULL AND KFZL_GS.GSBH = ''' + main.Edit2.Text + '''');
    SQL.add('AND RIGHT(LEFT(JiJie, 2), 2) BETWEEN ''16'' AND ''50''');
    SQL.Add('AND LEN(JiJie) < 4');
    SQL.add('GROUP BY JiJie');
    SQL.add('ORDER BY JiJie DESC');
    Active := true;
    CB_SEASON.Items.Clear;
    while not Eof do
    begin
      CB_SEASON.Items.Add(FieldByName('JiJie').AsString);
      Next;
    end;
    CB_SEASON.ItemIndex := 0;

    //CB_FD
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT FD FROM KFXXZL');
    SQL.Add('LEFT JOIN KFZL_GS ON KFZL_GS.KHBH = KFXXZL.KHDH');
    SQL.Add('WHERE ISNULL(FD, '''') <> '''' AND KFZL_GS.GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('AND RIGHT(LEFT(JiJie, 2), 2) BETWEEN ''15'' AND ''50''');
    SQL.Add('GROUP BY FD');
    SQL.Add('ORDER BY FD');
    Active := true;
    CB_FD.Items.Clear;
    CB_FD.Items.Add('');
    while not Eof do
    begin
      CB_FD.Items.Add(FieldByName('FD').AsString);
      Next;
    end;
    CB_FD.ItemIndex := 0;
  end;

  PageControl1.ActivePageIndex := 0;
end;

procedure TBasicInformation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (BB5.Enabled) then
  begin
    MessageDlg('Please save your data first !', mtWarning, [mbYes], 0);
    Action := caNone;
  end
  else begin
    Action := caFree;
  end;
end;

procedure TBasicInformation.FormDestroy(Sender: TObject);
begin
  BasicInformation := Nil;
end;

procedure TBasicInformation.BB1Click(Sender: TObject);
var
  TargetQuery: TQuery;
  TargetTable, Stage, SQL1: string;
  Flag: Boolean;
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT XXZLKF.XieXing, XXZLKF.SheHao, KFXXZL.XieMing, KFXXZL.DevCode, KFXXZL.ARTICLE, KFXXZL.JiJie,');
    SQL.Add('XXZLKF.Dropped, XXZLKF.TransferIn,xxzlkf.Planning_Level_2, XXZLKF.Hold,XXZLKF.HoldStage,XXZLKF.Transfer, XXZLKF.Transferstage, XXZLKF.Cut, XXZLKF.SS, XXZLKF.Productiontype,');
    SQL.Add('XXZLKF.Segment, XXZLKF.Category, XXZLKF.Bucket, XXZLKF.UserID, XXZLKF.UserDate, XXZLKF.DropDetail, XXZLKF.CTS,KFXXZL.YSSM,xxzlkf.TechLevel_Flex FROM XXZLKF');
    SQL.Add('LEFT JOIN KFXXZL ON KFXXZL.XieXing = XXZLKF.XieXing AND KFXXZL.SheHao = XXZLKF.SheHao');
    SQL.Add('LEFT JOIN FDGroups ON FDGroups.FDName = KFXXZL.FD');
    SQL.Add('LEFT JOIN KFZL_GS ON KFZL_GS.KHBH = KFXXZL.KHDH');
    SQL.Add('WHERE KFXXZL.JiJie LIKE ''%' + CB_SEASON.Text + '%''');
    SQL.Add('AND KFXXZL.DevCode IN (');
    SQL.Add('  SELECT KFXXZL.DevCode FROM KFXXZL');
    SQL.Add('  LEFT JOIN YPZL ON YPZL.XieXing = KFXXZL.XieXing AND YPZL.SheHao = KFXXZL.SheHao');
    SQL.Add('  WHERE KFXXZL.khdh = (select KHBH from kfzl_GS where GSBH = '''+ComboBox1.Text+''') AND kfjd <> ''SEE'' AND KFXXZL.JiJie LIKE ''%' + CB_SEASON.Text + '%''');
    SQL.Add('  GROUP BY KFXXZL.DevCode');
    SQL.Add(')');
    if (CB_NNULL.Checked) then
    begin
      SQL.Add('AND KFXXZL.Xieming NOT LIKE ''%NULLIFY%''');
      SQL.Add('AND KFXXZL.Xieming NOT LIKE ''%NULIFY%''');
    end;
    SQL.Add('AND KFXXZL.DevCode <> ''''');
    SQL.Add('AND kfzl_GS.GSBH= ''' + ComboBox1.Text + '''');
    if (CB_DEVTYPE.Text <> '') then
      SQL.Add('AND KFXXZL.DevType LIKE ''%' + CB_DEVTYPE.Text + '%''');
    if (ED_SR.Text <> '') then
      SQL.Add('AND KFXXZL.DevCode LIKE ''%' + ED_SR.Text + '%''');
    if (ED_SKU.Text <> '') then
      SQL.Add('AND KFXXZL.Article LIKE ''%' + ED_SKU.Text + '%''');
    if (CB_FD.Text <> '') then
      SQL.Add('AND KFXXZL.FD = ''' + CB_FD.Text + '''');
    if (CB_TEAM.Text <> '') then
    begin
      if (CB_TEAM.Text = 'A') then SQL.Add('AND FDGroups.FDTeam = ''A''')
      else if (CB_TEAM.Text = 'B') then SQL.Add('AND FDGroups.FDTeam = ''B''')
      else if (CB_TEAM.Text = 'C') then SQL.Add('AND FDGroups.FDTeam = ''C''')
      else if (CB_TEAM.Text = 'SMU') then SQL.Add('AND FDGroups.FDTeam = ''SMU''');
    end;
    {if (CB_DATA.Text <> '') then
    begin
      if (CB_DATA.Text = 'new') then SQL.Add('AND XXZLKF.UserID IS NULL')
      else if (CB_DATA.Text = 'Dropped') then SQL.Add('AND XXZLKF.Dropped = ''1''')
      else if (CB_DATA.Text = 'NoDropped') then SQL.Add('AND ISNULL(XXZLKF.Dropped, ''0'') = ''0''')
      else if (CB_DATA.Text = 'Transfer') then SQL.Add('AND XXZLKF.Transfer = ''1''')
      else if (CB_DATA.Text = 'NoTransfer') then SQL.Add('AND ISNULL(XXZLKF.Transfer, ''0'') = ''0''')
      else if (CB_DATA.Text = 'no_ok') then SQL.Add('AND ISNULL(XXZLKF.YN, ''0'') = ''0''')
      else if (CB_DATA.Text = 'ok') then SQL.Add('AND XXZLKF.YN = ''1''');
    end;}
    SQL1 := '';
    if (CheckBox5.Checked = true) or (CheckBox6.Checked = true) or (CheckBox7.Checked = true) or (CheckBox8.Checked = true) or (CheckBox9.Checked = true) then begin
      SQL.Add('AND ( ');
      if (CheckBox5.Checked = true) then
        SQL1 := '(XXZLKF.Dropped = ''1'') ';
      if (CheckBox6.Checked = true) then begin
        if (SQL1 = '') then
          SQL1 := '(XXZLKF.Dropped = ''0'') '
        else
          SQL1 := SQL1 + 'or (XXZLKF.Dropped = ''0'') ';
      end;
      if (CheckBox7.Checked = true) then begin
        if (SQL1 = '') then
          SQL1 := '(XXZLKF.TransferIn = ''1'') '
        else
          SQL1 := SQL1 + 'or (XXZLKF.TransferIn = ''1'') ';
      end;
      if (CheckBox8.Checked = true) then begin
        if (SQL1 = '') then
          SQL1 := '(XXZLKF.Transfer = ''1'') '
        else
          SQL1 := SQL1 + 'or (XXZLKF.Transfer = ''1'') ';
      end;
      if (CheckBox9.Checked = true) then begin
        if (SQL1 = '') then
          SQL1 := SQL1 + '(XXZLKF.HOLD = ''1'') '
        else
          SQL1 := 'or (XXZLKF.HOLD = ''1'') ';
      end;
      SQL.Add(''+SQL1+') ');
    end;
{
    if (CheckBox5.Checked = true) and (CheckBox6.Checked = true) then
    begin
       SQL.Add('AND XXZLKF.Dropped in (''1'',ISNULL(XXZLKF.Dropped,''0''))');
    end else
    if (CheckBox5.Checked = true) or (CheckBox6.Checked = true) then
    begin
      if (CheckBox5.Checked = true) then
        SQL.Add('AND XXZLKF.Dropped = ''1''');
      if (CheckBox6.Checked = true) then
        SQL.Add('AND ISNULL(XXZLKF.Dropped, 0) = 0');
    end;
    if (CheckBox7.Checked = true) then
      SQL.Add('AND XXZLKF.TransferIn = ''1''');
    if (CheckBox8.Checked = true) then
      SQL.Add('AND XXZLKF.Transfer = ''1''');
    if (CheckBox9.Checked = true) then
      SQL.Add('AND XXZLKF.HOLD = ''1''');
}
    if ComboBox1.Text = 'CDC' then
      SQL.Add('AND LEN(XXZLKF.SheHao) = 2');
    SQL.Add('ORDER BY XXZLKF.XieXing, XXZLKF.SheHao');
//    exit;
    Active := true;
  end;


  with Query6 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('  SELECT PC_Data.*,xxzlkf.SS as Size, KFXXZL.XieMing as ''Shoe Name'',KFXXZL.DEVCODE AS SR,KFXXZL.ARTICLE AS SKU,kfxxzl.KFLX as ''Tech Level''    ');
    SQL.Add('    ,KFXXZL.SheHao,KFXXZL.XieXing , KFXXZL.FD, ISNULL(PC_Data.XieXing, ''X'') AS Exist, ISNULL(XXZLKF.ImgNameCfm, '''') AS ImgNameCFM  ');
    SQL.Add('     FROM PC_Data    ');
    SQL.Add('    LEFT JOIN KFXXZL ON PC_Data.XieXing = KFXXZL.XieXing AND PC_Data.SheHao = KFXXZL.SheHao    ');
    SQL.Add('    LEFT JOIN XXZLKF ON XXZLKF.XieXing = KFXXZL.XieXing AND XXZLKF.SheHao = KFXXZL.SheHao    ');
    SQL.Add('  WHERE 1=1');
    if CB_FD.Text <>'' then
      SQL.Add('  AND KFXXZL.FD LIKE '''+CB_FD.Text+'%''  ');
    if CB_SEASON.Text <>'' then
      SQL.Add('  AND KFXXZL.JiJie = '''+CB_SEASON.Text+'''   ');
    if ED_SR.Text <>'' then
      SQL.Add('  AND kfxxzl.devcode like '''+ED_SR.Text+'%''   ');
    if ED_SKU.Text <>'' then
      SQL.Add('  AND KFXXZL.article like '''+ED_SKU.Text+'%''   ');
    if CB_DEVTYPE.Text <>'' then
      SQL.Add('  AND KFXXZL.devtype = '''+CB_DEVTYPE.Text+'''   ');
//    SQL.Add('  AND LEN(KFXXZL.SheHao) <= 2   ');
    SQL.Add('  AND XXZLKF.Dropped <> ''1''   ');
    SQL.Add('  AND XXZLKF.Transfer <> ''1''  ');
    SQL.Add('    ORDER BY KFXXZL.FD, KFXXZL.DEVCODE, KFXXZL.XieMing  ');
    //funcobj.WriteErrorLog(sql.Text);
    Active := true;
  end;

  Flag := true;
  if (PageControl1.ActivePageIndex = 0) then
  begin
    Flag := false;
  end
  else if (PageControl1.ActivePageIndex = 1) then
  begin
    TargetQuery := Query2;
    TargetTable := 'R1Sample';
    Stage := '''CR1''';
  end
  else if (PageControl1.ActivePageIndex = 2) then
  begin
    TargetQuery := Query3;
    TargetTable := 'R2Sample';
    Stage := '''CR2''';
  end
  else if (PageControl1.ActivePageIndex = 3) then
  begin
    TargetQuery := Query4;
    TargetTable := 'R3Sample';
    Stage := '''CR3'',''SMS''';
  end                                                                                                                                                                                 
  else if (PageControl1.ActivePageIndex = 4) then
  begin
    TargetQuery := Query5;
    TargetTable := 'R4Sample';
    Stage := '''CR4''';
  end
  else if (PageControl1.ActivePageIndex = 5) then
  begin
    Flag := false;
  end;

  if (Flag) then
  begin
    with TargetQuery do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT ' + TargetTable + '.XieXing, ' + TargetTable + '.SheHao, KFXXZL.XieMing, KFXXZL.DevCode, KFXXZL.ARTICLE, KFXXZL.JiJie, ' + TargetTable + '.TPDate, ' + TargetTable + '.Status, ' + TargetTable + '.RSD, ' + TargetTable + '.UserID, ' + TargetTable + '.UserDate,KFXXZL.YSSM');
      SQL.Add(',DelDate as ''BOM Date'',recheckdate as ''Develop Date'',' + TargetTable + '.DFMEA,' + TargetTable + '.Latest_MTRL_ETADate');
      SQL.Add(',recieveDate as ''Purchase Date'',case when (shoetestplan.C_ETA is not null and  shoetestplan.C_ETA <> '''') then shoetestplan.C_ETA else ''OK'' end as  ''MTRL In Coming Date'' ' );
      SQL.Add(',SHOETEST.preparationDate as ''Warehouse Scan Date'',GamePlan.CTS_TP_DEADLINE,'''' as ''TPlate'' ');
      SQL.Add('FROM ' + TargetTable);
      SQL.Add('LEFT JOIN KFXXZL ON KFXXZL.XieXing = ' + TargetTable + '.XieXing AND KFXXZL.SheHao = ' + TargetTable + '.SheHao');
      SQL.Add('LEFT JOIN XXZLKF ON XXZLKF.XieXing = ' + TargetTable + '.XieXing AND XXZLKF.SheHao = ' + TargetTable + '.SheHao');
      SQL.Add('LEFT JOIN FDGroups ON FDGroups.FDName = KFXXZL.FD');
      SQL.Add('LEFT JOIN KFZL_GS ON KFZL_GS.KHBH = KFXXZL.KHDH');
      SQL.Add('LEFT JOIN YPZL ON YPZL.XieXing = ' + TargetTable + '.XieXing AND YPZL.SheHao = ' + TargetTable + '.SheHao');
      SQL.Add('LEFT JOIN shoetestplan on shoetestplan.ypdh=YPZL.ypdh');
      SQL.Add('Left Join SHOETEST ON YPZL.YPDH=SHOETEST.YPDH ');
      SQL.Add('left join GamePlan on GamePlan.Season=KFXXZL.JiJie and GamePlan.Stage=YPZL.KFJD ');
      SQL.Add('WHERE KFXXZL.JiJie LIKE ''%' + CB_SEASON.Text + '%''');
      SQL.Add('AND KFXXZL.DevCode IN (');
      SQL.Add('  SELECT KFXXZL.DevCode FROM KFXXZL');
      SQL.Add('  LEFT JOIN YPZL ON YPZL.XieXing = KFXXZL.XieXing AND YPZL.SheHao = KFXXZL.SheHao');
      SQL.Add('  WHERE KFXXZL.khdh = (select KHBH from kfzl_GS where GSBH = '''+ComboBox1.Text+''') AND kfjd <> ''SEE'' AND KFXXZL.JiJie LIKE ''%' + CB_SEASON.Text + '%''');
      SQL.Add('  GROUP BY KFXXZL.DevCode');
      SQL.Add(')');
      if (CB_NNULL.Checked) then
      begin
        SQL.Add('AND KFXXZL.Xieming NOT LIKE ''%NULLIFY%''');
        SQL.Add('AND KFXXZL.Xieming NOT LIKE ''%NULIFY%''');
      end;
      SQL.Add('AND KFXXZL.DevCode <> ''''');
      SQL.Add('AND kfzl_GS.GSBH= ''' + ComboBox1.Text + '''');
      SQL.Add('AND YPZL.KFJD IN (' + Stage + ')');
      if (CB_DEVTYPE.Text <> '') then
        SQL.Add('AND KFXXZL.DevType LIKE ''%' + CB_DEVTYPE.Text + '%''');
      if (ED_SR.Text <> '') then
        SQL.Add('AND KFXXZL.DevCode LIKE ''%' + ED_SR.Text + '%''');
      if (ED_SKU.Text <> '') then
        SQL.Add('AND KFXXZL.Article LIKE ''%' + ED_SKU.Text + '%''');
      if (CB_FD.Text <> '') then
        SQL.Add('AND YPZL.FD = ''' + CB_FD.Text + '''');
      if (PageControl1.ActivePageIndex = 1) then
        SQL.Add('AND (YPZL.YPDH LIKE ''LAIK%'' OR YPZL.YPDH LIKE ''BYIK%'')')
      else if (PageControl1.ActivePageIndex = 2) then
        SQL.Add('AND (YPZL.YPDH LIKE ''LAIK%'' OR YPZL.YPDH LIKE ''BYIV%'')')
      else if (PageControl1.ActivePageIndex = 3) then
        SQL.Add('AND (YPZL.YPDH LIKE ''LAIK%'' OR YPZL.YPDH LIKE ''BYIK%'')')
      else if (PageControl1.ActivePageIndex = 4) then
        SQL.Add('AND (YPZL.YPDH LIKE ''LAIK%'' OR YPZL.YPDH LIKE ''BYIK%'')');
      if (CB_TEAM.Text <> '') then
      begin
        if (CB_TEAM.Text = 'A') then SQL.Add('AND FDGroups.FDTeam = ''A''')
        else if (CB_TEAM.Text = 'B') then SQL.Add('AND FDGroups.FDTeam = ''B''')
        else if (CB_TEAM.Text = 'C') then SQL.Add('AND FDGroups.FDTeam = ''C''')
        else if (CB_TEAM.Text = 'SMU') then SQL.Add('AND FDGroups.FDTeam = ''SMU''');
      end;
      {if (CB_DATA.Text <> '') then
      begin
        if (CB_DATA.Text = 'new') then SQL.Add('AND XXZLKF.UserID IS NULL')
        else if (CB_DATA.Text = 'Dropped') then
        begin
          if (PageControl1.ActivePageIndex = 1) then SQL.Add('AND (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail = ''R1'')')
          else if (PageControl1.ActivePageIndex = 2) then SQL.Add('AND (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail = ''R2'')')
          else if (PageControl1.ActivePageIndex = 3) then SQL.Add('AND (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail = ''R3'')')
          else if (PageControl1.ActivePageIndex = 4) then SQL.Add('AND (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail = ''R4'')');
        end
        else if (CB_DATA.Text = 'NoDropped') then
        begin
          if (PageControl1.ActivePageIndex = 1) then SQL.Add('AND (ISNULL(XXZLKF.Dropped, 0) = 0 OR (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail IN (''R2'',''R3'',''R4'',''PC'')))')
          else if (PageControl1.ActivePageIndex = 2) then SQL.Add('AND (ISNULL(XXZLKF.Dropped, 0) = 0 OR (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail IN (''R3'',''R4'',''PC'')))')
          else if (PageControl1.ActivePageIndex = 3) then SQL.Add('AND (ISNULL(XXZLKF.Dropped, 0) = 0 OR (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail IN (''R4'',''PC'')))')
          else if (PageControl1.ActivePageIndex = 4) then SQL.Add('AND (ISNULL(XXZLKF.Dropped, 0) = 0 OR (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail IN (''PC'')))');
        end
        else if (CB_DATA.Text = 'Transfer') then SQL.Add('AND XXZLKF.Transfer = ''1''')
        else if (CB_DATA.Text = 'NoTransfer') then SQL.Add('AND ISNULL(XXZLKF.Transfer, ''0'') = ''0''')
        else if (CB_DATA.Text = 'no_ok') then SQL.Add('AND ISNULL(XXZLKF.YN, ''0'') = ''0''')
        else if (CB_DATA.Text = 'ok') then SQL.Add('AND XXZLKF.YN = ''1''');
      end; }
      if (CheckBox5.Checked = true) or (CheckBox6.Checked = true) or (CheckBox7.Checked = true) or (CheckBox8.Checked = true) or (CheckBox9.Checked = true) then begin
        SQL.Add('AND ( '+SQL1+' ) ');
      end;

{      if (CheckBox5.Checked = true) and (CheckBox6.Checked = true) then
      begin
         if (PageControl1.ActivePageIndex = 1) then
            SQL.Add('AND XXZLKF.Dropped in (''1'',ISNULL(XXZLKF.Dropped,''0'')) AND XXZLKF.DropDetail IN (''R1'',''R2'',''R3'',''R4'',''PC'')')
         else if (PageControl1.ActivePageIndex = 2) then
            SQL.Add('AND XXZLKF.Dropped in (''1'',ISNULL(XXZLKF.Dropped,''0'')) AND XXZLKF.DropDetail IN (''R2'',''R3'',''R4'',''PC'')')
         else if (PageControl1.ActivePageIndex = 3) then
            SQL.Add('AND XXZLKF.Dropped in (''1'',ISNULL(XXZLKF.Dropped,''0'')) AND XXZLKF.DropDetail IN (''R3'',''R4'',''PC'')')
         else if (PageControl1.ActivePageIndex = 4) then
            SQL.Add('AND XXZLKF.Dropped in (''1'',ISNULL(XXZLKF.Dropped,''0'')) AND XXZLKF.DropDetail IN (''R4'',''PC'')');
      end else
      if (CheckBox5.Checked = true) or (CheckBox6.Checked = true) then
      begin
        if (CheckBox5.Checked = true) then
        begin
          if (PageControl1.ActivePageIndex = 1) then SQL.Add('AND (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail = ''R1'')')
          else if (PageControl1.ActivePageIndex = 2) then SQL.Add('AND (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail = ''R2'')')
          else if (PageControl1.ActivePageIndex = 3) then SQL.Add('AND (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail = ''R3'')')
          else if (PageControl1.ActivePageIndex = 4) then SQL.Add('AND (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail = ''R4'')');
        end;
        if (CheckBox6.Checked = true) then
        begin
          if (PageControl1.ActivePageIndex = 1) then SQL.Add('AND (ISNULL(XXZLKF.Dropped, 0) = 0 OR (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail IN (''R2'',''R3'',''R4'',''PC'')))')
          else if (PageControl1.ActivePageIndex = 2) then SQL.Add('AND (ISNULL(XXZLKF.Dropped, 0) = 0 OR (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail IN (''R3'',''R4'',''PC'')))')
          else if (PageControl1.ActivePageIndex = 3) then SQL.Add('AND (ISNULL(XXZLKF.Dropped, 0) = 0 OR (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail IN (''R4'',''PC'')))')
          else if (PageControl1.ActivePageIndex = 4) then SQL.Add('AND (ISNULL(XXZLKF.Dropped, 0) = 0 OR (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail IN (''PC'')))');
        end;
      end;
      if (CheckBox7.Checked = true) then
        SQL.Add('AND XXZLKF.TransferIn = ''1''');
      if (CheckBox8.Checked = true) then
        SQL.Add('AND XXZLKF.Transfer = ''1''');
      if (CheckBox9.Checked = true) then
        SQL.Add('AND XXZLKF.HOLD = ''1''');   }
      if ComboBox1.Text = 'CDC' then
        SQL.Add('AND LEN(' + TargetTable + '.SheHao) = 2');
      SQL.Add('group by ' + TargetTable + '.XieXing, ' + TargetTable + '.SheHao, KFXXZL.XieMing, KFXXZL.DevCode, KFXXZL.ARTICLE, KFXXZL.JiJie, ' + TargetTable + '.TPDate, ' + TargetTable + '.Status, ' + TargetTable + '.RSD, ' + TargetTable + '.UserID, ' + TargetTable + '.UserDate,KFXXZL.YSSM');
      SQL.Add(',DelDate,recheckdate,' + TargetTable + '.DFMEA,' + TargetTable + '.Latest_MTRL_ETADate');
      SQL.Add(',recieveDate,shoetestplan.C_ETA,SHOETEST.preparationDate,GamePlan.CTS_TP_DEADLINE');
      SQL.Add('ORDER BY ' + TargetTable + '.XieXing, ' + TargetTable + '.SheHao');
      //funcobj.WriteErrorLog(sql.Text);
      Active := true;
    end;
  end;
  BB4.Enabled := true;
  BB8.Enabled := true;
end;

procedure TBasicInformation.BB4Click(Sender: TObject);
var
  TargetQuery: TQuery;
begin
  if (PageControl1.ActivePageIndex = 0) then
  begin
    TargetQuery := Query1;
  end
  else if (PageControl1.ActivePageIndex = 1) then
  begin
    TargetQuery := Query2;
    DBGridEh2.Columns[6].ButtonStyle := cbsDropDown;
    DBGridEh2.Columns[8].ReadOnly := false;
    DBGridEh2.Columns[9].ButtonStyle := cbsDropDown;
  end
  else if (PageControl1.ActivePageIndex = 2) then
  begin
    TargetQuery := Query3;
    DBGridEh3.Columns[6].ButtonStyle := cbsDropDown;
    DBGridEh3.Columns[8].ReadOnly := false;
    DBGridEh3.Columns[9].ButtonStyle := cbsDropDown;
  end
  else if (PageControl1.ActivePageIndex = 3) then
  begin
    TargetQuery := Query4;
    DBGridEh4.Columns[6].ButtonStyle := cbsDropDown;
    DBGridEh4.Columns[8].ReadOnly := false;
    DBGridEh4.Columns[9].ButtonStyle := cbsDropDown;
  end
  else if (PageControl1.ActivePageIndex = 4) then
  begin
    TargetQuery := Query5;
    DBGridEh5.Columns[6].ButtonStyle := cbsDropDown;
    DBGridEh5.Columns[7].ReadOnly := false;
    DBGridEh5.Columns[8].ButtonStyle := cbsDropDown;
  end;

  with TargetQuery do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Edit;
  end;

  BB4.Enabled := false;
  BB7.Enabled := false;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TBasicInformation.BB5Click(Sender: TObject);
var
  TargetQuery: TQuery;
  TargetUpdateSQL: TUpdateSQL;
  NDate: TDate;
  i: integer;
begin
  with QSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT GetDate() AS NDate');
    Active := true;
    NDate := FieldByName('Ndate').Value;
  end;

  if (PageControl1.ActivePageIndex = 0) then
  begin
    TargetQuery := Query1;
    TargetUpdateSQL := UpdateSQL1;
  end
  else if (PageControl1.ActivePageIndex = 1) then
  begin
    TargetQuery := Query2;
    TargetUpdateSQL := UpdateSQL2;
    DBGridEh2.Columns[6].ButtonStyle := cbsNone;
    DBGridEh2.Columns[8].ReadOnly := true;
    DBGridEh2.Columns[9].ButtonStyle := cbsNone;
  end
  else if (PageControl1.ActivePageIndex = 2) then
  begin
    TargetQuery := Query3;
    TargetUpdateSQL := UpdateSQL3;    
    DBGridEh3.Columns[6].ButtonStyle := cbsNone;
    DBGridEh3.Columns[8].ReadOnly := true;
    DBGridEh3.Columns[9].ButtonStyle := cbsNone;
  end
  else if (PageControl1.ActivePageIndex = 3) then
  begin
    TargetQuery := Query4;
    TargetUpdateSQL := UpdateSQL4;
    DBGridEh4.Columns[6].ButtonStyle := cbsNone;
    DBGridEh4.Columns[8].ReadOnly := true;
    DBGridEh4.Columns[9].ButtonStyle := cbsNone;
  end
  else if (PageControl1.ActivePageIndex = 4) then
  begin
    TargetQuery := Query5;
    TargetUpdateSQL := UpdateSQL5;
    DBGridEh5.Columns[6].ButtonStyle := cbsNone;
    DBGridEh5.Columns[7].ReadOnly := true;
    DBGridEh5.Columns[8].ButtonStyle := cbsNone;
  end;

  try
    TargetQuery.CachedUpdates := true;
    TargetQuery.RequestLive := true;
    TargetQuery.First;
    for i:=1 to TargetQuery.RecordCount do
    begin
      case TargetQuery.UpdateStatus of
      usModified:
        begin
          TargetQuery.Edit;
          TargetQuery.FieldByName('UserDate').Value := Ndate;
          TargetQuery.FieldByName('UserID').Value := UserName;
          TargetUpdateSQL.apply(ukModify);
        end;
      end;
      TargetQuery.Next;
    end;
    TargetQuery.Active := false;
    TargetQuery.CachedUpdates := false;
    TargetQuery.RequestLive := false;
    TargetQuery.Active := true;
    BB4.Enabled := true;
    BB7.Enabled := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
  except
    MessageDlg('Have wrong, can not save!', mtWarning, [mbYes], 0);
  end;
end;

procedure TBasicInformation.BB6Click(Sender: TObject);
var
  TargetQuery: TQuery;
begin
  if (PageControl1.ActivePageIndex = 0) then
  begin
    TargetQuery := Query1;
  end
  else if (PageControl1.ActivePageIndex = 1) then
  begin
    TargetQuery := Query2;
    DBGridEh2.Columns[6].ButtonStyle := cbsNone;
    DBGridEh2.Columns[8].ReadOnly := true;
    DBGridEh2.Columns[9].ButtonStyle := cbsNone;
  end
  else if (PageControl1.ActivePageIndex = 2) then
  begin
    TargetQuery := Query3;
    DBGridEh3.Columns[6].ButtonStyle := cbsNone;  
    DBGridEh3.Columns[8].ReadOnly := true;
    DBGridEh3.Columns[9].ButtonStyle := cbsNone;
  end
  else if (PageControl1.ActivePageIndex = 3) then
  begin
    TargetQuery := Query4;
    DBGridEh4.Columns[6].ButtonStyle := cbsNone;
    DBGridEh4.Columns[8].ReadOnly := true;
    DBGridEh4.Columns[9].ButtonStyle := cbsNone;
  end
  else if (PageControl1.ActivePageIndex = 4) then
  begin
    TargetQuery := Query5;
    DBGridEh5.Columns[6].ButtonStyle := cbsNone;
    DBGridEh5.Columns[7].ReadOnly := true;
    DBGridEh5.Columns[8].ButtonStyle := cbsNone;
  end;

  with TargetQuery do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;
  BB4.Enabled := true;
  BB7.Enabled := true;
  BB5.Enabled := false;
  BB6.Enabled := false;
end;
       
procedure TBasicInformation.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TBasicInformation.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  if (BB5.Enabled) then
  begin
    MessageDlg('Please save your data first !', mtWarning, [mbYes], 0);
    AllowChange := false;
  end;
end;

procedure TBasicInformation.PageControl1Change(Sender: TObject);
var
  TargetQuery: TQuery;
  TargetTable, Stage: string;
  Flag: Boolean;
begin
  Flag := BB4.Enabled;

  if (PageControl1.ActivePageIndex = 0) then
  begin
    Flag := false;
  end
  else if (PageControl1.ActivePageIndex = 1) then
  begin
    TargetQuery := Query2;
    TargetTable := 'R1Sample';
    Stage := '''CR1''';
  end
  else if (PageControl1.ActivePageIndex = 2) then
  begin
    TargetQuery := Query3;
    TargetTable := 'R2Sample';
    Stage := '''CR2''';
  end
  else if (PageControl1.ActivePageIndex = 3) then
  begin
    TargetQuery := Query4;
    TargetTable := 'R3Sample';
    Stage := '''CR3'',''SMS''';
  end
  else if (PageControl1.ActivePageIndex = 4) then
  begin
    TargetQuery := Query5;
    TargetTable := 'R4Sample';
    Stage := '''CR4''';
  end
  else if (PageControl1.ActivePageIndex = 5) then
  begin
    Flag := false;
  end;

  if (Flag) then
  begin
    with TargetQuery do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT ' + TargetTable + '.XieXing, ' + TargetTable + '.SheHao, KFXXZL.XieMing, KFXXZL.DevCode, KFXXZL.ARTICLE, KFXXZL.JiJie, ' + TargetTable + '.TPDate, ' + TargetTable + '.Status, ' + TargetTable + '.RSD, ' + TargetTable + '.UserID, ' + TargetTable + '.UserDate,KFXXZL.YSSM');
      SQL.Add(',DelDate as ''BOM Date'',recheckdate as ''Develop Date'',' + TargetTable + '.DFMEA,' + TargetTable + '.Latest_MTRL_ETADate');
      SQL.Add(',recieveDate as ''Purchase Date'',case when (shoetestplan.C_ETA is not null and  shoetestplan.C_ETA <> '''') then shoetestplan.C_ETA else ''OK'' end as  ''MTRL In Coming Date'' ' );
      SQL.Add(',SHOETEST.preparationDate as ''Warehouse Scan Date'',GamePlan.CTS_TP_DEADLINE,'''' as ''TPlate''');
      SQL.Add('FROM ' + TargetTable);
      SQL.Add('LEFT JOIN KFXXZL ON KFXXZL.XieXing = ' + TargetTable + '.XieXing AND KFXXZL.SheHao = ' + TargetTable + '.SheHao');
      SQL.Add('LEFT JOIN XXZLKF ON XXZLKF.XieXing = ' + TargetTable + '.XieXing AND XXZLKF.SheHao = ' + TargetTable + '.SheHao');
      SQL.Add('LEFT JOIN FDGroups ON FDGroups.FDName = KFXXZL.FD');
      SQL.Add('LEFT JOIN KFZL_GS ON KFZL_GS.KHBH = KFXXZL.KHDH');
      SQL.Add('LEFT JOIN YPZL ON YPZL.XieXing = ' + TargetTable + '.XieXing AND YPZL.SheHao = ' + TargetTable + '.SheHao');
      SQL.Add('LEFT JOIN shoetestplan on shoetestplan.ypdh=YPZL.ypdh');
      SQL.Add('Left Join SHOETEST ON YPZL.YPDH=SHOETEST.YPDH ');
      SQL.Add('left join GamePlan on GamePlan.Season=KFXXZL.JiJie and GamePlan.Stage=YPZL.KFJD ');
      SQL.Add('WHERE KFXXZL.JiJie LIKE ''%' + CB_SEASON.Text + '%''');
      SQL.Add('AND KFXXZL.DevCode IN (');
      SQL.Add('  SELECT KFXXZL.DevCode FROM KFXXZL');
      SQL.Add('  LEFT JOIN YPZL ON YPZL.XieXing = KFXXZL.XieXing AND YPZL.SheHao = KFXXZL.SheHao');
      SQL.Add('  WHERE KFXXZL.khdh = (select KHBH from kfzl_GS where GSBH = '''+ComboBox1.Text+''') AND kfjd <> ''SEE'' AND KFXXZL.JiJie LIKE ''%' + CB_SEASON.Text + '%''');
      SQL.Add('  GROUP BY KFXXZL.DevCode ');
      SQL.Add(')');
      if (CB_NNULL.Checked) then
      begin
        SQL.Add('AND KFXXZL.Xieming NOT LIKE ''%NULLIFY%''');
        SQL.Add('AND KFXXZL.Xieming NOT LIKE ''%NULIFY%''');
      end;
      SQL.Add('AND KFXXZL.DevCode <> ''''');
      SQL.Add('AND kfzl_GS.GSBH= ''' + main.Edit2.Text + '''');
      SQL.Add('AND YPZL.KFJD IN (' + Stage + ')');
      if (CB_DEVTYPE.Text <> '') then
        SQL.Add('AND KFXXZL.DevType LIKE ''%' + CB_DEVTYPE.Text + '%''');
      if (ED_SR.Text <> '') then
        SQL.Add('AND KFXXZL.DevCode LIKE ''%' + ED_SR.Text + '%''');
      if (ED_SKU.Text <> '') then
        SQL.Add('AND KFXXZL.Article LIKE ''%' + ED_SKU.Text + '%''');
      if (CB_FD.Text <> '') then
        SQL.Add('AND YPZL.FD = ''' + CB_FD.Text + '''');
      if (PageControl1.ActivePageIndex = 1) then
        SQL.Add('AND (YPZL.YPDH LIKE ''LAIK%'' OR YPZL.YPDH LIKE ''BYIK%'')')
      else if (PageControl1.ActivePageIndex = 2) then
        SQL.Add('AND (YPZL.YPDH LIKE ''LAIK%'' OR YPZL.YPDH LIKE ''BYIV%'')')
      else if (PageControl1.ActivePageIndex = 3) then
        SQL.Add('AND (YPZL.YPDH LIKE ''LAIK%'' OR YPZL.YPDH LIKE ''BYIK%'')')
      else if (PageControl1.ActivePageIndex = 4) then
        SQL.Add('AND (YPZL.YPDH LIKE ''LAIK%'' OR YPZL.YPDH LIKE ''BYIK%'')');
      if (CB_TEAM.Text <> '') then
      begin
        if (CB_TEAM.Text = 'A') then SQL.Add('AND FDGroups.FDTeam = ''A''')
        else if (CB_TEAM.Text = 'B') then SQL.Add('AND FDGroups.FDTeam = ''B''')
        else if (CB_TEAM.Text = 'C') then SQL.Add('AND FDGroups.FDTeam = ''C''')
        else if (CB_TEAM.Text = 'SMU') then SQL.Add('AND FDGroups.FDTeam = ''SMU''');
      end;
      {if (CB_DATA.Text <> '') then
      begin
        if (CB_DATA.Text = 'new') then SQL.Add('AND XXZLKF.UserID IS NULL')
        else if (CB_DATA.Text = 'Dropped') then
        begin
          if (PageControl1.ActivePageIndex = 1) then SQL.Add('AND (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail = ''R1'')')
          else if (PageControl1.ActivePageIndex = 2) then SQL.Add('AND (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail = ''R2'')')
          else if (PageControl1.ActivePageIndex = 3) then SQL.Add('AND (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail = ''R3'')')
          else if (PageControl1.ActivePageIndex = 4) then SQL.Add('AND (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail = ''R4'')');
        end
        else if (CB_DATA.Text = 'NoDropped') then
        begin
          if (PageControl1.ActivePageIndex = 1) then SQL.Add('AND (ISNULL(XXZLKF.Dropped, 0) = 0 OR (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail IN (''R2'',''R3'',''R4'',''PC'')))')
          else if (PageControl1.ActivePageIndex = 2) then SQL.Add('AND (ISNULL(XXZLKF.Dropped, 0) = 0 OR (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail IN (''R3'',''R4'',''PC'')))')
          else if (PageControl1.ActivePageIndex = 3) then SQL.Add('AND (ISNULL(XXZLKF.Dropped, 0) = 0 OR (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail IN (''R4'',''PC'')))')
          else if (PageControl1.ActivePageIndex = 4) then SQL.Add('AND (ISNULL(XXZLKF.Dropped, 0) = 0 OR (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail IN (''PC'')))');
        end
        else if (CB_DATA.Text = 'Transfer') then SQL.Add('AND XXZLKF.Transfer = ''1''')
        else if (CB_DATA.Text = 'NoTransfer') then SQL.Add('AND ISNULL(XXZLKF.Transfer, ''0'') = ''0''')
        else if (CB_DATA.Text = 'no_ok') then SQL.Add('AND ISNULL(XXZLKF.YN, ''0'') = ''0''')
        else if (CB_DATA.Text = 'ok') then SQL.Add('AND XXZLKF.YN = ''1''');
      end; }
      if (CheckBox5.Checked = true) and (CheckBox6.Checked = true) then
      begin
         if (PageControl1.ActivePageIndex = 1) then
            SQL.Add('AND XXZLKF.Dropped in (''1'',ISNULL(XXZLKF.Dropped,''0'')) AND XXZLKF.DropDetail IN (''R1'',''R2'',''R3'',''R4'',''PC'')')
         else if (PageControl1.ActivePageIndex = 2) then
            SQL.Add('AND XXZLKF.Dropped in (''1'',ISNULL(XXZLKF.Dropped,''0'')) AND XXZLKF.DropDetail IN (''R2'',''R3'',''R4'',''PC'')')
         else if (PageControl1.ActivePageIndex = 3) then
            SQL.Add('AND XXZLKF.Dropped in (''1'',ISNULL(XXZLKF.Dropped,''0'')) AND XXZLKF.DropDetail IN (''R3'',''R4'',''PC'')')
         else if (PageControl1.ActivePageIndex = 4) then
            SQL.Add('AND XXZLKF.Dropped in (''1'',ISNULL(XXZLKF.Dropped,''0'')) AND XXZLKF.DropDetail IN (''R4'',''PC'')');
      end else
      if (CheckBox5.Checked = true) or (CheckBox6.Checked = true) then
      begin
        if (CheckBox5.Checked = true) then
        begin
          if (PageControl1.ActivePageIndex = 1) then SQL.Add('AND (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail = ''R1'')')
          else if (PageControl1.ActivePageIndex = 2) then SQL.Add('AND (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail = ''R2'')')
          else if (PageControl1.ActivePageIndex = 3) then SQL.Add('AND (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail = ''R3'')')
          else if (PageControl1.ActivePageIndex = 4) then SQL.Add('AND (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail = ''R4'')');
        end;
        if (CheckBox6.Checked = true) then
        begin
          if (PageControl1.ActivePageIndex = 1) then SQL.Add('AND (ISNULL(XXZLKF.Dropped, 0) = 0 OR (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail IN (''R2'',''R3'',''R4'',''PC'')))')
          else if (PageControl1.ActivePageIndex = 2) then SQL.Add('AND (ISNULL(XXZLKF.Dropped, 0) = 0 OR (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail IN (''R3'',''R4'',''PC'')))')
          else if (PageControl1.ActivePageIndex = 3) then SQL.Add('AND (ISNULL(XXZLKF.Dropped, 0) = 0 OR (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail IN (''R4'',''PC'')))')
          else if (PageControl1.ActivePageIndex = 4) then SQL.Add('AND (ISNULL(XXZLKF.Dropped, 0) = 0 OR (XXZLKF.Dropped = 1 AND XXZLKF.DropDetail IN (''PC'')))');
        end;
      end;
      if (CheckBox7.Checked = true) then
        SQL.Add('AND XXZLKF.TransferIn = ''1''');
      if (CheckBox8.Checked = true) then
        SQL.Add('AND XXZLKF.Transfer = ''1''');
      if (CheckBox9.Checked = true) then
        SQL.Add('AND XXZLKF.HOLD = ''1''');
      SQL.Add('AND LEN(' + TargetTable + '.SheHao) = 2');
      SQL.Add('group by ' + TargetTable + '.XieXing, ' + TargetTable + '.SheHao, KFXXZL.XieMing, KFXXZL.DevCode, KFXXZL.ARTICLE, KFXXZL.JiJie, ' + TargetTable + '.TPDate, ' + TargetTable + '.Status, ' + TargetTable + '.RSD, ' + TargetTable + '.UserID, ' + TargetTable + '.UserDate,KFXXZL.YSSM');
      SQL.Add(',DelDate,recheckdate,' + TargetTable + '.DFMEA,' + TargetTable + '.Latest_MTRL_ETADate');
      SQL.Add(',recieveDate,shoetestplan.C_ETA,SHOETEST.preparationDate,GamePlan.CTS_TP_DEADLINE');
      SQL.Add('ORDER BY ' + TargetTable + '.XieXing, ' + TargetTable + '.SheHao');
      //funcobj.WriteErrorLog(sql.Text);
      Active := true;
    end;
  end;
end;

procedure TBasicInformation.BB8Click(Sender: TObject);
var
  eclApp, WorkBook, GSheet: OleVariant;
  Col, Row: Integer;
  TargetQuery: TQuery;
  TargetGrid: TDBGridEh;
begin
  try
    eclApp := CreateOleObject('Excel.Application');
    WorkBook := CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook := eclApp.workbooks.Add;
    eclapp.workbooks[1].sheets.Add;
    GSheet := eclapp.workbooks[1].sheets[1];

    if (PageControl1.ActivePageIndex = 0) then
    begin
      TargetQuery := Query1;
      TargetGrid := DBGridEh1;
    end
    else if (PageControl1.ActivePageIndex = 1) then
    begin
      TargetQuery := Query2;
      TargetGrid := DBGridEh2;
    end
    else if (PageControl1.ActivePageIndex = 2) then
    begin
      TargetQuery := Query3;
      TargetGrid := DBGridEh3;
    end
    else if (PageControl1.ActivePageIndex = 3) then
    begin
      TargetQuery := Query4;
      TargetGrid := DBGridEh4;
    end
    else if (PageControl1.ActivePageIndex = 4) then
    begin
      TargetQuery := Query5;
      TargetGrid := DBGridEh5;
    end
    else if (PageControl1.ActivePageIndex = 5) then
    begin
      TargetQuery := Query6;
      TargetGrid := DBGridEh6;
    end;

    for Col := 1 to TargetGrid.FieldCount do
    begin
      GSheet.Cells[1, Col] := TargetGrid.Columns[Col-1].Title.Caption;
    end;

    TargetQuery.First;
    Row := 2;
    while not TargetQuery.Eof do
    begin
      for Col := 1 to TargetGrid.FieldCount do
      begin              
        GSheet.Cells[Row, Col].NumberFormatLocal := '@';
        GSheet.Cells[Row, Col] := TargetQuery.FieldByName(TargetGrid.Columns[Col-1].FieldName).AsString;
      end;

      Inc(Row);
      TargetQuery.Next;
    end;

    eclApp.Cells.EntireColumn.AutoFit;
    ShowMessage('Succeed!!');
    eclApp.Visible := True;
  except on F:Exception do
    ShowMessage(F.Message);
  end;
end;

procedure TBasicInformation.DBGridEh1Columns6UpdateData(Sender: TObject;
  var Text: String; var Value: Variant; var UseText, Handled: Boolean);
begin
  if (Value = 0) then
    Query1.FieldByName('DropDetail').Value := '';
end;

procedure TBasicInformation.DBGridEh1Columns7UpdateData(Sender: TObject;
  var Text: String; var Value: Variant; var UseText, Handled: Boolean);
begin
  if (Value <> '') then
    Query1.FieldByName('Dropped').Value := 1;
end;
   
procedure TBasicInformation.DBGridEhColumns6EditButtonClick(
  Sender: TObject; var Handled: Boolean);
var
  TargetQuery: TQuery;
  TempDate: string;
  fs: TFormatSettings;
begin
  if (PageControl1.ActivePageIndex = 1) then TargetQuery := Query2
  else if (PageControl1.ActivePageIndex = 2) then TargetQuery := Query3
  else if (PageControl1.ActivePageIndex = 3) then TargetQuery := Query4
  else if (PageControl1.ActivePageIndex = 4) then TargetQuery := Query5;

  if (TargetQuery.FieldByName('TPDate').AsString <> '') then
  begin
    TempDate := StringReplace(TargetQuery.FieldByName('TPDate').AsString, '-', '/', [rfReplaceAll]);
    fs.DateSeparator := '/';
    fs.ShortDateFormat := 'MM/dd/yyyy';
    MC1.Date := StrToDateTime(TempDate, fs);
  end
  else begin
    MC1.Date := Date;
  end;

  Panel2.Left := Mouse.CursorPos.X + 15;
  Panel2.Top := Mouse.CursorPos.Y - 25;
  Mode := 'TPDate';
  Panel2.Visible := true;
end;

procedure TBasicInformation.DBGridEhColumns8EditButtonClick(
  Sender: TObject; var Handled: Boolean);
var
  TargetQuery: TQuery;
  TempDate: string;
  fs: TFormatSettings;
begin
  if (PageControl1.ActivePageIndex = 1) then TargetQuery := Query2
  else if (PageControl1.ActivePageIndex = 2) then TargetQuery := Query3
  else if (PageControl1.ActivePageIndex = 3) then TargetQuery := Query4
  else if (PageControl1.ActivePageIndex = 4) then TargetQuery := Query5;

  if (TargetQuery.FieldByName('RSD').AsString <> '') then
  begin
    TempDate := StringReplace(TargetQuery.FieldByName('TPDate').AsString, '-', '/', [rfReplaceAll]);
    fs.DateSeparator := '/';
    fs.ShortDateFormat := 'MM/dd/yyyy';
    MC1.Date := StrToDateTime(TempDate, fs);
  end
  else begin
    MC1.Date := Date;
  end;

  Panel2.Left := Mouse.CursorPos.X + 15;
  Panel2.Top := Mouse.CursorPos.Y - 25;
  Mode := 'RSDate';
  Panel2.Visible := true;
end;

procedure TBasicInformation.DBGridEhMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Panel2.Visible := false;
end;

procedure TBasicInformation.MC1DblClick(Sender: TObject);
var
  TargetQuery: TQuery;
begin
  if (PageControl1.ActivePageIndex = 1) then TargetQuery := Query2
  else if (PageControl1.ActivePageIndex = 2) then TargetQuery := Query3
  else if (PageControl1.ActivePageIndex = 3) then TargetQuery := Query4
  else if (PageControl1.ActivePageIndex = 4) then TargetQuery := Query5;

  TargetQuery.Edit;
  if (Mode = 'TPDate') then
  begin
    TargetQuery.FieldByName('TPDate').Value := FormatDateTime('MM/dd/yyyy', MC1.Date);
  end else
  if (Mode = 'RSDate') then
    TargetQuery.FieldByName('RSD').Value := FormatDateTime('MM/dd/yyyy', MC1.Date);
  Panel2.Visible := false;
end;

procedure TBasicInformation.QueryAfterOpen(DataSet: TDataSet);
begin
  Panel2.Visible := false;
end;

procedure TBasicInformation.QueryAfterScroll(DataSet: TDataSet);
begin
  Panel2.Visible := false;
end;

procedure TBasicInformation.Query4CalcFields(DataSet: TDataSet);
begin
   if (Query4.FieldByName('TPDate').AsString <> '') and (Query4.FieldByName('CTS_TP_DEADLINE').AsString <> '' ) and (Query4.FieldByName('TPDate').AsString >formatdatetime('MM/dd/yyyy',Query4.FieldByName('CTS_TP_DEADLINE').Value)) then
      Query4.FieldByName('TPlate').Value := '1'// 'true'
   else
      Query4.FieldByName('TPlate').Value := '0';// 'false'
end;

procedure TBasicInformation.Query3CalcFields(DataSet: TDataSet);
begin
   if (Query3.FieldByName('TPDate').AsString <> '') and (Query3.FieldByName('CTS_TP_DEADLINE').AsString <> '' ) and (Query3.FieldByName('TPDate').AsString >formatdatetime('MM/dd/yyyy',Query3.FieldByName('CTS_TP_DEADLINE').Value)) then
      Query3.FieldByName('TPlate').Value := '1'// 'true'
   else
      Query3.FieldByName('TPlate').Value := '0';// 'false'
end;

procedure TBasicInformation.Query2CalcFields(DataSet: TDataSet);
begin
   if (Query2.FieldByName('TPDate').AsString <> '') and (Query2.FieldByName('CTS_TP_DEADLINE').AsString <> '' ) and (Query2.FieldByName('TPDate').AsString >formatdatetime('MM/dd/yyyy',Query2.FieldByName('CTS_TP_DEADLINE').Value)) then
      Query2.FieldByName('TPlate').Value := '1'// 'true'
   else
      Query2.FieldByName('TPlate').Value := '0';// 'false'
end;

procedure TBasicInformation.ImportETCBtnClick(Sender: TObject);
var OrderListExcel:Variant;
    ColumnNM,OrderExcFN,Planning,ID,Segment,TechLevel,TSP,TSP_Dev:string;
    offset,RowSIndex:integer;
    Planning_index,ID_index:integer;
    Segment_index,TechLevel_index:integer;
    TSP_index,TSPDev_index:integer;
    Isbreak:boolean;
    DesRange:Variant;
begin
    try
      //開啟Excel OLE
      OrderListExcel:=CreateOleObject('Excel.Application');
    except
      on E:Exception do
      begin
        Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK+MB_ICONWarning);
        EXIT;
      end;
    end;
    try
      if OpenDialog.Execute=true then
      begin
        Planning_index:=-1;
        ID_index:=-1;
        //開啟Excel
        OrderExcFN:=OpenDialog.FileName;//Excel檔案名稱 備份複製用
        OrderListExcel.WorkBooks.Open(OpenDialog.FileName);
        OrderListExcel.WorkSheets[1].Activate;//第一頁為主
        //
        offset:=1;
        RowSIndex:=1;
        //找到紀錄Excel 欄位是在哪一列

        DesRange:=OrderListExcel.WorkBooks[1].WorkSheets[1].rows[offset+RowSIndex].find('Colorway ID');
        if not VarIsClear(DesRange)  then
          ID_index:=StrToInt(DesRange.Column)
        else
          begin
            showmessage('Colorway ID not found in excel');
            Exit;
        end;
        DesRange:=OrderListExcel.WorkBooks[1].WorkSheets[1].rows[offset+RowSIndex].find('Planning Level 2');
        if not VarIsClear(DesRange)  then
          Planning_index:=StrToInt(DesRange.Column)
        else
          begin
            showmessage('Planning Level 2 not found in excel');
            Exit;
        end;
        DesRange:=OrderListExcel.WorkBooks[1].WorkSheets[1].rows[offset+RowSIndex].find('Segment');
        if not VarIsClear(DesRange)  then
          Segment_index:=StrToInt(DesRange.Column)
        else
          begin
            showmessage('Segment not found in excel');
            Exit;
        end;
        DesRange:=OrderListExcel.WorkBooks[1].WorkSheets[1].rows[offset+RowSIndex].find('Tech Level');
        if not VarIsClear(DesRange)  then
          TechLevel_index:=StrToInt(DesRange.Column)
        else
          begin
            showmessage('Tech Level not found in excel');
            Exit;
        end;
        DesRange:=OrderListExcel.WorkBooks[1].WorkSheets[1].rows[offset+RowSIndex].find('Target Sample Price');
        if not VarIsClear(DesRange)  then
          TSP_index:=StrToInt(DesRange.Column)
        else
          begin
            showmessage('Tech Level not found in excel');
            Exit;
        end;
        DesRange:=OrderListExcel.WorkBooks[1].WorkSheets[1].rows[offset+RowSIndex].find('Development TSP');
        if not VarIsClear(DesRange)  then
          TSPDev_index:=StrToInt(DesRange.Column)
        else
          begin
            showmessage('Tech Level not found in excel');
            Exit;
        end;



        {ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,1];
          if ColumnNM='Colorway ID' then ID_index:=1;
        ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,2];
          if ColumnNM='Planning Level 2' then Planning_index:=2;   }
        //
        if ((ID_index>0) and ((Planning_index>0) OR (Segment_index>0) OR (TechLevel_index>0)OR (TSP_index>0)OR (TSPDev_index>0)) ) then
        begin
          //開始更新
          Isbreak:=false;
          RowSIndex:=1;
          repeat
             Application.ProcessMessages;
             RowSIndex:=RowSIndex+1;
             //Progress
             ID:=OrderListExcel.Cells[RowSIndex+offset,ID_index];
             Planning:=OrderListExcel.Cells[RowSIndex+offset,Planning_index];
             Segment:=OrderListExcel.Cells[RowSIndex+offset,Segment_index];
             TechLevel:=OrderListExcel.Cells[RowSIndex+offset,TechLevel_index];
             TSP:=OrderListExcel.Cells[RowSIndex+offset,TSP_index];
             TSP_Dev:=OrderListExcel.Cells[RowSIndex+offset,TSPDev_index];
             //
             if ((trim(ID)<>'') and ((trim(Planning)<>'') OR (trim(Segment)<>'') OR (trim(TechLevel)<>'')OR (trim(TSP)<>'')OR (trim(TSP_Dev)<>'')) ) then
             begin
               with QSearch do
               begin
                 Active:=false;
                 SQL.Clear;
                 SQL.Add('update xxzlkf');
                 SQL.Add('set xxzlkf.Planning_Level_2='''+Planning+'''');
                 SQL.Add('  , xxzlkf.Segment='''+Segment+'''');
                 SQL.Add('  , xxzlkf.TechLevel_Flex='''+TechLevel+'''');
                 if ((trim(TSP)<>'') and (trim(TSP)<>'0')) then
                    SQL.Add('  , xxzlkf.TSP='''+TSP+'''')
                 else
                    SQL.Add('  , xxzlkf.TSP='''+TSP_Dev+'''');
                 SQL.Add('from xxzlkf left join KFXXZL on KFXXZL.XieXing=xxzlkf.XieXing and xxzlkf.SheHao=KFXXZL.SheHao where KFXXZL.DevCode='''+ID+'''');
                 //showmessage(SQL.text);
                 ExecSQL;
               end;
             end
             else
                Isbreak:=true;
             //
          until IsBreak=true;
          OrderListExcel.Quit;
          Showmessage('Success');
          BB1.Click;
        end else
        begin
          OrderListExcel.Quit;
          Showmessage('Excel not exact format!');
        end;
      end;
    except
      on E:Exception do
      begin
        Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK);
        OrderListExcel.Quit;
        Exit;
      end;
    end;
end;
end.
