unit ShippingConfirmShoes1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DBTables, DB, GridsEh, DBGridEh, Mask, DBCtrls, ExtCtrls,
  StdCtrls, comobj, fununit;

type
  TShippingConfirmShoes = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Panel3: TPanel;
    ShoeImage: TImage;
    Label6: TLabel;
    DBDEVCODE: TDBEdit;
    DBXieMing: TDBEdit;
    DBKFLX: TDBEdit;
    Query1: TQuery;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    PopupMenu1: TPopupMenu;
    Edit: TMenuItem;
    Save: TMenuItem;
    Cancel: TMenuItem;
    Qtemp: TQuery;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit1: TEdit;
    Check: TCheckBox;
    Label5: TLabel;
    DBGridEh1: TDBGridEh;
    Label10: TLabel;
    Edit3: TEdit;
    Query1RiskLevel: TStringField;
    Query1ShoeName: TStringField;
    Query1SR: TStringField;
    Query1SKU: TStringField;
    Query1TechLevel: TStringField;
    Query1Size: TStringField;
    Query1CFMShoesSPTeamReceive: TBooleanField;
    Query1CFMShoesSPTeamReceiveDate: TDateTimeField;
    Query1CFMShoesShipping: TBooleanField;
    Query1CFMShoesShippingDate: TDateTimeField;
    Query1UserID_SP: TStringField;
    Query1Userdate_SP: TDateTimeField;
    Query1SheHao: TStringField;
    Query1XieXing: TStringField;
    Query1Exist: TStringField;
    Query1ImgNameCFM: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EditClick(Sender: TObject);
    procedure SaveClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure GetServerDate;
    procedure Query1AfterScroll(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure Query1CFMShoesSPTeamReceiveChange(Sender: TField);
    procedure Query1CFMShoesShippingChange(Sender: TField);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShippingConfirmShoes: TShippingConfirmShoes;
  IsEdit: Boolean;

implementation

uses main1;

{$R *.dfm}

procedure TShippingConfirmShoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TShippingConfirmShoes.FormDestroy(Sender: TObject);
begin
  ShippingConfirmShoes:=nil;
end;

procedure TShippingConfirmShoes.Button1Click(Sender: TObject);
begin
With Query1 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('  SELECT PC_Data.RiskLevel, KFXXZL.XieMing as ''Shoe Name'',KFXXZL.DEVCODE AS SR,KFXXZL.ARTICLE AS SKU,kfxxzl.KFLX as ''Tech Level'',xxzlkf.SS as ''Size'',  ');
    SQL.Add('  PC_Data.CFMShoesSPTeamReceive,PC_Data.CFMShoesSPTeamReceiveDate,  ');
    SQL.Add('  PC_Data.CFMShoesShipping,PC_Data.CFMShoesShippingDate,PC_Data.UserID_SP,PC_Data.Userdate_SP,  ');
    SQL.Add('  KFXXZL.SheHao,KFXXZL.XieXing, ISNULL(PC_Data.XieXing, ''X'') AS Exist, ISNULL(XXZLKF.ImgNameCfm, '''') AS ImgNameCFM  ');
    SQL.Add('  FROM PC_Data  ');
    SQL.Add('  LEFT JOIN KFXXZL ON PC_Data.XieXing = KFXXZL.XieXing AND PC_Data.SheHao = KFXXZL.SheHao  ');
    SQL.Add('  LEFT JOIN XXZLKF ON XXZLKF.XieXing = KFXXZL.XieXing AND XXZLKF.SheHao = KFXXZL.SheHao  ');
    SQL.Add('  WHERE 1=1  ');
    if Edit1.Text <>'' then
      SQL.Add('  and KFXXZL.ARTICLE like '''+Edit1.Text+'%''  ');
    if Edit2.Text <>'' then
      SQL.Add('  and KFXXZL.DEVCODE like '''+Edit2.Text+'%''  ');
    if Edit3.Text <>'' then
      SQL.Add('  and KFXXZL.XieMing like '''+Edit3.Text+'%''  ');
    if Check.Checked then
      SQL.Add('  and PC_Data.UserID_SP = '+''''+main.Edit1.Text+'''');
    SQL.Add('  GROUP BY PC_Data.RiskLevel, KFXXZL.XieMing,KFXXZL.DEVCODE,KFXXZL.ARTICLE,kfxxzl.KFLX,xxzlkf.SS,  ');
    SQL.Add('  PC_Data.CFMShoesSPTeamReceive,PC_Data.CFMShoesSPTeamReceiveDate,  ');
    SQL.Add('  PC_Data.CFMShoesShipping,PC_Data.CFMShoesShippingDate,PC_Data.UserID_SP,PC_Data.Userdate_SP,  ');
    SQL.Add('  KFXXZL.SheHao,KFXXZL.XieXing,PC_Data.XieXing,XXZLKF.ImgNameCfm  ');
    SQL.Add('  ORDER BY KFXXZL.DEVCODE, KFXXZL.XieMing  ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
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

procedure TShippingConfirmShoes.GetServerDate;
begin
  Qtemp.Active := false;
  Qtemp.SQL.Clear;
  Qtemp.SQL.Add('SELECT CONVERT(VARCHAR, GETDATE(), 120) AS CheckDate');
  Qtemp.Active := true;
end;

procedure TShippingConfirmShoes.EditClick(Sender: TObject);
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

procedure TShippingConfirmShoes.SaveClick(Sender: TObject);
var i: integer;
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
         if (Query1.FieldByName('UserID_SP').AsString = '')  then
         begin
           Query1.edit;
           Query1.FieldByName('UserID_SP').Value:=main.Edit1.Text;
           Query1.FieldByName('Userdate_SP').Value:=Qtemp.FieldByName('CheckDate').AsString;
           UpdateSQL1.Apply(ukModify);
         end else
         if (Query1.FieldByName('UserID_SP').AsString <> '') and (Query1.FieldByName('UserID_SP').AsString = main.edit1.text) then
         begin
             Query1.edit;
             Query1.FieldByName('UserID_SP').Value:=main.Edit1.Text;
             Query1.FieldByName('Userdate_SP').Value:=Qtemp.FieldByName('CheckDate').AsString;
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

procedure TShippingConfirmShoes.CancelClick(Sender: TObject);
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

procedure TShippingConfirmShoes.Query1AfterScroll(DataSet: TDataSet);
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

procedure TShippingConfirmShoes.Button2Click(Sender: TObject);
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

procedure TShippingConfirmShoes.Query1CFMShoesSPTeamReceiveChange(
  Sender: TField);
begin
  if (Query1.FieldByName('CFMShoesSPTeamReceive').AsString ='True') then
  begin
    GetServerDate;
    Query1.FieldByName('CFMShoesSPTeamReceiveDate').Value := Qtemp.FieldByName('CheckDate').AsString;
  end
  else begin
    Query1.FieldByName('CFMShoesSPTeamReceiveDate').Value := Null;
  end;
end;

procedure TShippingConfirmShoes.Query1CFMShoesShippingChange(
  Sender: TField);
begin
  if (Query1.FieldByName('CFMShoesShipping').AsString ='True') then
  begin
    GetServerDate;
    Query1.FieldByName('CFMShoesShippingDate').Value := Qtemp.FieldByName('CheckDate').AsString;
  end
  else begin
    Query1.FieldByName('CFMShoesShippingDate').Value := Null;
  end;
end;

end.
