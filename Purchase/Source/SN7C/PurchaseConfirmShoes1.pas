unit PurchaseConfirmShoes1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, GridsEh, DBGridEh, Buttons, ExtCtrls, DBTables, DB,
  Menus, Mask, DBCtrls,comobj,fununit;

type
  TPurchaseConfirmShoes = class(TForm)
    Query1: TQuery;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    PopupMenu1: TPopupMenu;
    Edit: TMenuItem;
    Save: TMenuItem;
    Cancel: TMenuItem;
    Qtemp: TQuery;
    Panel1: TPanel;
    Label2: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Panel3: TPanel;
    ShoeImage: TImage;
    Label6: TLabel;
    DBDEVCODE: TDBEdit;
    DBXieMing: TDBEdit;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    Edit2: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBKFLX: TDBEdit;
    Label5: TLabel;
    Query1RiskLevel: TStringField;
    Query1ShoeName: TStringField;
    Query1SR: TStringField;
    Query1SKU: TStringField;
    Query1TechLevel: TStringField;
    Query1Size: TStringField;
    Query1FinalBomPurReceive: TBooleanField;
    Query1FinalBomPurReceiveDate: TDateTimeField;
    Query1CFMShoesPurReceive: TBooleanField;
    Query1CFMShoesPurReceiveDate: TDateTimeField;
    Query1CSBookPurReceive: TBooleanField;
    Query1CSBookPurReceiveDate: TDateTimeField;
    Query1CWPurReceive: TBooleanField;
    Query1CWPurReceiveDate: TDateTimeField;
    Query1CWShipping: TBooleanField;
    Query1CWShippingDate: TDateTimeField;
    Query1UserID_Pur: TStringField;
    Query1Userdate_Pur: TDateTimeField;
    Query1SheHao: TStringField;
    Query1XieXing: TStringField;
    Query1Exist: TStringField;
    Query1ImgNameCFM: TStringField;
    Check: TCheckBox;
    Label10: TLabel;
    Edit3: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EditClick(Sender: TObject);
    procedure SaveClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure GetServerDate;
    procedure Query1AfterScroll(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure Query1FinalBomPurReceiveChange(Sender: TField);
    procedure Query1CFMShoesPurReceiveChange(Sender: TField);
    procedure Query1CSBookPurReceiveChange(Sender: TField);
    procedure Query1CWPurReceiveChange(Sender: TField);
    procedure Query1CWShippingChange(Sender: TField);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurchaseConfirmShoes: TPurchaseConfirmShoes;
  IsEdit: Boolean;

implementation

uses main1;

{$R *.dfm}

procedure TPurchaseConfirmShoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPurchaseConfirmShoes.FormDestroy(Sender: TObject);
begin
  PurchaseConfirmShoes:=nil;
end;

procedure TPurchaseConfirmShoes.Button1Click(Sender: TObject);
begin
  With Query1 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('  SELECT PC_Data.RiskLevel, KFXXZL.XieMing as ''Shoe Name'',KFXXZL.DEVCODE AS SR,KFXXZL.ARTICLE AS SKU,kfxxzl.KFLX as ''Tech Level'',xxzlkf.SS as ''Size'',  ');
    SQL.Add('  PC_Data.FinalBomPurReceive,PC_Data.FinalBomPurReceiveDate,PC_Data.CFMShoesPurReceive,PC_Data.CFMShoesPurReceiveDate,  ');
    SQL.Add('  PC_Data.CSBookPurReceive,PC_Data.CSBookPurReceiveDate,PC_Data.CWPurReceive,PC_Data.CWPurReceiveDate,  ');
    SQL.Add('  PC_Data.CWShipping,PC_Data.CWShippingDate,PC_Data.UserID_Pur,PC_Data.Userdate_Pur,  ');
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
      SQL.Add('  and PC_Data.UserID_Pur = '+''''+main.Edit1.Text+'''');
    SQL.Add('  GROUP BY PC_Data.RiskLevel, KFXXZL.XieMing,KFXXZL.DEVCODE,KFXXZL.ARTICLE,kfxxzl.KFLX,xxzlkf.SS,  ');
    SQL.Add('  PC_Data.FinalBomPurReceive,PC_Data.FinalBomPurReceiveDate,PC_Data.CFMShoesPurReceive,PC_Data.CFMShoesPurReceiveDate,  ');
    SQL.Add('  PC_Data.CSBookPurReceive,PC_Data.CSBookPurReceiveDate,PC_Data.CWPurReceive,PC_Data.CWPurReceiveDate,  ');
    SQL.Add('  PC_Data.CWShipping,PC_Data.CWShippingDate,PC_Data.UserID_Pur,PC_Data.Userdate_Pur,  ');
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

procedure TPurchaseConfirmShoes.GetServerDate;
begin
  Qtemp.Active := false;
  Qtemp.SQL.Clear;
  Qtemp.SQL.Add('SELECT CONVERT(VARCHAR, GETDATE(), 120) AS CheckDate');
  Qtemp.Active := true;
end;

procedure TPurchaseConfirmShoes.EditClick(Sender: TObject);
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

procedure TPurchaseConfirmShoes.SaveClick(Sender: TObject);
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
         if (Query1.FieldByName('UserID_Pur').AsString = '')  then
         begin
           Query1.edit;
           Query1.FieldByName('UserID_Pur').Value:=main.Edit1.Text;
           Query1.FieldByName('Userdate_Pur').Value:=Qtemp.FieldByName('CheckDate').AsString;
           UpdateSQL1.Apply(ukModify);
         end else
         if (Query1.FieldByName('UserID_Pur').AsString <> '') and (Query1.FieldByName('UserID_Pur').AsString = main.edit1.text) then
         begin
             Query1.edit;
             Query1.FieldByName('UserID_Pur').Value:=main.Edit1.Text;
             Query1.FieldByName('Userdate_Pur').Value:=Qtemp.FieldByName('CheckDate').AsString;
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

procedure TPurchaseConfirmShoes.CancelClick(Sender: TObject);
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

procedure TPurchaseConfirmShoes.Query1AfterScroll(DataSet: TDataSet);
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

procedure TPurchaseConfirmShoes.Button2Click(Sender: TObject);
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

procedure TPurchaseConfirmShoes.Query1FinalBomPurReceiveChange(Sender: TField);
begin
  if (Query1.FieldByName('FinalBomPurReceive').AsString ='True') then
  begin
    GetServerDate;
    Query1.FieldByName('FinalBomPurReceiveDate').Value := Qtemp.FieldByName('CheckDate').AsString;
  end
  else begin
    Query1.FieldByName('FinalBomPurReceiveDate').Value := Null;
  end;
end;

procedure TPurchaseConfirmShoes.Query1CFMShoesPurReceiveChange(Sender: TField);
begin
  if (Query1.FieldByName('CFMShoesPurReceive').AsString ='True') then
  begin
    GetServerDate;
    Query1.FieldByName('CFMShoesPurReceiveDate').Value := Qtemp.FieldByName('CheckDate').AsString;
  end
  else begin
    Query1.FieldByName('CFMShoesPurReceiveDate').Value := Null;
  end;
end;

procedure TPurchaseConfirmShoes.Query1CSBookPurReceiveChange(Sender: TField);
begin
  if (Query1.FieldByName('CSBookPurReceive').AsString ='True') then
  begin
    GetServerDate;
    Query1.FieldByName('CSBookPurReceiveDate').Value := Qtemp.FieldByName('CheckDate').AsString;
  end
  else begin
    Query1.FieldByName('CSBookPurReceiveDate').Value := Null;
  end;
end;

procedure TPurchaseConfirmShoes.Query1CWPurReceiveChange(Sender: TField);
begin
  if (Query1.FieldByName('CWPurReceive').AsString ='True') then
  begin
    GetServerDate;
    Query1.FieldByName('CWPurReceiveDate').Value := Qtemp.FieldByName('CheckDate').AsString;
  end
  else begin
    Query1.FieldByName('CWPurReceiveDate').Value := Null;
  end;
end;

procedure TPurchaseConfirmShoes.Query1CWShippingChange(Sender: TField);
begin
  if (Query1.FieldByName('CWShipping').AsString ='True') then
  begin
    GetServerDate;
    Query1.FieldByName('CWShippingDate').Value := Qtemp.FieldByName('CheckDate').AsString;
  end
  else begin
    Query1.FieldByName('CWShippingDate').Value := Null;
  end;
end;

end.
