unit ModelStatus1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, GridsEh, DBGridEh, Buttons, ExtCtrls, FunUnit,
  ComCtrls, Comobj, iniFiles;

type
  TModelStatus = class(TForm)
    Panel1: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    ED_ARTICLE: TEdit;
    ED_XIEXING: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    ED_SHEHAO: TEdit;
    Button1: TButton;
    Query1: TQuery;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    Query1Article: TStringField;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1Dropped: TBooleanField;
    Query1YN: TStringField;
    QSearch: TQuery;
    CheckMine: TCheckBox;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label5: TLabel;
    CheckDate: TCheckBox;
    btnExcel: TBitBtn;
    Query1SR: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
  private
    { Private declarations }
    procedure ReadIni();
  public
    BOM_N31_KFCQ:String;
    { Public declarations }
  end;

var
  ModelStatus: TModelStatus;


implementation

uses main1;

{$R *.dfm}

procedure TModelStatus.FormCreate(Sender: TObject);
begin
  DTP1.Date:=date-3;
  DTP2.date:=date;
  readini();
end;

procedure TModelStatus.ReadIni();
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

procedure TModelStatus.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (BB5.Enabled) then
  begin
    ShowMessage('Please save the data before you close this page.');
    Action := caNone;
  end
  else begin
    Action := caFree;
  end;
end;

procedure TModelStatus.FormDestroy(Sender: TObject);
begin
  ModelStatus := Nil;
end;

procedure TModelStatus.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add(' SELECT XXZL.XieXing, XXZL.SheHao, XXZL.Article, KFXXZL.DEVCODE as SR# , XXZLPD.Dropped ,XXZLPD.UserID, XXZLPD.UserDate, XXZLPD.YN FROM XXZL ');
    SQL.Add(' LEFT JOIN XXZLPD ON XXZLPD.XieXing = XXZL.XieXing AND XXZLPD.SheHao = XXZL.SheHao ');
    SQL.Add(' LEFT JOIN KFXXZL on KFXXZL.SheHao=XXZL.SheHao and  KFXXZL.XieXing=XXZL.XieXing ');
    SQL.Add(' WHERE 1=1 ');
    if BOM_N31_KFCQ<>'' then
      SQL.Add(' and XXZL.KFCQ in ('''+BOM_N31_KFCQ+''' )');
    if (ED_ARTICLE.Text <> '') then
      SQL.Add(' AND XXZL.Article LIKE ''' + ED_ARTICLE.Text + '%''');
    if (ED_XIEXING.Text <> '') then
      SQL.Add(' AND XXZL.XieXing LIKE ''' + ED_XIEXING.Text + '%''');
    if (ED_SHEHAO.Text <> '') then
      SQL.Add(' AND XXZL.SheHao LIKE ''' + ED_SHEHAO.Text + '%''');
    if CheckMine.Checked then
    begin
      sql.Add(' and XXZLPD.USERID='+''''+main.Edit1.Text+'''');
    end;
    if CheckDate.Checked then
    begin
      sql.add('and convert(smalldatetime,convert(varchar,XXZLPD.USERDATE,111))  between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    SQL.Add(' ORDER BY XXZL.XieXing, XXZL.SheHao');
    //funcobj.WriteErrorLog(sql.Text);
    Active := true;
  end;
  BB4.Enabled := true;
  btnExcel.Enabled := true;
end;

procedure TModelStatus.BB1Click(Sender: TObject);
begin
  Panel2.Visible := true;
end;

procedure TModelStatus.BB4Click(Sender: TObject);
begin
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TModelStatus.BB5Click(Sender: TObject);
var
  NDate: TDate;
  i: integer;
begin
  //取Server的年月值
  with QSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT GETDATE() AS NDate');
    Active := true;

    NDate := FieldByName('NDate').Value;
    Active := false;
  end;

  try
    Query1.First;
    for i := 1 to Query1.RecordCount do
    begin
      case Query1.UpdateStatus of
        usModified:
        begin
          if (Query1.FieldByName('YN').AsString = '1') then
          begin
            Query1.Edit;
            Query1.FieldByName('USERID').Value := main.Edit1.text;
            Query1.FieldByName('USERDATE').Value := NDate;
            UpdateSQL1.Apply(ukModify);
          end
          else begin
            Query1.Edit;
            Query1.FieldByName('USERID').Value := main.Edit1.Text;
            Query1.FieldByName('USERDATE').Value := NDate;
            Query1.FieldByName('YN').Value := 1;
            UpdateSQL1.Apply(ukInsert);
          end;
        end;
      end;

      Query1.Next;
    end;

    Query1.Active := false;
    Query1.CachedUpdates := false;
    Query1.RequestLive := false;
    Query1.Active := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
  except
    MessageDlg('Have wrong, can not save data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TModelStatus.BB6Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TModelStatus.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TModelStatus.btnExcelClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if Query1.RecordCount > 0 then
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
        for   i:=0   to   Query1.fieldCount-2   do
        begin
            eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
        end;
        eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[1,Query1.fieldCount-1]].HorizontalAlignment := -4108;

        Query1.First;
        j:=2;
        while   not   Query1.Eof   do
        begin
          for   i:=0   to   Query1.FieldCount-2   do
          begin
            eclApp.Cells(j,i+1):=Query1.Fields[i].Value;
          end;
        Query1.Next;
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

end.
