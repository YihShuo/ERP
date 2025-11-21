unit Article_Data1;

interface         

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, GridsEh, DBGridEh, DBTables, StdCtrls, Buttons, ExtCtrls,
  Mask, DBCtrls, comobj, Menus  ,Math, IniFiles ,fununit, ComCtrls;

type
  TArticle_Data = class(TForm)
    Panel2: TPanel;
    DS1: TDataSource;              
    UpSQL1: TUpdateSQL;
    Query1: TQuery;
    DBGridEh1: TDBGridEh;
    Splitter1: TSplitter;
    DBGridEh2: TDBGridEh;
    DS2: TDataSource;
    IE2: TQuery;
    UpSQL2: TUpdateSQL;
    Splitter2: TSplitter;
    DBGridEh3: TDBGridEh;
    DS_xxzl: TDataSource;
    xxzl: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    IE1: TQuery;
    IE2XieXing: TStringField;
    IE2SheHao: TStringField;
    IE2Production_Category: TStringField;
    IE2VERSION: TStringField;
    IE2Cut_Type: TStringField;
    IE2Piece_percut: TIntegerField;
    IE2CT: TFloatField;
    IE2Labor_needed: TIntegerField;
    IE2File_Name: TStringField;
    IE2USERID: TStringField;
    IE2USERDATE: TDateTimeField;
    IE2YN: TStringField;
    IE2SChiTiet: TFloatField;
    IE2TKT: TFloatField;
    IE2Tong_TG: TFloatField;
    IE2TG_Loss: TFloatField;
    IE2SLKH: TFloatField;
    IE2SNguoi_KH: TFloatField;
    IE2SNguoi_NC: TFloatField;
    IE2LoaiMay: TStringField;
    OpenDialog: TOpenDialog;
    IE2Process_name: TStringField;
    IE2Actual: TStringField;
    IE2Ideal_Labor: TFloatField;
    IE2Process_YWPM: TStringField;
    IE1XieXing: TStringField;
    IE1SheHao: TStringField;
    IE1Production_Category: TStringField;
    IE1VERSION: TStringField;
    IE1VERSION_MEMO: TStringField;
    IE1Hourly_Output: TFloatField;
    IE1IE_DL: TIntegerField;
    IE1Actual_DL: TIntegerField;
    IE1IDL: TIntegerField;
    IE1LBR: TStringField;
    IE1Status: TStringField;
    IE1Test_Day: TDateTimeField;
    IE1Approve_Time: TDateTimeField;
    IE1Activation_Time: TDateTimeField;
    IE1USERID: TStringField;
    IE1USERDATE: TDateTimeField;
    IE1YN: TStringField;
    IE1File_Name: TStringField;
    IE1TCT: TFloatField;
    IE2STT: TIntegerField;
    IE2Remark: TStringField;
    PopupMenu1: TPopupMenu;
    CopyArticle1: TMenuItem;
    xxzlStitchingCode: TStringField;
    xxzlAssemblyCode: TStringField;
    xxzlQty: TFloatField;
    Label4: TLabel;
    Label5: TLabel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    EDSKU: TEdit;
    EDSR: TEdit;
    pnl4: TPanel;
    btnBE1: TBitBtn;
    btnBE2: TBitBtn;
    btnBE3: TBitBtn;
    btnBE4: TBitBtn;
    btnBE5: TBitBtn;
    btnImport: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    bbt6: TBitBtn;
    EDDAO: TEdit;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    CK1: TCheckBox;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CheckBox1: TCheckBox;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    xxzlYWSM: TStringField;
    BitBtn7: TBitBtn;
    CheckBox2: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure btnBE1Click(Sender: TObject);
    procedure btnBE3Click(Sender: TObject);
    procedure btnBE2Click(Sender: TObject);
    procedure btnBE5Click(Sender: TObject);
    procedure btnBE4Click(Sender: TObject);
    procedure IE1AfterOpen(DataSet: TDataSet);
    procedure BB3Click(Sender: TObject);
    procedure IE2AfterOpen(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure CopyArticle1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
  private
    AppDir:String;
    UserIDList:string;
    UserID: string;
    Position: Integer;
    procedure ReadIni();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Article_Data: TArticle_Data;
  NDate: TDate;

implementation

uses main1, Article_Copy1, IE_CONGDOAN1, IE_LOAIMAY1, Article_TestDay1;

{$R *.dfm}

procedure TArticle_Data.ReadIni();
var MyIni :Tinifile;
begin
  //
  UserIDList:='56372,60834,64307,71104,53747,51307,46922,114247';
  AppDir:=ExtractFilePath(Application.ExeName);
  UserID:=main.edit1.text;
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      //ÁôÂÃXT
      UserIDList:=MyIni.ReadString('ERP','Plan_N91_CheckUserID','56372,60834,64307,71104,53747,51307,46922,114247');
    finally
      MyIni.Free;
    end;
  end;
  Position := Pos(UserID, UserIDList);
end;

procedure TArticle_Data.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TArticle_Data.FormDestroy(Sender: TObject);
begin
  Article_Data := nil;
end;

procedure TArticle_Data.FormCreate(Sender: TObject);
begin
  with query1 do
  begin
    active := false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active := true;
    NDate := fieldbyname('NDate').Value;
    DTP1.Date:=Date();
    DTP2.Date:=Date();
    active := false;
  end;
  xxzl.Active := true;
  ReadIni();
  DBGridEh1.columns[10].ReadOnly:=true;
  DBGridEh1.columns[11].ReadOnly:=true;
end;

procedure TArticle_Data.BB2Click(Sender: TObject);
begin
  if xxzl.IsEmpty then exit;
  with IE1 do
  begin
    requestlive := true;
    cachedupdates := true;
    insert;
    FieldByName('XieXing').Value := xxzl.fieldbyname('XieXing').AsString;
    FieldByName('SheHao').Value := xxzl.fieldbyname('SheHao').AsString;
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
  if Position > 0 then
  begin
    DBGridEh1.columns[10].ReadOnly:=false;
    DBGridEh1.columns[11].ReadOnly:=false;
  end else
  begin
    DBGridEh1.columns[10].ReadOnly:=true;
    DBGridEh1.columns[11].ReadOnly:=true;
  end;
end;

procedure TArticle_Data.BB4Click(Sender: TObject);
begin
  with IE1 do
  begin
    requestlive := true;
    cachedupdates := true;
    edit;
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
  BB2.Enabled := false;
  BB3.Enabled := false;
  BitBtn4.Enabled := false;
  if Position > 0 then
  begin
    DBGridEh1.columns[10].ReadOnly:=false;
    DBGridEh1.columns[11].ReadOnly:=false;
  end else
  begin
    DBGridEh1.columns[10].ReadOnly:=true;
    DBGridEh1.columns[11].ReadOnly:=true;
  end;
end;

procedure TArticle_Data.BB5Click(Sender: TObject);
var
  i: integer;
  a: string;
begin
  if (IE1.FieldByName('Production_Category').AsString = '') or (IE1.FieldByName('VERSION').AsString= '') then
  begin
    showmessage('Please keyin Production_Category or VERSION Data !');
    abort;
  end;
  try
    IE1.first;
    for i := 1 to IE1.RecordCount do
    begin
      case IE1.updatestatus of
        usinserted:
          begin
            IE1.Edit;
            IE1.FieldByName('XieXing').Value := xxzl.fieldbyname('XieXing').AsString;
            IE1.FieldByName('SheHao').Value := xxzl.fieldbyname('SheHao').AsString;
            IE1.FieldByName('USERID').Value := main.edit1.text;
            IE1.FieldByName('USERDATE').Value := formatdatetime('yyyy/MM/dd', NDate);
            IE1.FieldByName('YN').Value := '1';
            upSQL1.apply(ukinsert);
          end;
        usmodified:
          begin
            if IE1.fieldbyname('YN').value='0'then
            begin
              upSQL1.apply(ukdelete);
            end else
            begin
              IE1.Edit;
              //IE1.FieldByName('USERID').Value := main.edit1.text;
              //IE1.FieldByName('USERDATE').Value := formatdatetime('yyyy/MM/dd', NDate);
              upSQL1.apply(ukmodify);
            end;
          end;
      end;
      IE1.Next;
    end;
    IE1.active := false;
    IE1.cachedupdates := false;
    IE1.requestlive := false;
    IE1.active := true;
    BB2.Enabled := true;
    BB3.Enabled := true;
    BitBtn4.Enabled := true;
    BB4.Enabled := true;
    bb5.enabled := false;
    bb6.enabled := false;
  except
    Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;
end;

procedure TArticle_Data.BB6Click(Sender: TObject);
begin
  with IE1 do
  begin
    requestlive := false;
    cachedupdates := false;
    active := false;
    active := true;
  end;
  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TArticle_Data.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TArticle_Data.bbt6Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
begin
    if IE1.Active then
    begin
      if IE1.recordcount=0 then
      begin
          showmessage('No record.');
          abort;
      end;
    end else
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
      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
        eclApp.Cells(1,i+2):=DBGridEh1.Columns[i].Title.Caption;
      end;
      IE1.First;
      j:=2;
      while   not  IE1.Eof   do
      begin
          eclApp.Cells(j,1):=j-1;
          for i:=0 to DBGridEh1.Columns.Count-1 do
          begin
              eclApp.Cells(j,i+2):=DBGridEh1.Fields[i].Value;
              eclApp.Cells.Cells.item[j,i+2].font.size:='10';
          end;
          IE1.Next;
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

procedure TArticle_Data.BB1Click(Sender: TObject);
begin
   with xxzl do
  begin
    active := false;
    sql.Clear;
    sql.add('select XieXing,SheHao,SKU,SR,DDMH,DMGJ,DAOMH,DAOGJ,StitchingCode,AssemblyCode,Qty,YWSM from (');
    sql.add('select XieXing,SheHao,SKU,SR,DDMH,DMGJ,DAOMH,DAOGJ,StitchingCode,AssemblyCode,sum (Qty) as Qty,YWSM');
    sql.add('from (select XXZL.XieXing,XXZL.SheHao,XXZL.ARTICLE as SKU,kfxxzl.DEVCODE as SR,xxzl.DDMH,xxzl.DMGJ,xxzl.DAOMH,xxzl.DAOGJ,SKU_SA_CODE.StitchingCode,SKU_SA_CODE.AssemblyCode,SCBBS.Qty,LBZLS.YWSM');
    sql.add('from XXZL');
    sql.add('left join kfxxzl on XXZL.XieXing = kfxxzl.XieXing and XXZL.SheHao = kfxxzl.SheHao');
    sql.Add('left join SKU_SA_CODE  ON  SKU_SA_CODE.XieXing = XXZL.XieXing AND  SKU_SA_CODE.SheHao = XXZL.SheHao');
    sql.add('Left join LBZLS on LBZLS.LBDH=XXZL.XieGN and LBZLS.LB=''03''');
    if CheckBox1.Checked then
      sql.Add('inner join IE_ARTICLEDATA ON  IE_ARTICLEDATA.XieXing = XXZL.XieXing AND  IE_ARTICLEDATA.SheHao = XXZL.SheHao ')
    else
      sql.Add('left join IE_ARTICLEDATA ON  IE_ARTICLEDATA.XieXing = XXZL.XieXing AND  IE_ARTICLEDATA.SheHao = XXZL.SheHao ');
    sql.Add('left join ddzl on kfxxzl.ARTICLE = ddzl.ARTICLE and ddzl.XieXing = kfxxzl.XieXing AND  ddzl.SheHao = kfxxzl.SheHao and gsbh =''VA12''');
    if CheckBox1.Checked then
    begin
      SQL.Add('left join (select scbh,sum(Qty) as Qty   ');
      SQL.Add('           from SCBBS left join SCBB on SCBB.ProNo=SCBBS.ProNO where  SCBBS.GXLB=''A''   ');

      SQL.Add('         and convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
      SQL.add('         '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
      SQL.Add('  		      group by scbh)  SCBBS on ddzl.DDBH=SCBBS.SCBH   ');
    end else
    begin
      SQL.Add('left join (select scbh,sum(Qty) as Qty   ');
      SQL.Add('           from SCBBS left join SCBB on SCBB.ProNo=SCBBS.ProNO where 1=2 and SCBBS.GXLB=''A''   ');

      SQL.Add('         and convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
      SQL.add('         '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
      SQL.Add('  		      group by scbh)  SCBBS on ddzl.DDBH=SCBBS.SCBH   ');
    end;
    sql.add('where 1 = 1');
    if EDSKU.Text <> '' then
      sql.add('and XXZL.ARTICLE like ''' + EDSKU.Text + '%'' ');
    if EDSR.Text <> '' then
      sql.add('and kfxxzl.DEVCODE like ''' + EDSR.Text + '%'' ');
    if EDDAO.Text <> '' then
      sql.add('and xxzl.DAOMH like ''' + EDDAO.Text + '%'' ');
    if CK1.Checked then
    begin
      sql.add('and XXZL.YN='''+'1''');
    end;
    if CheckBox1.Checked then
      sql.add('and SCBBS.Qty is not null');
    sql.add('group by XXZL.XieXing,XXZL.SheHao,XXZL.ARTICLE,kfxxzl.DEVCODE,xxzl.DDMH,xxzl.DMGJ,xxzl.DAOMH,xxzl.DAOGJ,SKU_SA_CODE.StitchingCode,SKU_SA_CODE.AssemblyCode,SCBBS.Qty,LBZLS.YWSM');
    sql.add(') XXZL group by XieXing,SheHao,SKU,SR,DDMH,DMGJ,DAOMH,DAOGJ,StitchingCode,AssemblyCode,YWSM');
    if not CheckBox2.Checked then
    begin
      sql.add('union all');
      sql.add('select XieXing,SheHao,SKU,SR,DDMH,DMGJ,DAOMH,DAOGJ,StitchingCode,AssemblyCode,sum (Qty) as Qty,YWSM');
      sql.add('from (select kfxxzl.XieXing,kfxxzl.SheHao,kfxxzl.ARTICLE as SKU,kfxxzl.DEVCODE as SR,xxzl.DDMH,xxzl.DMGJ,xxzl.DAOMH,xxzl.DAOGJ,SKU_SA_CODE.StitchingCode,SKU_SA_CODE.AssemblyCode,SCBBS.Qty,LBZLS.YWSM');
      sql.add('from kfxxzl');
      sql.add('left join xxzl on XXZL.XieXing = kfxxzl.XieXing and XXZL.SheHao = kfxxzl.SheHao');
      sql.Add('left join SKU_SA_CODE  ON  SKU_SA_CODE.XieXing = kfxxzl.XieXing AND  SKU_SA_CODE.SheHao = kfxxzl.SheHao');
      sql.add('Left join LBZLS on LBZLS.LBDH=XXZL.XieGN and LBZLS.LB=''03''');
      if CheckBox1.Checked then
        sql.Add('inner join IE_ARTICLEDATA ON  IE_ARTICLEDATA.XieXing = kfxxzl.XieXing AND  IE_ARTICLEDATA.SheHao = kfxxzl.SheHao ')
      else
        sql.Add('left join IE_ARTICLEDATA ON  IE_ARTICLEDATA.XieXing = kfxxzl.XieXing AND  IE_ARTICLEDATA.SheHao = kfxxzl.SheHao ');
      sql.Add('left join ddzl on kfxxzl.ARTICLE = ddzl.ARTICLE and ddzl.XieXing = kfxxzl.XieXing AND  ddzl.SheHao = kfxxzl.SheHao and gsbh =''VA12''');
      SQL.Add('left join (select scbh,sum(Qty) as Qty   ');
      SQL.Add('           from SCBBS left join SCBB on SCBB.ProNo=SCBBS.ProNO where 1=2 and SCBBS.GXLB=''A''   ');

      SQL.Add('         and convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
      SQL.add('         '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
      SQL.Add('  		      group by scbh)  SCBBS on ddzl.DDBH=SCBBS.SCBH   ');
      sql.add('where 1 = 1');
      if EDSKU.Text <> '' then
        sql.add('and kfxxzl.ARTICLE like ''' + EDSKU.Text + '%'' ');
      if EDSR.Text <> '' then
        sql.add('and kfxxzl.DEVCODE like ''' + EDSR.Text + '%'' ');
      if EDDAO.Text <> '' then
        sql.add('and xxzl.DAOMH like ''' + EDDAO.Text + '%'' ');
      sql.add('group by kfxxzl.XieXing,kfxxzl.SheHao,kfxxzl.ARTICLE,kfxxzl.DEVCODE,xxzl.DDMH,xxzl.DMGJ,xxzl.DAOMH,xxzl.DAOGJ,SKU_SA_CODE.StitchingCode,SKU_SA_CODE.AssemblyCode,SCBBS.Qty,LBZLS.YWSM');
      sql.add(') XXZL group by XieXing,SheHao,SKU,SR,DDMH,DMGJ,DAOMH,DAOGJ,StitchingCode,AssemblyCode,YWSM');
    end;
    sql.add(') XXZL group by XieXing,SheHao,SKU,SR,DDMH,DMGJ,DAOMH,DAOGJ,StitchingCode,AssemblyCode,Qty,YWSM');
    sql.add('order by SKU');
    //funcobj.WriteErrorLog(sql.Text);
    active := true;
  end;
  IE1.Active := true;
  IE2.Active := true;
  if Position > 0 then BitBtn7.Enabled := true;
end;

procedure TArticle_Data.btnBE1Click(Sender: TObject);
begin
  if IE1.IsEmpty then exit;
  if IE1.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    abort;   
  end;

  with IE2 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
    fieldbyname('XieXing').AsString := IE1.fieldbyname('XieXing').AsString;
    fieldbyname('SheHao').AsString := IE1.fieldbyname('SheHao').AsString;
    fieldbyname('Production_Category').AsString := IE1.fieldbyname('Production_Category').AsString;
    fieldbyname('VERSION').AsString := IE1.fieldbyname('VERSION').AsString;
  end;
  DBGridEh2.columns[4].ButtonStyle:=cbsEllipsis;
  DBGridEh2.columns[15].ButtonStyle:=cbsEllipsis;
  BTNBE2.Enabled:=FALSE;
  BTNBE3.Enabled:=FALSE;
  BitBtn3.Enabled := FALSE;
  BTNBE4.Enabled:=true;
  BTNBE5.Enabled:=true;
end;

procedure TArticle_Data.btnBE3Click(Sender: TObject);
begin
  if IE1.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    abort;
  end;
  DBGridEh1.Enabled:=false;
  with IE2 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  DBGridEh2.columns[4].ButtonStyle:=cbsEllipsis;
  DBGridEh2.columns[15].ButtonStyle:=cbsEllipsis;
  btnBE1.Enabled:=FALSE;
  btnBE2.Enabled:=FALSE;
  BitBtn3.Enabled := FALSE;
  btnBE4.Enabled:=true;
  btnBE5.Enabled:=true;
end;

procedure TArticle_Data.btnBE2Click(Sender: TObject);
begin
  if IE1.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    abort;
  end;
  DBGridEh1.Enabled:=false;

  with IE2 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  btnBE1.Enabled:=FALSE;
  btnBE3.Enabled:=FALSE;
  btnBE4.Enabled:=true;
  btnBE5.Enabled:=true;
end;

procedure TArticle_Data.btnBE5Click(Sender: TObject);
begin
  with IE2 do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  btnBE1.Enabled:=TRUE;
  btnBE2.Enabled:=TRUE;
  btnBE3.Enabled:=TRUE;
  btnBE4.Enabled:=false;
  btnBE5.Enabled:=false;
end;

procedure TArticle_Data.btnBE4Click(Sender: TObject);
var i:integer;
    Qty:real;
    OriginalValue: Double;
    Cutting: string;
begin
  if IE2.FieldByName('STT').AsString = '' then
  begin
    showmessage('Please keyin STT Data !');
    exit;
  end;
  try
    IE2.first;
    for i:=1 to IE2.RecordCount do
      begin
        case IE2.updatestatus of
          usinserted:
          begin
               IE2.edit;
               IE2.FieldByName('XieXing').Value := xxzl.fieldbyname('XieXing').AsString;
               IE2.FieldByName('SheHao').Value := xxzl.fieldbyname('SheHao').AsString;
               IE2.FieldByName('Production_Category').Value := IE1.fieldbyname('Production_Category').AsString;
               IE2.FieldByName('VERSION').Value := IE1.fieldbyname('VERSION').AsString;
               if IE1.fieldbyname('Production_Category').AsString<>'Cutting' then
                  IE2.FieldByName('Cut_Type').Value := 'ZZZZ'
               else
                  IE2.FieldByName('Cut_Type').Value := IE2.fieldbyname('Cut_Type').AsString;
               if IE1.fieldbyname('File_Name').AsString <> '' then IE2.FieldByName('File_Name').Value := IE1.fieldbyname('File_Name').AsString;
               IE2.FieldByName('userID').Value:=main.edit1.text;
               IE2.FieldByName('userdate').Value:=date;
               IE2.FieldByName('YN').Value:='1';
               UpSQL2.apply(ukinsert);
          end;
          usmodified:
             begin
                if IE2.fieldbyname('YN').value='0'then
                begin
                  UpSQL2.apply(ukdelete);
                end else
                begin
                  IE2.edit;
                  //IE2.FieldByName('userID').Value:=main.edit1.text;
                  //IE2.FieldByName('userdate').Value:=date;
                  UpSQL2.apply(ukmodify);
                end;
             end;
        end;
        IE2.next;
      end;
      IE2.active:=false;
      IE2.cachedupdates:=false;
      IE2.requestlive:=false;
      IE2.active:=true;
      //
      btnBE1.Enabled:=TRUE;
      btnBE2.Enabled:=TRUE;
      btnBE3.Enabled:=TRUE;
      BitBtn3.Enabled := TRUE;
      btnBE4.Enabled:=false;
      btnBE5.Enabled:=false;
      DBGridEh1.Enabled:=true;

    except
      Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
    end;
end;

procedure TArticle_Data.IE1AfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled := true;
  BB3.Enabled := true;
  BB4.Enabled := true;
  BitBtn1.Enabled := true;
  BitBtn4.Enabled := true;
end;

procedure TArticle_Data.BB3Click(Sender: TObject);
begin
  if IE2.recordcount=0 then
  begin
    with IE1 do
      begin
        if fieldbyname('USERID').value=main.edit1.Text then
        begin
          requestlive:=true;
          cachedupdates:=true;
          edit;
          fieldbyname('YN').Value:='0';
        end else
        begin
          showmessage('It is not yours,can not delete.');
        end;
      end;
  end else
  begin
    showmessage('Pls delete the Deliver Detail first.')
  end;

  BB2.Enabled := false;
  BB4.Enabled := false;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TArticle_Data.IE2AfterOpen(DataSet: TDataSet);
begin
   btnBE1.Enabled := true;
   btnBE2.Enabled := true;
   btnBE3.Enabled := true;
   btnImport.Enabled := true;
   BitBtn3.Enabled := true;
   if IE1.fieldbyname('Production_Category').AsString<>'Cutting' then
   begin
     DBGridEh2.Columns[1].Visible:=false;
     DBGridEh2.Columns[2].Visible:=false;
     DBGridEh2.Columns[3].Visible:=false;
   end else
   begin
     DBGridEh2.Columns[1].Visible:=true;
     DBGridEh2.Columns[2].Visible:=true;
     DBGridEh2.Columns[3].Visible:=true;
   end;
end;

procedure TArticle_Data.BitBtn2Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
begin
    if IE2.Active then
    begin
      if IE2.recordcount=0 then
      begin
          showmessage('No record.');
          abort;
      end;
    end else
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
      if IE2.fieldbyname('Production_Category').AsString='Cutting' then
      begin
        for i:=0 to DBGridEh2.Columns.Count-1 do
        begin
          eclApp.Cells(1,i+2):=DBGridEh2.Columns[i].Title.Caption;
        end;
      end else
      begin
        for i:=4 to DBGridEh2.Columns.Count-1 do
        begin
          eclApp.Cells(1,i-2):=DBGridEh2.Columns[i].Title.Caption;
        end;
      end;
      IE2.First;
      j:=2;
      while   not  IE2.Eof   do
      begin
          eclApp.Cells(j,1):=j-1;
          if IE2.fieldbyname('Production_Category').AsString='Cutting' then
          begin
            for i:=0 to DBGridEh2.Columns.Count-1 do
            begin
                eclApp.Cells(j,i+2):=DBGridEh2.Fields[i].Value;
                eclApp.Cells.Cells.item[j,i+2].font.size:='10';
            end;
          end else
          begin
            for i:=4 to DBGridEh2.Columns.Count-1 do
            begin
                eclApp.Cells(j,i-2):=DBGridEh2.Fields[i].Value;
                eclApp.Cells.Cells.item[j,i-2].font.size:='10';
            end;
          end;
          IE2.Next;
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

procedure TArticle_Data.BitBtn1Click(Sender: TObject);
function Ceil(const X: Extended): Int64;
begin
  Result := Trunc(X);
  if Frac(X) > 0 then
    Inc(Result);
end;
var
  i,j,k,DataNum:integer;
  flag:boolean;
  MsExcel:olevariant;
  MsExcelWorkbook: Variant;
  Production_Category1:TStringlist;
  TCT,Production_Category,VERSION,Hourly_Output,IE_DL,Actual_DL,DL,LBR,Status,Test_Day,Approve_Time,Activation_Time,FileName:string;
  result,result1: Double;
begin
  Production_Category1:=TStringList.Create;
  IE1.Active:=true;
  with IE1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    insert;
  end;
   if opendialog.Execute then
   begin
     MsExcel:=CreateOleObject('Excel.Application');
     MsExcelWorkBook := msExcel.Workbooks.Open(OpenDialog.FileName);
     FileName := OpenDialog.FileName;
     FileName:= Copy(FileName,4,Length(FileName));
     EDSKU.Text:= msExcel.WorkBooks[1].WorkSheets[5].Cells[4,7];
     EDDAO.Text:= msExcel.WorkBooks[1].WorkSheets[5].Cells[4,5];
     BB1.Click;
     j:=10;
     flag:=true;
     for j:=10 to 15 do
     begin
         Hourly_Output:=msExcel.WorkBooks[1].WorkSheets[5].Cells[6,7];
          if  Hourly_Output ='' then Hourly_Output:='0';
         Production_Category:=msExcel.WorkBooks[1].WorkSheets[5].Cells[j,12];
         IE_DL:=msExcel.WorkBooks[1].WorkSheets[5].Cells[j,3];
         if  IE_DL ='' then IE_DL:='0';
         DL:=msExcel.WorkBooks[1].WorkSheets[5].Cells[j,10];
         if  DL ='' then DL:='0';
         //LBR:=msExcel.WorkBooks[1].WorkSheets[5].Cells[j,5];
         Test_Day:=msExcel.WorkBooks[1].WorkSheets[5].Cells[1,9];
         Test_Day:= Copy(Test_Day,7,Length(Test_Day));

         result:=msExcel.WorkBooks[1].WorkSheets[5].Cells[j,11];
         result:=RoundTo(result, -2);
         TCT:=FloatToStr(result);
         if  TCT ='' then TCT:='0';

         if  Production_Category <>'' then
         begin
           IE1.insert;
           IE1.FieldByName('Production_Category').Value:=Production_Category;
           IE1.FieldByName('Hourly_Output').Value:=Hourly_Output;
           IE1.FieldByName('IE_DL').Value:=IE_DL;
           IE1.FieldByName('IDL').Value:=DL;
           IE1.FieldByName('TCT').Value:=TCT;
           //IE1.FieldByName('LBR').Value:=LBR;
           IE1.FieldByName('Test_Day').Value:= Test_Day;
           if FileName <> '' then IE1.FieldByName('File_Name').Value:= FileName;
           IE1.Post;
         end;
         //j:=j+1;
     end;
     MsExcelWorkBook.Close;
     MsExcel.Quit;
   end;
   //article.Free;
   BB5.Enabled := true;
   BB6.Enabled := true;
end;

procedure TArticle_Data.btnImportClick(Sender: TObject);
function Ceil(const X: Extended): Int64;
begin
  Result := Trunc(X);
  if Frac(X) > 0 then
    Inc(Result);
end;
var
  i,j,Sheet,DataNum,StyleTInt,StyleEInt :integer;
  flag:boolean;
  MsExcel:olevariant;
  MsExcelWorkbook: Variant;
  Production_Category1:TStringlist;
  STTStr,GXLB,FileName,StyleT,StyleE:string;
  Cut_Type,Piece_percut,Process_name,CT,Ideal_Labor,Labor_needed,File_Name,SChiTiet,TKT,Tong_TG,TG_Loss,SLKH,SNguoi_KH,SNguoi_NC,LoaiMay,Actual,Process_YWPM :string;
  result,result1: Double;
begin
  if IE1.IsEmpty then exit;
  if IE1.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    abort;
  end;
  Production_Category1:=TStringList.Create;
  with IE2 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    insert;
  end;
   if opendialog.Execute then
   begin
     MsExcel:=CreateOleObject('Excel.Application');
     MsExcelWorkBook := msExcel.Workbooks.Open(OpenDialog.FileName);
     
     j:=9;
     flag:=true;
     if IE1.fieldbyname('Production_Category').AsString='Stitching' then
     begin
       Sheet:=2;
       GXLB:='S';
     end else
     if IE1.fieldbyname('Production_Category').AsString='Assembly' then
     begin
       Sheet:=3;
       GXLB:='A';
     end else
     if IE1.fieldbyname('Production_Category').AsString='Packing' then
     begin
       Sheet:=4;
       GXLB:='AR';
     end else

     if (IE1.fieldbyname('Production_Category').AsString<>'Stitching') and (IE1.fieldbyname('Production_Category').AsString<>'Assembly') and (IE1.fieldbyname('Production_Category').AsString<>'Packing')
     and (IE1.fieldbyname('Production_Category').AsString<>'Cutting') then
     begin
       StyleT:=inputbox('Please Input Start Tab','DEGREASING/STOCK-FIT/FLOCKING/BOOTIE','');
       GXLB:='O';
       StyleTInt := StrToInt(StyleT);
     end else
     if IE1.fieldbyname('Production_Category').AsString='Cutting' then
       GXLB:='C';

     /// DEGREASING or STOCK-FIT or FLOCKING  or BOOTIE
     if (IE1.fieldbyname('Production_Category').AsString<>'Stitching') and (IE1.fieldbyname('Production_Category').AsString<>'Assembly') and (IE1.fieldbyname('Production_Category').AsString<>'Packing')
     and (IE1.fieldbyname('Production_Category').AsString<>'Cutting') then
     begin
       for Sheet:=StyleTInt to StyleTInt do
       begin
         while(flag=true)  do
         begin
             STTStr:=msExcel.WorkBooks[1].WorkSheets[Sheet].Cells[j,1];
             Cut_Type:=GXLB+STTStr;
             if  Piece_percut ='' then Piece_percut:='0';

             Process_name:=msExcel.WorkBooks[1].WorkSheets[Sheet].Cells[j,15];
             Process_YWPM:=msExcel.WorkBooks[1].WorkSheets[Sheet].Cells[j,16];

             result:=msExcel.WorkBooks[1].WorkSheets[Sheet].Cells[j,4];
             result:=RoundTo(result, -2);
             CT:=FloatToStr(result);
             if  CT ='' then CT:='0';

             result:=msExcel.WorkBooks[1].WorkSheets[Sheet].Cells[j,8];
             result:=RoundTo(result, -2);
             Ideal_Labor:=FloatToStr(result);
             if  Ideal_Labor ='' then TKT:='0';

             Labor_needed:=msExcel.WorkBooks[1].WorkSheets[Sheet].Cells[j,10];
             if  Labor_needed ='' then Labor_needed:='0';

             SChiTiet:=msExcel.WorkBooks[1].WorkSheets[Sheet].Cells[j,4];
             if  SChiTiet ='' then SChiTiet:='0';

             result:=msExcel.WorkBooks[1].WorkSheets[Sheet].Cells[j,3];
             result:=RoundTo(result, -2);
             TKT:=FloatToStr(result);
             if  TKT ='' then TKT:='0';

             result:=msExcel.WorkBooks[1].WorkSheets[Sheet].Cells[j,6];
             result:=RoundTo(result, -2);
             Tong_TG:=FloatToStr(result);
             if  Tong_TG ='' then Tong_TG:='0';

             result:=msExcel.WorkBooks[1].WorkSheets[Sheet].Cells[j,5];
             result:=RoundTo(result, -2)*100;


             TG_Loss:=FloatToStr(result);
             if  TG_Loss ='' then TG_Loss:='0';

             result:=msExcel.WorkBooks[1].WorkSheets[Sheet].Cells[j,7];
             result:=RoundTo(result, -2);
             SLKH:=FloatToStr(result);
             if  SLKH ='' then SLKH:='0';

             result:=msExcel.WorkBooks[1].WorkSheets[Sheet].Cells[j,9];
             result:=RoundTo(result, -2);
             SNguoi_KH:=FloatToStr(result);
             if  SNguoi_KH ='' then SNguoi_KH:='0';


             result:=msExcel.WorkBooks[1].WorkSheets[Sheet].Cells[j,11];
             result:=RoundTo(result, -2);
             SNguoi_NC:=FloatToStr(result);
             if  SNguoi_NC ='' then SNguoi_NC:='0';

             LoaiMay:=msExcel.WorkBooks[1].WorkSheets[Sheet].Cells[j,17];
             Actual:=msExcel.WorkBooks[1].WorkSheets[Sheet].Cells[j,13];
             if  STTStr <>'' then
             begin
               IE2.insert;
               IE2.FieldByName('STT').Value:=STTStr;
               IE2.FieldByName('Cut_Type').Value:=Cut_Type;
               IE2.FieldByName('Piece_percut').Value:=Piece_percut;
               IE2.FieldByName('Process_name').Value:=Process_name;
               IE2.FieldByName('Process_YWPM').Value:=Process_YWPM;
               IE2.FieldByName('CT').Value:=CT;
               IE2.FieldByName('Ideal_Labor').Value:=Ideal_Labor;
               IE2.FieldByName('Labor_needed').Value:=Labor_needed;
               IE2.FieldByName('SChiTiet').Value:=SChiTiet;
               IE2.FieldByName('TKT').Value:=TKT;
               IE2.FieldByName('Tong_TG').Value:=Tong_TG;
               IE2.FieldByName('TG_Loss').Value:=TG_Loss;
               IE2.FieldByName('SLKH').Value:=SLKH;
               IE2.FieldByName('SNguoi_KH').Value:=SNguoi_KH;
               IE2.FieldByName('SNguoi_NC').Value:=SNguoi_NC;
               IE2.FieldByName('LoaiMay').Value:=LoaiMay;
               IE2.FieldByName('Actual').Value:=Actual;
               IE2.Post;
             end;
             j:=j+1;
             if STTStr='' then
             begin
               flag:=false;
             end;
         end;
         j:=9;
         flag:=true;
       end;
     end;

     if (IE1.fieldbyname('Production_Category').AsString='Stitching') or (IE1.fieldbyname('Production_Category').AsString='Assembly') or (IE1.fieldbyname('Production_Category').AsString='Packing') then
     begin
       while(flag=true)  do
       begin
           STTStr:=msExcel.WorkBooks[1].WorkSheets[Sheet].Cells[j,1];
           Cut_Type:=GXLB+STTStr;
           if  Piece_percut ='' then Piece_percut:='0';

           Process_name:=msExcel.WorkBooks[1].WorkSheets[Sheet].Cells[j,15];
           Process_YWPM:=msExcel.WorkBooks[1].WorkSheets[Sheet].Cells[j,16];

           result:=msExcel.WorkBooks[1].WorkSheets[Sheet].Cells[j,4];
           result:=RoundTo(result, -2);
           CT:=FloatToStr(result);
           if  CT ='' then CT:='0';

           result:=msExcel.WorkBooks[1].WorkSheets[Sheet].Cells[j,8];
           result:=RoundTo(result, -2);
           Ideal_Labor:=FloatToStr(result);
           if  Ideal_Labor ='' then TKT:='0';

           Labor_needed:=msExcel.WorkBooks[1].WorkSheets[Sheet].Cells[j,10];
           if  Labor_needed ='' then Labor_needed:='0';

           SChiTiet:=msExcel.WorkBooks[1].WorkSheets[Sheet].Cells[j,4];
           if  SChiTiet ='' then SChiTiet:='0';

           result:=msExcel.WorkBooks[1].WorkSheets[Sheet].Cells[j,3];
           result:=RoundTo(result, -2);
           TKT:=FloatToStr(result);
           if  TKT ='' then TKT:='0';

           result:=msExcel.WorkBooks[1].WorkSheets[Sheet].Cells[j,6];
           result:=RoundTo(result, -2);
           Tong_TG:=FloatToStr(result);
           if  Tong_TG ='' then Tong_TG:='0';

           result:=msExcel.WorkBooks[1].WorkSheets[Sheet].Cells[j,5];
           result:=RoundTo(result, -2)*100;

           TG_Loss:=FloatToStr(result);
           if  TG_Loss ='' then TG_Loss:='0';

           result:=msExcel.WorkBooks[1].WorkSheets[Sheet].Cells[j,7];
           result:=RoundTo(result, -2);
           SLKH:=FloatToStr(result);
           if  SLKH ='' then SLKH:='0';

           result:=msExcel.WorkBooks[1].WorkSheets[Sheet].Cells[j,9];
           result:=RoundTo(result, -2);
           SNguoi_KH:=FloatToStr(result);
           if  SNguoi_KH ='' then SNguoi_KH:='0';


           result:=msExcel.WorkBooks[1].WorkSheets[Sheet].Cells[j,11];
           result:=RoundTo(result, -2);
           SNguoi_NC:=FloatToStr(result);
           if  SNguoi_NC ='' then SNguoi_NC:='0';

           LoaiMay:=msExcel.WorkBooks[1].WorkSheets[Sheet].Cells[j,17];
           Actual:=msExcel.WorkBooks[1].WorkSheets[Sheet].Cells[j,13];
           if  STTStr <>'' then
           begin
             IE2.insert;
             IE2.FieldByName('STT').Value:=STTStr;
             IE2.FieldByName('Cut_Type').Value:=Cut_Type;
             IE2.FieldByName('Piece_percut').Value:=Piece_percut;
             IE2.FieldByName('Process_name').Value:=Process_name;
             IE2.FieldByName('Process_YWPM').Value:=Process_YWPM;
             IE2.FieldByName('CT').Value:=CT;
             IE2.FieldByName('Ideal_Labor').Value:=Ideal_Labor;
             IE2.FieldByName('Labor_needed').Value:=Labor_needed;
             IE2.FieldByName('SChiTiet').Value:=SChiTiet;
             IE2.FieldByName('TKT').Value:=TKT;
             IE2.FieldByName('Tong_TG').Value:=Tong_TG;
             IE2.FieldByName('TG_Loss').Value:=TG_Loss;
             IE2.FieldByName('SLKH').Value:=SLKH;
             IE2.FieldByName('SNguoi_KH').Value:=SNguoi_KH;
             IE2.FieldByName('SNguoi_NC').Value:=SNguoi_NC;
             IE2.FieldByName('LoaiMay').Value:=LoaiMay;
             IE2.FieldByName('Actual').Value:=Actual;
             IE2.Post;
           end;
           j:=j+1;
           if STTStr='' then
           begin
             flag:=false;
           end;
       end;
     end;
     j:=9;
     if IE1.fieldbyname('Production_Category').AsString='Cutting' then
     begin
       while(flag=true)  do
       begin
           STTStr:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1];
           Cut_Type:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,2];
           if  Cut_Type ='' then Piece_percut:='0';
           Piece_percut:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,3];
           if  Piece_percut ='' then Piece_percut:='0';
           Process_name:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,18];
           Process_YWPM:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,19];
           result:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,7];
           result:=RoundTo(result, -2);
           CT:=FloatToStr(result);
           if  CT ='' then CT:='0';

           result:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,11];;
           result:=RoundTo(result, -2);
           Ideal_Labor:=FloatToStr(result);
           if  Ideal_Labor ='' then TKT:='0';

           Labor_needed:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,13];
           if  Labor_needed ='' then Labor_needed:='0';

           SChiTiet:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,4];
           if  SChiTiet ='' then SChiTiet:='0';

           result:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,6];
           result:=RoundTo(result, -2);
           TKT:=FloatToStr(result);
           if  TKT ='' then TKT:='0';

           result:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,9];
           result:=RoundTo(result, -2);
           Tong_TG:=FloatToStr(result);
           if  Tong_TG ='' then Tong_TG:='0';

           result:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,8];
           result:=RoundTo(result, -2)*100;
           TG_Loss:=FloatToStr(result);
           if  TG_Loss ='' then TG_Loss:='0';

           result:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,10];
           result:=RoundTo(result, -2);
           SLKH:=FloatToStr(result);
           if  SLKH ='' then SLKH:='0';

           result:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,11];
           result:=RoundTo(result, -2);
           SNguoi_KH:=FloatToStr(result);
           if  SNguoi_KH ='' then SNguoi_KH:='0';


           result:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,14];
           result:=RoundTo(result, -2);
           SNguoi_NC:=FloatToStr(result);
           if  SNguoi_NC ='' then SNguoi_NC:='0';

           LoaiMay:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,20];
           Actual:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,16];
           if  STTStr <>'' then
           begin
             IE2.insert;
             IE2.FieldByName('STT').Value:=STTStr;
             IE2.FieldByName('Cut_Type').Value:=Cut_Type;
             IE2.FieldByName('Piece_percut').Value:=Piece_percut;
             IE2.FieldByName('Process_name').Value:=Process_name;
             IE2.FieldByName('Process_YWPM').Value:=Process_YWPM;
             IE2.FieldByName('CT').Value:=CT;
             IE2.FieldByName('Ideal_Labor').Value:=Ideal_Labor;
             IE2.FieldByName('Labor_needed').Value:=Labor_needed;
             IE2.FieldByName('SChiTiet').Value:=SChiTiet;
             IE2.FieldByName('TKT').Value:=TKT;
             IE2.FieldByName('Tong_TG').Value:=Tong_TG;
             IE2.FieldByName('TG_Loss').Value:=TG_Loss;
             IE2.FieldByName('SLKH').Value:=SLKH;
             IE2.FieldByName('SNguoi_KH').Value:=SNguoi_KH;
             IE2.FieldByName('SNguoi_NC').Value:=SNguoi_NC;
             IE2.FieldByName('LoaiMay').Value:=LoaiMay;
             IE2.FieldByName('Actual').Value:=Actual;
             IE2.Post;
           end;
           j:=j+1;
           if STTStr='' then
           begin
             flag:=false;
           end;
       end;
     end;
     MsExcelWorkBook.Close;
     MsExcel.Quit;
   end;
   BTNBE4.Enabled:=true;
   BTNBE5.Enabled:=true;
end;

procedure TArticle_Data.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if IE1.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TArticle_Data.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if IE2.FieldByName('YN').value='0' then
  begin
    DBGridEh2.canvas.font.color:=clred;
    DBGridEh2.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TArticle_Data.CopyArticle1Click(Sender: TObject);
begin
    Article_Copy:=TArticle_Copy.Create(self);
    Article_Copy.Show;
end;

procedure TArticle_Data.BitBtn4Click(Sender: TObject);
var i:integer;
begin
  if IE1.recordcount>0 then
  begin
      with IE1 do
      begin
        requestlive:=true;
        cachedupdates:=true;
        IE1.First;
        for i:=1 to IE1.RecordCount do
        begin
          edit;
          fieldbyname('YN').Value:='0';
          if IE2.recordcount>0 then
          begin
              showmessage('Chua xoa chi tiet');
              abort;
          end;
          IE1.next;
        end;
      end;
  end;
  BB2.Enabled := false;
  BB4.Enabled := false;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TArticle_Data.BitBtn3Click(Sender: TObject);
var i:integer;
begin
  if IE2.recordcount>0 then
  begin
      with IE2 do
      begin
        requestlive:=true;
        cachedupdates:=true;
        IE2.First;
        for i:=1 to IE2.RecordCount do
        begin
          edit;
          fieldbyname('YN').Value:='0';
          IE2.next;
        end;
      end;
  end;
  btnBE1.Enabled:=FALSE;
  btnBE3.Enabled:=FALSE;
  btnBE4.Enabled:=true;
  btnBE5.Enabled:=true;
end;

procedure TArticle_Data.DBGridEh2EditButtonClick(Sender: TObject);
begin
  if  DBGridEh2.SelectedField.FieldName='Process_name' then
  begin
    IE_CONGDOAN:=TIE_CONGDOAN.create(self);
    IE_CONGDOAN.show;
  end;

  if  DBGridEh2.SelectedField.FieldName='LoaiMay' then
  begin
    IE_LOAIMAY:=TIE_LOAIMAY.create(self);
    IE_LOAIMAY.show;
  end;
end;

procedure TArticle_Data.BitBtn5Click(Sender: TObject);
function Ceil(const X: Extended): Int64;
begin
  Result := Trunc(X);
  if Frac(X) > 0 then
    Inc(Result);
end;
var
  i,j,k,DataNum:integer;
  flag:boolean;
  MsExcel:olevariant;
  MsExcelWorkbook: Variant;
  Production_Category1:TStringlist;
  STTStr,TCT,Production_Category,VERSION,Hourly_Output,IE_DL,Actual_DL,DL,LBR,Status,FileName:string;
  result,result1: Double;
  Test_Day,Approve_Time,Activation_Time: TDateTime;
begin
  Production_Category1:=TStringList.Create;
  IE1.Active:=true;
  with IE1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    insert;
  end;
   if opendialog.Execute then
   begin
     MsExcel:=CreateOleObject('Excel.Application');
     MsExcelWorkBook := msExcel.Workbooks.Open(OpenDialog.FileName);
     j:=2;
     flag:=true;
     while(flag=true)  do
     begin
         STTStr:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1];
         Production_Category:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,2];
         VERSION:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,3];
         Hourly_Output:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,4];
         if  Hourly_Output ='' then Hourly_Output:='0';
         IE_DL:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,5];
         if  IE_DL ='' then IE_DL:='0';
         Actual_DL:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,6];
         if  Actual_DL ='' then Actual_DL:='0';
         DL:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,7];
         if  DL ='' then DL:='0';
         LBR:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,8];
         result:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,9];
         result:=RoundTo(result, -2);
         TCT:=FloatToStr(result);
         if  TCT ='' then TCT:='0';
         Status:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,10];
         Test_Day:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,11];
         FileName:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,16];
         if  Production_Category <>'' then
         begin
           IE1.insert;
           IE1.FieldByName('Production_Category').Value:=Production_Category;
           IE1.FieldByName('VERSION').Value:=VERSION;
           IE1.FieldByName('Hourly_Output').Value:=Hourly_Output;
           IE1.FieldByName('IE_DL').Value:=IE_DL;
           IE1.FieldByName('Actual_DL').Value:=Actual_DL;
           IE1.FieldByName('IDL').Value:=DL;
           IE1.FieldByName('TCT').Value:=TCT;
           IE1.FieldByName('LBR').Value:=LBR;
           IE1.FieldByName('Status').Value:= Status;
           IE1.FieldByName('Test_Day').Value:= formatdatetime('yyyy/MM/dd',Test_Day);
           if FileName <> '' then IE1.FieldByName('File_Name').Value:= FileName;
           IE1.Post;
         end;
         j:=j+1;
         if STTStr='' then
         begin
           flag:=false;
         end;
     end;
     MsExcelWorkBook.Close;
     MsExcel.Quit;
   end;
   //article.Free;
   BB5.Enabled := true;
   BB6.Enabled := true;
end;

procedure TArticle_Data.BitBtn6Click(Sender: TObject);
function Ceil(const X: Extended): Int64;
begin
  Result := Trunc(X);
  if Frac(X) > 0 then
    Inc(Result);
end;
var
  i,j,Sheet,DataNum,StyleTInt,StyleEInt :integer;
  flag:boolean;
  MsExcel:olevariant;
  MsExcelWorkbook: Variant;
  Production_Category1:TStringlist;
  STTStr,GXLB,FileName,StyleT,StyleE:string;
  Cut_Type,Piece_percut,Process_name,TKT,CT,Ideal_Labor,Labor_needed,File_Name,Remark,SChiTiet,Tong_TG,TG_Loss,SLKH,SNguoi_KH,SNguoi_NC,LoaiMay,Actual,Process_YWPM :string;
  result,result1: Double;
begin
  if IE1.IsEmpty then exit;
  if IE1.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    abort;
  end;
  Production_Category1:=TStringList.Create;
  with IE2 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    insert;
  end;
  if opendialog.Execute then
  begin
     MsExcel:=CreateOleObject('Excel.Application');
     MsExcelWorkBook := msExcel.Workbooks.Open(OpenDialog.FileName);
     j:=2;
     flag:=true;
     while(flag=true)  do
     begin
         if IE1.fieldbyname('Production_Category').AsString='Cutting' then
         begin
           STTStr:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,2];
           Cut_Type:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,3];
           if  Cut_Type ='' then Piece_percut:='0';
           Piece_percut:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,4];
           if  Piece_percut ='' then Piece_percut:='0';
           SChiTiet:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,5];
           Process_name:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,6];
           Process_YWPM:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,7];
           result:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,8];
           result:=RoundTo(result, -2);
           TKT:=FloatToStr(result);
           if  TKT ='' then TKT:='0';
           result:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,9];
           result:=RoundTo(result, -2);
           CT:=FloatToStr(result);
           if  CT ='' then CT:='0';
           result:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,10];
           result:=RoundTo(result, -2);
           TG_Loss:=FloatToStr(result);
           if  TG_Loss ='' then TG_Loss:='0';
           result:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,11];
           result:=RoundTo(result, -2);
           Tong_TG:=FloatToStr(result);
           if  Tong_TG ='' then Tong_TG:='0';
           SLKH:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,12];
           result:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,13];;
           result:=RoundTo(result, -2);
           Ideal_Labor:=FloatToStr(result);
           if  Ideal_Labor ='' then Ideal_Labor:='0';
           result:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,14];
           result:=RoundTo(result, -2);
           SNguoi_KH:=FloatToStr(result);
           if  SNguoi_KH ='' then SNguoi_KH:='0';
           Labor_needed:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,15];
           result:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,16];
           result:=RoundTo(result, -2);
           SNguoi_NC:=FloatToStr(result);
           if  SNguoi_NC ='' then SNguoi_NC:='0';
           LoaiMay :=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,17];
           Actual:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,18];
           File_Name:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,21];
           Remark:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,22];

           if  STTStr <>'' then
           begin
             IE2.insert;
             IE2.FieldByName('STT').Value:=STTStr;
             IE2.FieldByName('Cut_Type').Value:=Cut_Type;
             IE2.FieldByName('Piece_percut').Value:=Piece_percut;
             IE2.FieldByName('SChiTiet').Value:=SChiTiet;
             IE2.FieldByName('Process_name').Value:=Process_name;
             IE2.FieldByName('Process_YWPM').Value:=Process_YWPM;
             IE2.FieldByName('CT').Value:=CT;
             IE2.FieldByName('Ideal_Labor').Value:=Ideal_Labor;
             IE2.FieldByName('Labor_needed').Value:=Labor_needed;
             IE2.FieldByName('TKT').Value:=TKT;
             IE2.FieldByName('Tong_TG').Value:=Tong_TG;
             IE2.FieldByName('TG_Loss').Value:=TG_Loss;
             IE2.FieldByName('SLKH').Value:=SLKH;
             IE2.FieldByName('SNguoi_KH').Value:=SNguoi_KH;
             IE2.FieldByName('SNguoi_NC').Value:=SNguoi_NC;
             IE2.FieldByName('LoaiMay').Value:=LoaiMay;
             IE2.FieldByName('Actual').Value:=Actual;
             IE2.FieldByName('File_Name').Value:=File_Name;
             IE2.FieldByName('Remark').Value:=Remark;
             IE2.Post;
           end;
         end;

         if IE1.fieldbyname('Production_Category').AsString<>'Cutting' then
         begin
           STTStr:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1];
           Cut_Type:='ZZZZ';
           Process_name:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,2];
           Process_YWPM:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,3];
           result:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,4];
           result:=RoundTo(result, -2);
           TKT:=FloatToStr(result);
           if  TKT ='' then TKT:='0';
           result:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,5];
           result:=RoundTo(result, -2);
           CT:=FloatToStr(result);
           if  CT ='' then CT:='0';
           result:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,6];
           result:=RoundTo(result, -2);
           TG_Loss:=FloatToStr(result);
           if  TG_Loss ='' then TG_Loss:='0';
           result:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,7];
           result:=RoundTo(result, -2);
           Tong_TG:=FloatToStr(result);
           if  Tong_TG ='' then Tong_TG:='0';
           SLKH:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,8];
           result:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,9];;
           result:=RoundTo(result, -2);
           Ideal_Labor:=FloatToStr(result);
           if  Ideal_Labor ='' then Ideal_Labor:='0';
           result:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,10];
           result:=RoundTo(result, -2);
           SNguoi_KH:=FloatToStr(result);
           if  SNguoi_KH ='' then SNguoi_KH:='0';
           Labor_needed:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,11];
           result:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,12];
           result:=RoundTo(result, -2);
           SNguoi_NC:=FloatToStr(result);
           if  SNguoi_NC ='' then SNguoi_NC:='0';
           LoaiMay :=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,13];
           Actual:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,14];
           File_Name:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,17];
           Remark:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,18];

           if  STTStr <>'' then
           begin
             IE2.insert;
             IE2.FieldByName('STT').Value:=STTStr;
             IE2.FieldByName('Cut_Type').Value:=Cut_Type;
             //IE2.FieldByName('Piece_percut').Value:=Piece_percut;
             //IE2.FieldByName('SChiTiet').Value:=SChiTiet;
             IE2.FieldByName('Process_name').Value:=Process_name;
             IE2.FieldByName('Process_YWPM').Value:=Process_YWPM;
             IE2.FieldByName('CT').Value:=CT;
             IE2.FieldByName('Ideal_Labor').Value:=Ideal_Labor;
             IE2.FieldByName('Labor_needed').Value:=Labor_needed;
             IE2.FieldByName('TKT').Value:=TKT;
             IE2.FieldByName('Tong_TG').Value:=Tong_TG;
             IE2.FieldByName('TG_Loss').Value:=TG_Loss;
             IE2.FieldByName('SLKH').Value:=SLKH;
             IE2.FieldByName('SNguoi_KH').Value:=SNguoi_KH;
             IE2.FieldByName('SNguoi_NC').Value:=SNguoi_NC;
             IE2.FieldByName('LoaiMay').Value:=LoaiMay;
             IE2.FieldByName('Actual').Value:=Actual;
             IE2.FieldByName('File_Name').Value:=File_Name;
             IE2.FieldByName('Remark').Value:=Remark;
             IE2.Post;
           end;
         end;
         j:=j+1;
         if STTStr='' then
         begin
           flag:=false;
         end;
     end;
     MsExcelWorkBook.Close;
     MsExcel.Quit;
  end;
  BTNBE4.Enabled:=true;
  BTNBE5.Enabled:=true;
end;

procedure TArticle_Data.BitBtn7Click(Sender: TObject);
begin
  Article_TestDay:=TArticle_TestDay.create(self);
  Article_TestDay.show;
end;

end.
