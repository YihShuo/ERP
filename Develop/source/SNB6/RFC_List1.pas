unit RFC_List1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls,
  Buttons, ExtCtrls, GridsEh, DBGridEh, ShellAPI, DBGridEhImpExp, Menus, comobj,
  DateUtils,math, ADODB, iniFiles;

type
  TRFC_List = class(TForm)
    Splitter1: TSplitter;
    Panel1: TPanel;
    Label2: TLabel;
    Label66: TLabel;
    Label229: TLabel;
    Label46: TLabel;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    SR: TEdit;
    SKU: TEdit;
    BSFD: TComboBox;
    devtype: TComboBox;
    cbb1: TComboBox;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Panel3: TPanel;
    ShoeImage: TImage;
    Label6: TLabel;
    DBDEVCODE: TDBEdit;
    DBShoeName: TDBEdit;
    DBFD: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1RiskLevel: TStringField;
    Query1BuyMonth: TDateTimeField;
    Query1ISD: TDateTimeField;
    Query1FinalBomDate: TDateTimeField;
    Query1CTSsignCFMshoesDate: TDateTimeField;
    Query1CFMShoesToQCDate: TDateTimeField;
    Query1CSBookToQCDate: TDateTimeField;
    Query1CWToQCOP: TStringField;
    Query1CWToQC: TStringField;
    Query1CWToQCDate: TDateTimeField;
    Query1UserID_Dev: TStringField;
    Query1Userdate_Dev: TDateTimeField;
    Query1FinalBOMQCReceiveDate: TDateTimeField;
    Query1CFMshoesQCReceiveDate: TDateTimeField;
    Query1CFMshoesQCprovidetoPurDate: TDateTimeField;
    Query1CSbookQCReceiveDate: TDateTimeField;
    Query1CSbookQCprovidetoPurDate: TDateTimeField;
    Query1CWQCReceiveDate: TDateTimeField;
    Query1CWQCprovidetoPurDate: TDateTimeField;
    Query1UserID_QC: TStringField;
    Query1Userdate_QC: TDateTimeField;
    Query1FinalBOMPurReceiveDate: TDateTimeField;
    Query1CFMShoesPurReceiveDate: TDateTimeField;
    Query1CSBookPurReceiveDate: TDateTimeField;
    Query1CWPurReceiveDate: TDateTimeField;
    Query1CWShippingDate: TDateTimeField;
    Query1UserID_Pur: TStringField;
    Query1Userdate_Pur: TDateTimeField;
    Query1CFMShoesSPTeamReceiveDate: TDateTimeField;
    Query1CFMShoesShippingDate: TDateTimeField;
    Query1UserID_SP: TStringField;
    Query1Userdate_SP: TDateTimeField;
    Query1ShoeName: TStringField;
    Query1SR: TStringField;
    Query1SKU: TStringField;
    Query1TechLevel: TStringField;
    Query1FD: TStringField;
    Query1Exist: TStringField;
    Query1ImgNameCFM: TStringField;
    Query1Size: TStringField;
    DBGridEh1: TDBGridEh;
    QSearch: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Query1AfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
      HrmsDBIP,HrmsDBUser,HrmsDBPass,HrmsDBName:String;
    { Public declarations }
  end;

var
  RFC_List: TRFC_List;
  LoginFD: string;

implementation

uses main1;

{$R *.dfm}

procedure TRFC_List.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TRFC_List.FormDestroy(Sender: TObject);
begin
  RFC_List := nil;
end;

procedure TRFC_List.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('  SELECT PC_Data.*,xxzlkf.SS as Size, KFXXZL.XieMing as ''Shoe Name'',KFXXZL.DEVCODE AS SR,KFXXZL.ARTICLE AS SKU,kfxxzl.KFLX as ''Tech Level''    ');
    SQL.Add('    ,KFXXZL.SheHao,KFXXZL.XieXing , KFXXZL.FD, ISNULL(PC_Data.XieXing, ''X'') AS Exist, ISNULL(XXZLKF.ImgNameCfm, '''') AS ImgNameCFM  ');
    SQL.Add('     FROM PC_Data    ');
    SQL.Add('    LEFT JOIN KFXXZL ON PC_Data.XieXing = KFXXZL.XieXing AND PC_Data.SheHao = KFXXZL.SheHao    ');
    SQL.Add('    LEFT JOIN XXZLKF ON XXZLKF.XieXing = KFXXZL.XieXing AND XXZLKF.SheHao = KFXXZL.SheHao    ');
    SQL.Add('  WHERE 1=1');
    if BSFD.Text <>'' then
      SQL.Add('  AND KFXXZL.FD LIKE '''+BSFD.Text+'%''  ');
    if cbb1.Text <>'' then
      SQL.Add('  AND KFXXZL.JiJie = '''+cbb1.Text+'''   ');
    if SR.Text <>'' then
      SQL.Add('  AND kfxxzl.devcode like '''+SR.Text+'%''   ');
    if SKU.Text <>'' then
      SQL.Add('  AND KFXXZL.article like '''+SKU.Text+'%''   ');
    if DEVTYPE.Text <>'' then
      SQL.Add('  AND KFXXZL.devtype = '''+DEVTYPE.Text+'''   ');
    SQL.Add('  AND LEN(KFXXZL.SheHao) <= 2   ');
    SQL.Add('  AND XXZLKF.Dropped <> ''1''   ');
    SQL.Add('  AND XXZLKF.Transfer <> ''1''  ');
    SQL.Add('    ORDER BY KFXXZL.FD, KFXXZL.DEVCODE, KFXXZL.XieMing  ');
    //funcobj.WriteErrorLog(sql.Text);
    Active := true;
    DBGridEh1.SetFocus;
  end;
end;

procedure TRFC_List.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  Query1.active  then
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
      for i:=0 to DBGridEh1.Columns.Count-1 do
        eclApp.Cells(1,i+1):=DBGridEh1.Columns[i].Title.Caption;
      Query1.First;
      j:=2;
      while   not   Query1.Eof   do
      begin
        for i:=0 to DBGridEh1.Columns.Count-1 do
          eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
        Query1.Next;
        inc(j);
      end;
      eclapp.columns.autofit;
      eclApp.Visible:=True;
      showmessage('Succeed');
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end;
end;

procedure TRFC_List.Query1AfterScroll(DataSet: TDataSet);
var
  ShoesPicturePath: string;
begin
  ShoesPicturePath := StringReplace(Query1.FieldByName('ImgNameCFM').AsString, 'H:', '\\192.168.123.111\Develop Team\ERP Images\Chuck taylor-Star team', [rfReplaceAll, rfIgnoreCase]);
  ShoesPicturePath := StringReplace(ShoesPicturePath, 'A:', '\\192.168.123.111\Develop Team', [rfReplaceAll, rfIgnoreCase]);
  ShoesPicturePath := StringReplace(ShoesPicturePath, 'Z:', '\\192.168.123.111\Develop Team', [rfReplaceAll, rfIgnoreCase]);
  if (FileExists(ShoesPicturePath)) then
  begin
    Label6.Visible := false;
    ShoeImage.Picture.LoadFromFile(ShoesPicturePath);
  end
  else begin
    Label6.Visible := true;
    ShoeImage.Picture.Bitmap := nil;
  end;
end;

procedure TRFC_List.FormCreate(Sender: TObject);
begin
  with QSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT KFXXZL.JiJie FROM KFXXZL');
    SQL.Add('LEFT JOIN KFZL_GS on KFZL_GS.KHBH = KFXXZL.KHDH');
    SQL.Add('WHERE FD IS NOT NULL AND KFZL_GS.GSBH = ''' + main.Edit2.Text + ''' AND RIGHT(LEFT(KFXXZL.JiJie, 2), 2) BETWEEN ''16'' AND ''50'' AND LEN(KFXXZL.JiJie) < 4');
    SQL.Add('GROUP BY KFXXZL.JiJie ');
    SQL.Add('ORDER BY KFXXZL.JiJie DESC');
    Active := true;
    cbb1.Items.Clear;
    while not Eof do
    begin
      cbb1.Items.Add(FieldByName('JiJie').AsString);
      Next;
    end;

    Active := false;
    SQL.Clear;
    SQL.Add('SELECT FD FROM KFXXZL');
    SQL.Add('LEFT JOIN KFZL_GS ON KFZL_GS.KHBH = KFXXZL.KHDH');
    SQL.Add('WHERE ISNULL(FD, '''') <> '''' AND KFZL_GS.GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('AND RIGHT(LEFT(JiJie, 2), 2) BETWEEN ''15'' AND ''50''');
    SQL.Add('GROUP BY FD');
    SQL.Add('ORDER BY FD');
    Active := true;
    BSFD.Items.Clear;
    while not Eof do
    begin
      BSFD.Items.Add(FieldByName('FD').AsString);
      Next;
    end;


    Active := false;
    SQL.Clear;
    SQL.Add('SELECT UPPER(Engname) AS FD FROM BUSERS WHERE USERID = ''' + main.Edit1.Text + '''');
    Active := true;
    LoginFD := FieldByName('FD').AsString;
  end;
end;

end.
