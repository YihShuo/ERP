unit PCData1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, GridsEh, DBGridEh, Mask, DBCtrls, ExtCtrls,
  StdCtrls,fununit,comobj;

type
  TPCData = class(TForm)
    Panel1: TPanel;
    Button1: TButton;                                         
    Button2: TButton;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel3: TPanel;
    ShoeImage: TImage;
    Label6: TLabel;
    DBDEVCODE: TDBEdit;
    DBShoeName: TDBEdit;
    DBFD: TDBEdit;
    DBGridEh1: TDBGridEh;
    QSearch: TQuery;
    UpdateSQL1: TUpdateSQL;
    DataSource1: TDataSource;
    Query1: TQuery;
    PopupMenu1: TPopupMenu;
    EDIT: TMenuItem;
    SAVE: TMenuItem;
    CANCEL: TMenuItem;
    Query1RiskLevel: TStringField;
    Query1ShoeName: TStringField;
    Query1SR: TStringField;
    Query1SKU: TStringField;
    Query1TechLevel: TStringField;
    Query1BuyMonth: TDateTimeField;
    Query1ISD: TDateTimeField;
    Query1FinalBom: TBooleanField;
    Query1CTSsignCFMshoes: TBooleanField;
    Query1CTSsignCFMshoesDate: TStringField;
    Query1CFMShoesToQC: TBooleanField;
    Query1CFMShoesToQCDate: TStringField;
    Query1CSBookToQC: TBooleanField;
    Query1CSBookToQCDate: TStringField;
    Query1CWToQCOP: TStringField;
    Query1CWToQC: TStringField;
    Query1CWToQCDate: TStringField;
    Query1UserID_Dev: TStringField;
    Query1Userdate_Dev: TDateTimeField;
    Query1SheHao: TStringField;
    Query1XieXing: TStringField;
    Query1FD: TStringField;
    Query1Exist: TStringField;
    Query1ImgNameCFM: TStringField;
    Query1FinalBomDate: TStringField;
    PC: TQuery;
    Query1SS: TStringField;
    DBGridEh2: TDBGridEh;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    SR: TEdit;
    Label66: TLabel;
    SKU: TEdit;
    Label229: TLabel;
    BSFD: TComboBox;
    Label46: TLabel;
    devtype: TComboBox;
    Label1: TLabel;
    cbb1: TComboBox;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit5: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EDITClick(Sender: TObject);
    procedure SAVEClick(Sender: TObject);
    procedure CANCELClick(Sender: TObject);
    procedure Query1AfterScroll(DataSet: TDataSet);
    procedure Query1CWToQCOPChange(Sender: TField);
    procedure Query1CWToQCChange(Sender: TField);
    procedure Button2Click(Sender: TObject);
    procedure Query1FinalBomChange(Sender: TField);
    procedure Query1CTSsignCFMshoesChange(Sender: TField);
    procedure Query1CFMShoesToQCChange(Sender: TField);
    procedure Query1CSBookToQCChange(Sender: TField);
  private
    procedure GetServerDate;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCData: TPCData;
  IsEdit: Boolean;
  LoginFD: string;

implementation

uses main1;

{$R *.dfm}

procedure TPCData.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('  SELECT PC_Data.RiskLevel, KFXXZL.XieMing as ''Shoe Name'',KFXXZL.DEVCODE AS SR,KFXXZL.ARTICLE AS SKU,kfxxzl.KFLX as ''Tech Level'',  ');
    SQL.Add('  PC_Data.BuyMonth AS BuyMonth,PC_Data.ISD AS ISD,xxzlkf.SS,  ');
    SQL.Add('  PC_Data.FinalBom, CONVERT(VARCHAR, PC_Data.FinalBomDate, 120) AS FinalBomDate,  ');
    SQL.Add('  PC_Data.CTSsignCFMshoes AS CTSsignCFMshoes, CONVERT(VARCHAR, PC_Data.CTSsignCFMshoesDate, 120) AS CTSsignCFMshoesDate,  ');
    SQL.Add('  PC_Data.CFMShoesToQC AS CFMShoesToQC, CONVERT(VARCHAR, PC_Data.CFMShoesToQCDate, 120) AS CFMShoesToQCDate,  ');
    SQL.Add('  PC_Data.CSBookToQC AS CSBookToQC, CONVERT(VARCHAR, PC_Data.CSBookToQCDate, 120) AS CSBookToQCDate,  ');
    SQL.Add('  PC_Data.CWToQCOP, PC_Data.CWToQC AS CWToQC, CONVERT(VARCHAR, PC_Data.CWToQCDate, 120) AS CWToQCDate,PC_Data.UserID_Dev,PC_Data.Userdate_Dev');
    SQL.Add('  , KFXXZL.SheHao,KFXXZL.XieXing , KFXXZL.FD, ISNULL(PC_Data.XieXing, ''X'') AS Exist, ISNULL(XXZLKF.ImgNameCfm, '''') AS ImgNameCFM');
    SQL.Add('   FROM BUSERS  ');
    SQL.Add('  LEFT JOIN KFXXZL ON KFXXZL.FD = BUSERS.Engname  ');
    SQL.Add('  LEFT JOIN PC_Data ON PC_Data.XieXing = KFXXZL.XieXing AND PC_Data.SheHao = KFXXZL.SheHao  ');
    SQL.Add('  LEFT JOIN XXZLKF ON XXZLKF.XieXing = KFXXZL.XieXing AND XXZLKF.SheHao = KFXXZL.SheHao  ');
    SQL.Add('  WHERE 1=1');
    if BSFD.Text <>'' then
      SQL.Add('  AND BUSERS.Engname LIKE '''+BSFD.Text+'%''  ');
    if cbb1.Text <>'' then
      SQL.Add('  AND KFXXZL.JiJie = '''+cbb1.Text+'''   ');
    if SR.Text <>'' then
      SQL.Add('  AND kfxxzl.devcode like '''+SR.Text+'%''   ');
    if SKU.Text <>'' then
      SQL.Add('  AND KFXXZL.article like '''+SKU.Text+'%''   ');
    if devtype.Text <>'' then
      SQL.Add('  AND KFXXZL.devtype = '''+devtype.Text+'''   ');
    SQL.Add('  AND LEN(KFXXZL.SheHao) <= 2   ');
    SQL.Add('  AND XXZLKF.Dropped <> ''1''   ');
    SQL.Add('  AND XXZLKF.Transfer <> ''1''  ');
    SQL.Add('  GROUP BY PC_Data.RiskLevel, KFXXZL.XieMing,KFXXZL.DEVCODE,KFXXZL.ARTICLE,kfxxzl.KFLX,  ');
    SQL.Add('  PC_Data.BuyMonth, PC_Data.ISD,xxzlkf.SS,  ');
    SQL.Add('  PC_Data.FinalBom, CONVERT(VARCHAR, PC_Data.FinalBomDate, 120),  ');
    SQL.Add('  PC_Data.CTSsignCFMshoes, CONVERT(VARCHAR, PC_DATA.CTSsignCFMshoesDate, 120),  ');
    SQL.Add('  PC_Data.CFMShoesToQC, CONVERT(VARCHAR, PC_Data.CFMShoesToQCDate, 120),  ');
    SQL.Add('  PC_Data.CSBookToQC, CONVERT(VARCHAR, PC_Data.CSBookToQCDate, 120),  ');
    SQL.Add('  PC_Data.CWToQCOP, PC_Data.CWToQC, CONVERT(VARCHAR, PC_Data.CWToQCDate, 120),PC_Data.UserID_Dev,PC_Data.Userdate_Dev,  ');
    SQL.Add('  KFXXZL.XieXing, KFXXZL.SheHao, KFXXZL.FD, ISNULL(PC_Data.XieXing, ''X''), ISNULL(XXZLKF.ImgNameCfm, ''''),UserID_Dev,Userdate_Dev  ');
    SQL.Add('  ORDER BY KFXXZL.FD, KFXXZL.DEVCODE, KFXXZL.XieMing  ');
    //funcobj.WriteErrorLog(sql.Text);
    Active := true;
    if (Query1.RecordCount > 0) then
    begin
      PopupMenu1.Items[0].Visible := true;
      PopupMenu1.Items[1].Visible := false;
      PopupMenu1.Items[2].Visible := false;
    end
    else begin
      PopupMenu1.Items[0].Visible := false;
      PopupMenu1.Items[1].Visible := false;
      PopupMenu1.Items[2].Visible := false;
    end;
    DBGridEh1.SetFocus;
  end;
end;

procedure TPCData.GetServerDate;
begin
  QSearch.Active := false;
  QSearch.SQL.Clear;
  QSearch.SQL.Add('SELECT CONVERT(VARCHAR, GETDATE(), 120) AS CheckDate');
  QSearch.Active := true;
end;

procedure TPCData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TPCData.FormDestroy(Sender: TObject);
begin
  PCData := nil;
end;
                                                                                     
procedure TPCData.FormCreate(Sender: TObject);
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
  IsEdit := false;
end;

procedure TPCData.EDITClick(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  PopupMenu1.Items[0].Visible := false;
  PopupMenu1.Items[1].Visible := true;
  PopupMenu1.Items[2].Visible := true;
  IsEdit := true;
end;

procedure TPCData.SAVEClick(Sender: TObject);
var
  i: integer;
begin
  IsEdit := false;
  try
    GetServerDate;
    Query1.First;
    if Length (Query1.FieldByName('CWToQC').AsString) >10 then
    begin
      showmessage('Please CWToQC enter less than 10 characters.');
      abort;
    end;
    for i:=1 to Query1.RecordCount do
    begin
      case Query1.updatestatus of
      usmodified:
      begin
         with PC do
         begin
           active:=false;
           sql.Clear;
           sql.Add('select * from PC_Data where PC_Data.xiexing='''+Query1.fieldbyname('xiexing').Value+'''');
           sql.add('and PC_Data.shehao='''+Query1.fieldbyname('shehao').Value+'''');
           active:=true;
           if (recordcount = 0) and (Query1.FieldByName('Exist').AsString = 'X') and (Query1.FieldByName('FD').AsString = LoginFD) then
           begin
              Query1.edit;
              Query1.FieldByName('UserID_Dev').Value:=main.Edit1.Text;
              Query1.FieldByName('Userdate_Dev').Value:=QSearch.FieldByName('CheckDate').AsString;
              UpdateSQL1.Apply(ukInsert);
           end else
           begin
              if (Query1.FieldByName('FD').AsString = LoginFD) then
              begin
                Query1.edit;
                Query1.FieldByName('UserID_Dev').Value:=main.Edit1.Text;
                Query1.FieldByName('Userdate_Dev').Value:=QSearch.FieldByName('CheckDate').AsString;
                UpdateSQL1.Apply(ukModify);
              end else
              begin
                showmessage('It is not yours, can not modify.');
                abort;
              end;
           end;
         end;
      end;
    end;
    Query1.Next;
  end;
  except
    Messagedlg('Error, can not save data!', mtwarning, [mbyes], 0);
  end;
  Query1.Active := false;
  Query1.RequestLive := false;
  Query1.CachedUpdates := false;
  Query1.Active := true;
  PopupMenu1.Items[0].Visible := true;
  PopupMenu1.Items[1].Visible := false;
  PopupMenu1.Items[2].Visible := false;
  ShowMessage('Completed');
end;

procedure TPCData.CANCELClick(Sender: TObject);
begin
  IsEdit := false;
  Query1.Active := false;
  Query1.RequestLive := false;
  Query1.CachedUpdates := false;
  Query1.Active := true;
  PopupMenu1.Items[0].Visible := true;
  PopupMenu1.Items[1].Visible := false;
  PopupMenu1.Items[2].Visible := false;
end;


procedure TPCData.Query1AfterScroll(DataSet: TDataSet);
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

procedure TPCData.Query1CWToQCOPChange(Sender: TField);
begin
  if  (Query1.FieldByName('CWToQCOP').AsString <> '') then
  begin
    GetServerDate;
    Query1.FieldByName('CWToQCDate').Value := QSearch.FieldByName('CheckDate').AsString;
  end
  else begin
    Query1.FieldByName('CWToQCDate').Value := Null;
  end;
end;

procedure TPCData.Query1CWToQCChange(Sender: TField);
begin
  if Length (Query1.FieldByName('CWToQC').AsString) >10 then
  begin
    showmessage('Please CWToQC enter less than 10 characters.');
    abort;
  end;
end;

procedure TPCData.Button2Click(Sender: TObject);
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


procedure TPCData.Query1FinalBomChange(Sender: TField);
begin
  if (Query1.FieldByName('FinalBom').AsString = 'True') then
  begin
    GetServerDate;
    Query1.FieldByName('FinalBomDate').Value := QSearch.FieldByName('CheckDate').AsString;
  end
  else begin
    Query1.FieldByName('FinalBomDate').Value := Null;
  end;
end;

procedure TPCData.Query1CTSsignCFMshoesChange(Sender: TField);
begin
  if (Query1.FieldByName('CTSsignCFMshoes').AsString = 'True') then
  begin
    GetServerDate;
    Query1.FieldByName('CTSsignCFMshoesDate').Value := QSearch.FieldByName('CheckDate').AsString;
  end
  else begin
    Query1.FieldByName('CTSsignCFMshoesDate').Value := Null;
  end;
end;

procedure TPCData.Query1CFMShoesToQCChange(Sender: TField);
begin
  if (Query1.FieldByName('CFMShoesToQC').AsString = 'True') then
  begin
    GetServerDate;
    Query1.FieldByName('CFMShoesToQCDate').Value := QSearch.FieldByName('CheckDate').AsString;
  end
  else begin
    Query1.FieldByName('CFMShoesToQCDate').Value := Null;
  end;
end;

procedure TPCData.Query1CSBookToQCChange(Sender: TField);
begin
  if (Query1.FieldByName('CSBookToQC').AsString = 'True') then
  begin
    GetServerDate;
    Query1.FieldByName('CSBookToQCDate').Value := QSearch.FieldByName('CheckDate').AsString;
  end
  else begin
    Query1.FieldByName('CSBookToQCDate').Value := Null;
  end;
end;

end.
