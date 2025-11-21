unit QCConfirmShoes1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, GridsEh, DBGridEh, Mask, DBCtrls, ExtCtrls,
  StdCtrls,fununit,comobj;

type
  TQCConfirmShoes = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Button1: TButton;
    Edit1: TEdit;
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
    TechLevel: TDBEdit;
    DBGridEh1: TDBGridEh;
    QSearch: TQuery;
    DataSource1: TDataSource;
    Query1: TQuery;
    PopupMenu1: TPopupMenu;
    EDIT: TMenuItem;
    SAVE: TMenuItem;
    CANCEL: TMenuItem;
    UpdateSQL1: TUpdateSQL;
    Query1RiskLevel: TStringField;
    Query1ShoeName: TStringField;
    Query1SR: TStringField;
    Query1SKU: TStringField;
    Query1TechLevel: TStringField;
    Query1FinalBOMQCReceive: TBooleanField;
    Query1FinalBOMQCReceiveDate: TDateTimeField;
    Query1CFMshoesQCReceive: TBooleanField;
    Query1CFMshoesQCReceiveDate: TDateTimeField;
    Query1CFMshoesQCprovidetoPur: TBooleanField;
    Query1CFMshoesQCprovidetoPurDate: TDateTimeField;
    Query1CSbookQCReceive: TBooleanField;
    Query1CSbookQCReceiveDate: TDateTimeField;
    Query1CSbookQCprovidetoPur: TBooleanField;
    Query1CSbookQCprovidetoPurDate: TDateTimeField;
    Query1CWQCReceive: TBooleanField;
    Query1CWQCReceiveDate: TDateTimeField;
    Query1CWQCprovidetoPur: TBooleanField;
    Query1CWQCprovidetoPurDate: TDateTimeField;
    Query1UserID_QC: TStringField;
    Query1Userdate_QC: TDateTimeField;
    Query1SheHao: TStringField;
    Query1XieXing: TStringField;
    Query1FD: TStringField;
    Query1Exist: TStringField;
    Query1ImgNameCFM: TStringField;
    Query1SS: TStringField;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Color: TDBEdit;
    StyleNo: TDBEdit;
    SKU: TDBEdit;
    Label10: TLabel;
    Edit2: TEdit;
    Check: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EDITClick(Sender: TObject);
    procedure SAVEClick(Sender: TObject);
    procedure CANCELClick(Sender: TObject);
    procedure Query1AfterScroll(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure Query1FinalBOMQCReceiveChange(Sender: TField);
    procedure Query1CFMshoesQCReceiveChange(Sender: TField);
    procedure Query1CFMshoesQCprovidetoPurChange(Sender: TField);
    procedure Query1CSbookQCReceiveChange(Sender: TField);
    procedure Query1CSbookQCprovidetoPurChange(Sender: TField);
    procedure Query1CWQCReceiveChange(Sender: TField);
    procedure Query1CWQCprovidetoPurChange(Sender: TField);
  private
    procedure GetServerDate;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QCConfirmShoes: TQCConfirmShoes;
  IsEdit: Boolean;
  NDate:TDate;

implementation

uses main1;

{$R *.dfm}

procedure TQCConfirmShoes.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('  SELECT PC_Data.RiskLevel, KFXXZL.XieMing as ''Shoe Name'',KFXXZL.DEVCODE AS SR,KFXXZL.ARTICLE AS SKU,kfxxzl.KFLX as ''Tech Level''    ');
    SQL.Add('    ,PC_Data.FinalBOMQCReceive,PC_Data.FinalBOMQCReceiveDate,PC_Data.CFMshoesQCReceive,PC_Data.CFMshoesQCReceiveDate,xxzlkf.SS     ');
    SQL.Add('    ,PC_Data.CFMshoesQCprovidetoPur,PC_Data.CFMshoesQCprovidetoPurDate,PC_Data.CSbookQCReceive,PC_Data.CSbookQCReceiveDate  ');
    SQL.Add('    ,PC_Data.CSbookQCprovidetoPur,PC_Data.CSbookQCprovidetoPurDate,PC_Data.CWQCReceive,PC_Data.CWQCReceiveDate  ');
    SQL.Add('    ,PC_Data.CWQCprovidetoPur,PC_Data.CWQCprovidetoPurDate,PC_Data.UserID_QC,PC_Data.Userdate_QC  ');
    SQL.Add('    ,KFXXZL.SheHao,KFXXZL.XieXing , KFXXZL.FD, ISNULL(PC_Data.XieXing, ''X'') AS Exist, ISNULL(XXZLKF.ImgNameCfm, '''') AS ImgNameCFM  ');
    SQL.Add('     FROM PC_Data    ');
    SQL.Add('    LEFT JOIN KFXXZL ON PC_Data.XieXing = KFXXZL.XieXing AND PC_Data.SheHao = KFXXZL.SheHao    ');
    SQL.Add('    LEFT JOIN XXZLKF ON XXZLKF.XieXing = KFXXZL.XieXing AND XXZLKF.SheHao = KFXXZL.SheHao    ');
    SQL.Add('  WHERE 1=1');
    if Edit1.Text <>'' then
      SQL.Add('  AND KFXXZL.ARTICLE LIKE '''+Edit1.Text+'%''  ');
    if Edit2.Text <>'' then
      SQL.Add('  AND KFXXZL.DEVCODE LIKE '''+Edit2.Text+'%''  ');
    if Check.Checked then
      SQL.Add('      and PC_Data.UserID_QC='+''''+main.Edit1.Text+'''');
    SQL.Add('  AND LEN(KFXXZL.SheHao) <= 2   ');
    SQL.Add('  AND XXZLKF.Dropped <> ''1''   ');
    SQL.Add('  AND XXZLKF.Transfer <> ''1''  ');
    SQL.Add('    GROUP BY PC_Data.RiskLevel, KFXXZL.XieMing,KFXXZL.DEVCODE,KFXXZL.ARTICLE,kfxxzl.KFLX,xxzlkf.SS   ');
    SQL.Add('    ,PC_Data.FinalBOMQCReceive,PC_Data.FinalBOMQCReceiveDate,PC_Data.CFMshoesQCReceive,PC_Data.CFMshoesQCReceiveDate     ');
    SQL.Add('    ,PC_Data.CFMshoesQCprovidetoPur,PC_Data.CFMshoesQCprovidetoPurDate,PC_Data.CSbookQCReceive,PC_Data.CSbookQCReceiveDate  ');
    SQL.Add('    ,PC_Data.CSbookQCprovidetoPur,PC_Data.CSbookQCprovidetoPurDate,PC_Data.CWQCReceive,PC_Data.CWQCReceiveDate  ');
    SQL.Add('    ,PC_Data.CWQCprovidetoPur,PC_Data.CWQCprovidetoPurDate,PC_Data.UserID_QC,PC_Data.Userdate_QC   ');
    SQL.Add('    ,KFXXZL.XieXing, KFXXZL.SheHao, KFXXZL.FD, ISNULL(PC_Data.XieXing, ''X''), ISNULL(XXZLKF.ImgNameCfm, '''')  ');
    SQL.Add('    ORDER BY KFXXZL.FD, KFXXZL.DEVCODE, KFXXZL.XieMing  ');
    //funcobj.WriteErrorLog(sql.Text);
    //memo1.Text:=sql.Text;
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

procedure TQCConfirmShoes.GetServerDate;
begin
  QSearch.Active := false;
  QSearch.SQL.Clear;
  QSearch.SQL.Add('SELECT CONVERT(VARCHAR, GETDATE(), 120) AS CheckDate');
  QSearch.Active := true;
end;

procedure TQCConfirmShoes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TQCConfirmShoes.FormCreate(Sender: TObject);
begin
  IsEdit := false;
end;

procedure TQCConfirmShoes.FormDestroy(Sender: TObject);
begin
  QCConfirmShoes := nil;
end;

procedure TQCConfirmShoes.EDITClick(Sender: TObject);
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

procedure TQCConfirmShoes.SAVEClick(Sender: TObject);
var
  i: integer;
begin
  IsEdit := false;
  try
    GetServerDate;
    Query1.First;
    for i:=1 to Query1.RecordCount do
    begin
      case Query1.updatestatus of
      usmodified:
      begin
         if (Query1.FieldByName('UserID_QC').AsString = '')  then
         begin
           Query1.edit;
           Query1.FieldByName('UserID_QC').Value:=main.Edit1.Text;
           Query1.FieldByName('Userdate_QC').Value:=QSearch.FieldByName('CheckDate').AsString;
           UpdateSQL1.Apply(ukModify);
         end else
         if (Query1.FieldByName('UserID_QC').AsString <> '') and (Query1.FieldByName('UserID_QC').AsString = main.edit1.text) then
         begin
           Query1.edit;
           Query1.FieldByName('UserID_QC').Value:=main.Edit1.Text;
           Query1.FieldByName('Userdate_QC').Value:=QSearch.FieldByName('CheckDate').AsString;
           UpdateSQL1.Apply(ukModify);
         end else
         begin
           showmessage('It is not yours, can not modify.');
           abort;
         end;
      end;
    end;
    Query1.Next;
  end;
  Query1.Active := false;
  Query1.RequestLive := false;
  Query1.CachedUpdates := false;
  Query1.Active := true;
  PopupMenu1.Items[0].Visible := true;
  PopupMenu1.Items[1].Visible := false;
  PopupMenu1.Items[2].Visible := false;
  ShowMessage('Completed');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TQCConfirmShoes.CANCELClick(Sender: TObject);
begin
  IsEdit := false;
  Query1.Active := false;
  Query1.RequestLive := false;
  Query1.CachedUpdates := false;
  Query1.Active := true;
  PopupMenu1.Items[0].Visible := true;
  PopupMenu1.Items[1].Visible := false;
  PopupMenu1.Items[2].Visible := false;
  DBGridEh1.Options := DBGridEh1.Options + [dgRowSelect] - [dgEditing];
end;

procedure TQCConfirmShoes.Query1AfterScroll(DataSet: TDataSet);
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

procedure TQCConfirmShoes.Button2Click(Sender: TObject);
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

procedure TQCConfirmShoes.Query1FinalBOMQCReceiveChange(Sender: TField);
begin
  if (Query1.FieldByName('FinalBOMQCReceive').AsString = 'True') then
  begin
    GetServerDate;
    Query1.FieldByName('FinalBOMQCReceiveDate').Value := QSearch.FieldByName('CheckDate').AsString;
  end
  else begin
    Query1.FieldByName('FinalBOMQCReceiveDate').Value := Null;
  end;
end;

procedure TQCConfirmShoes.Query1CFMshoesQCReceiveChange(Sender: TField);
begin
  if (Query1.FieldByName('CFMshoesQCReceive').AsString = 'True') then
  begin
    GetServerDate;
    Query1.FieldByName('CFMshoesQCReceiveDate').Value := QSearch.FieldByName('CheckDate').AsString;
  end
  else begin
    Query1.FieldByName('CFMshoesQCReceiveDate').Value := Null;
  end;
end;

procedure TQCConfirmShoes.Query1CFMshoesQCprovidetoPurChange(Sender: TField);
begin
  if (Query1.FieldByName('CFMshoesQCprovidetoPur').AsString = 'True') then
  begin
    GetServerDate;
    Query1.FieldByName('CFMshoesQCprovidetoPurDate').Value := QSearch.FieldByName('CheckDate').AsString;
  end
  else begin
    Query1.FieldByName('CFMshoesQCprovidetoPurDate').Value := Null;
  end;
end;

procedure TQCConfirmShoes.Query1CSbookQCReceiveChange(Sender: TField);
begin
  if (Query1.FieldByName('CSbookQCReceive').AsString = 'True') then
  begin
    GetServerDate;
    Query1.FieldByName('CSbookQCReceiveDate').Value := QSearch.FieldByName('CheckDate').AsString;
  end
  else begin
    Query1.FieldByName('CSbookQCReceiveDate').Value := Null;
  end;
end;

procedure TQCConfirmShoes.Query1CSbookQCprovidetoPurChange(Sender: TField);
begin
  if (Query1.FieldByName('CSbookQCprovidetoPur').AsString = 'True') then
  begin
    GetServerDate;
    Query1.FieldByName('CSbookQCprovidetoPurDate').Value := QSearch.FieldByName('CheckDate').AsString;
  end
  else begin
    Query1.FieldByName('CSbookQCprovidetoPurDate').Value := Null;
  end;
end;

procedure TQCConfirmShoes.Query1CWQCReceiveChange(Sender: TField);
begin
  if (Query1.FieldByName('CWQCReceive').AsString = 'True') then
  begin
    GetServerDate;
    Query1.FieldByName('CWQCReceiveDate').Value := QSearch.FieldByName('CheckDate').AsString;
  end
  else begin
    Query1.FieldByName('CWQCReceiveDate').Value := Null;
  end;
end;

procedure TQCConfirmShoes.Query1CWQCprovidetoPurChange(Sender: TField);
begin
  if (Query1.FieldByName('CWQCprovidetoPur').AsString = 'True') then
  begin
    GetServerDate;
    Query1.FieldByName('CWQCprovidetoPurDate').Value := QSearch.FieldByName('CheckDate').AsString;
  end
  else begin
    Query1.FieldByName('CWQCprovidetoPurDate').Value := Null;
  end;
end;

end.
