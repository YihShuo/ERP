unit SKU_SA_CODE1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DBTables, DB, Grids, DBGrids, Buttons,
  ExtCtrls, GridsEh, DBGridEh, ComCtrls, ComObj, DateUtils;

type
  TSKU_SA_CODE = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    Panel3: TPanel;
    DS1: TDataSource;
    Query1: TQuery;
    UpSQL1: TUpdateSQL;
    DBGridEh1: TDBGridEh;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1SKU: TStringField;
    Query1SR: TStringField;
    Query1Stiching: TStringField;
    Query1Asembely: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Label1: TLabel;
    ED_SKU: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label5: TLabel;
    Label2: TLabel;
    ED_SR: TEdit;
    Label3: TLabel;
    ED_DieCut: TEdit;
    CB_CodeNotSet: TCheckBox;
    CB_Schedule: TCheckBox;
    Query1DAOMH: TStringField;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure DBGridEh1Columns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SKU_SA_CODE: TSKU_SA_CODE;

implementation

uses main1, XieXing1;

{$R *.dfm}

procedure TSKU_SA_CODE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TSKU_SA_CODE.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    if (CB_Schedule.Checked) then
    begin
      SQL.Add('SELECT SC.XieXing, SC.SheHao, XXZL.DAOMH, XXZL.ARTICLE, KFXXZL.DEVCODE, SA.StitchingCode, SA.AssemblyCode, SA.UserID, SA.UserDate, SA.YN FROM (');
      SQL.Add('  SELECT DISTINCT DDZL.XieXing, DDZL.SheHao FROM schedule_crawler AS SC');
      SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
      SQL.Add('  WHERE SC.schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
      SQL.Add(') AS SC');
      SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = SC.XieXing AND XXZL.SheHao = SC.SheHao');
      SQL.Add('LEFT JOIN KFXXZL ON KFXXZL.XieXing = SC.XieXing AND KFXXZL.SheHao = SC.SheHao');
      SQL.Add('LEFT JOIN SKU_SA_CODE AS SA ON SA.XieXing = SC.XieXing AND SA.SheHao = SC.SheHao');
      SQL.Add('WHERE XXZL.DAOMH LIKE ''' + ED_DieCut.Text + '%'' AND XXZL.ARTICLE LIKE ''' + ED_SKU.Text + '%'' AND KFXXZL.DEVCODE LIKE ''' + ED_SR.Text + '%''');
      if (CB_CodeNotSet.Checked) then
        SQL.Add('AND (ISNULL(SA.StitchingCode, '''') = '''' OR ISNULL(SA.AssemblyCode, '''') = '''')');
      SQL.Add('ORDER BY XXZL.DAOMH, XXZL.ARTICLE, KFXXZL.DEVCODE');
    end
    else begin
      SQL.Add('SELECT SA.XieXing, SA.SheHao, XXZL.DAOMH, XXZL.ARTICLE, KFXXZL.DEVCODE, SA.StitchingCode, SA.AssemblyCode, SA.UserID, SA.UserDate, SA.YN FROM SKU_SA_CODE AS SA');
      SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = SA.XieXing AND XXZL.SheHao = SA.SheHao');
      SQL.Add('LEFT JOIN KFXXZL ON KFXXZL.XieXing = SA.XieXing AND KFXXZL.SheHao = SA.SheHao');
      SQL.Add('WHERE XXZL.DAOMH LIKE ''' + ED_DieCut.Text + '%'' AND XXZL.ARTICLE LIKE ''' + ED_SKU.Text + '%'' AND KFXXZL.DEVCODE LIKE ''' + ED_SR.Text + '%''');
      if (CB_CodeNotSet.Checked) then
        SQL.Add('AND (ISNULL(SA.StitchingCode, '''') = '''' OR ISNULL(SA.AssemblyCode, '''') = '''')');
      SQL.Add('ORDER BY XXZL.DAOMH, XXZL.ARTICLE, KFXXZL.DEVCODE');
    end;
    
    Active := true;
  end;

  bb2.enabled:=true;
  bb4.enabled:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  bb7.enabled:=true;
end;

procedure TSKU_SA_CODE.BB2Click(Sender: TObject);
begin
  if Query1.Active then
  begin
    query1.RequestLive:=true;
    query1.CachedUpdates:=true;
    query1.Insert;
    bb5.Enabled:=true;
    bb6.Enabled:=true;
  end
  else
    showmessage('No active.');
end;

procedure TSKU_SA_CODE.BB4Click(Sender: TObject);
begin
  if Query1.Active then
  begin
    query1.RequestLive:=true;
    query1.CachedUpdates:=true;
    query1.edit;
    bb5.Enabled:=true;
    bb6.Enabled:=true;
  end
  else
    showmessage('No active.');
end;

procedure TSKU_SA_CODE.BB5Click(Sender: TObject);
var
  i: integer;
begin
  try
    Query1.First;
    for i := 1 to Query1.RecordCount do
    begin
      case Query1.UpdateStatus of
        usInserted:
          begin
            if (Query1.FieldByName('XieXing').IsNull) then
            begin
              Query1.Delete;
            end
            else begin
              Query1.edit;
              Query1.FieldByName('userID').Value := main.Edit1.Text;
              UpSQL1.Apply(ukInsert);
            end;
          end;
        usModified:
          begin
            if (Query1.FieldByName('YN').Value = '0') then
            begin
              UpSQL1.Apply(ukDelete);
            end
            else if (Query1.FieldByName('YN').IsNull) then
            begin
              Query1.edit;
              Query1.FieldByName('userID').Value := main.Edit1.Text;
              UpSQL1.Apply(ukInsert);
            end
            else begin
              Query1.Edit;
              Query1.FieldByName('userID').Value := main.Edit1.Text;
              UpSQL1.Apply(ukModify);
            end;
          end;
      end;
      
      Query1.Next;
    end;

    Query1.Active := false;
    Query1.CachedUpdates := false;
    Query1.RequestLive := false;
    Query1.Active := true;
    bb5.Enabled := false;
    bb6.Enabled := false;
  except
    Messagedlg('Have wrong, can not save data!', mtWarning, [mbYes], 0);
  end;
end;

procedure TSKU_SA_CODE.BB6Click(Sender: TObject);
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
end;

procedure TSKU_SA_CODE.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TSKU_SA_CODE.FormDestroy(Sender: TObject);
begin
  SKU_SA_CODE:=nil;
end;

procedure TSKU_SA_CODE.BB3Click(Sender: TObject);
begin
  if Query1.recordcount=0 then
    exit;
  with Query1 do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
end;

procedure TSKU_SA_CODE.DBGridEh1Columns0EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  XieXing:=TXieXing.create(self);
  XieXing.show;
end;

procedure TSKU_SA_CODE.Button2Click(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  i, j: integer;
begin
  if (Query1.Active) then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook := eclApp.Workbooks.Add;
      for i := 0 to DBGridEh1.Columns.Count - 1 do
      begin
        eclApp.Cells[1, i+1] := DBGridEh1.Columns[i].Title.Caption;
      end;
               
      j:=2;
      Query1.First;
      while not Query1.Eof do
      begin
        for i := 0 to DBGridEh1.Columns.Count - 1 do
        begin
          eclApp.Cells[j, i+1].NumberFormatLocal := '@';
          if (DBGridEh1.Columns[i].FieldName <> 'USERDATE') then
            eclApp.Cells[j, i+1] := Query1.FieldByName(DBGridEh1.Columns[i].FieldName).AsString
          else
            eclApp.Cells[j, i+1] := FormatDateTime('yyyy/MM/dd', Query1.FieldByName(DBGridEh1.Columns[i].FieldName).AsDateTime);
        end;
        Query1.Next;
        Inc(j);
      end;

      eclApp.Columns.Autofit;
      ShowMessage('Succeed');
      eclApp.Visible := True;
    except on F:Exception do
      begin
        eclApp.DisplayAlerts := false;
        eclApp.WorkBooks.Close;
        eclApp.Quit;
        ShowMessage(F.Message);
      end;
    end;
  end;
end;

procedure TSKU_SA_CODE.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Query1.FieldByName('YN').AsString = '0') then
    DBGridEh1.Canvas.Font.Color := clRed;
end;

procedure TSKU_SA_CODE.FormCreate(Sender: TObject);
begin
  DTP1.Date := StartOfTheMonth(Date);
  DTP2.Date := EndOfTheMonth(IncMonth(Date));
end;

end.
