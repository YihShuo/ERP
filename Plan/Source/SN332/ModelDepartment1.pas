unit ModelDepartment1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, Buttons, DBCtrls, StdCtrls, Grids, DBGrids,
  ExtCtrls, GridsEh, DBGridEh, comobj, Math, IniFiles;

type
  TModelDepartment = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    edXiexing: TEdit;
    Button1: TButton;
    edShehao: TEdit;
    edArticle: TEdit;
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
    bbt6: TBitBtn;
    DBGridEh1: TDBGridEh;
    qrySCXXDV: TQuery;
    upSCXXDV: TUpdateSQL;
    DS1: TDataSource;
    qrySCXXDVXieXing: TStringField;
    qrySCXXDVSheHao: TStringField;
    qrySCXXDVStyle: TStringField;
    qrySCXXDVDepID1: TStringField;
    qrySCXXDVDepID2: TStringField;
    qrySCXXDVDepID3: TStringField;
    qrySCXXDVUSERID: TStringField;
    qrySCXXDVUSERDATE: TDateTimeField;
    qrySCXXDVYN: TStringField;
    qrySCXXDVDDBH: TStringField;
    Label4: TLabel;
    edDDBH: TEdit;
    edBuyNo: TEdit;
    Label5: TLabel;
    edStyle: TEdit;
    tmpQ: TQuery;
    Query1: TQuery;
    Label6: TLabel;
    edLean: TEdit;
    Label7: TLabel;
    qrySCXXDVArticle: TStringField;
    qrySCXXDVDAOMH: TStringField;
    Label8: TLabel;
    editDaoMH: TEdit;
    CKDepID1: TCheckBox;
    CKDepID2: TCheckBox;
    CKDepID3: TCheckBox;
    bbt5: TBitBtn;
    qrySCXXDVS_CL: TIntegerField;
    qrySCXXDVA_CL: TIntegerField;
    qrySCXXDVYinShua: TStringField;
    qrySCXXDVYGZP: TStringField;
    qrySCXXDVDianXiu: TStringField;
    qrySCXXDVPairs: TIntegerField;
    CB1: TDBComboBox;
    qrySCXXDVTierABC: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure bbt6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbt5Click(Sender: TObject);
  private
    AppDir:String;
    ShoePicPath:String;
    { Private declarations }
  public
    { Public declarations }
    procedure ReadIni();
  end;

var
  ModelDepartment: TModelDepartment;

implementation

uses   main1, ModelDepartment_Dep1, FunUnit;

{$R *.dfm}
procedure TModelDepartment.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin

  ShoePicPath := '\\192.168.23.11\A_DataCenter\CDC\Sales\BOM';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ShoePicPath:=MyIni.ReadString('ShoePic','Bom_N31_shoePic','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TModelDepartment.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TModelDepartment.FormDestroy(Sender: TObject);
begin
  ModelDepartment:=nil;
end;

procedure TModelDepartment.BB1Click(Sender: TObject);
begin
  panel3.Visible:=true;
end;

procedure TModelDepartment.Button1Click(Sender: TObject);
begin
  if ((edDDBH.Text='') and (edBuyNo.Text='')) then
  begin
    showmessage('Pls input RY or BuyNo');
    abort;
  end else
  begin
    with qrySCXXDV do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select DDZL.DDBH,DDZL.XieXing,DDZL.SheHao,XXZL.DAOMH,XXZL.Article,SCXXDV.Style,SCXXDV.DepID1,');
      sql.Add('       SCXXDV.DepID2,SCXXDV.DepID3,SCXXCL.BZCL as A_CL, SC.BZCL AS S_CL,DDZL.Pairs,');
      sql.Add('       SCXXDV.UserID,SCXXDV.UserDate,SCXXDV.YN,SCXXDV.YinShua,SCXXDV.YGZP,SCXXDV.DianXiu,SCXXDV.TierABC');
      sql.Add('from DDZL left join SCXXDV');
      sql.Add('on SCXXDV.XieXing =DDZL.XieXing and SCXXDV.Shehao=DDZL.SheHao');
      sql.Add('left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao and SCXXCL.GXLB=''A''');
      sql.Add('left join (select XieXing,SheHao,GXLB,BZCL from SCXXCL  where GXLB=''S'') SC on SC.XieXing=DDZL.XieXing and SC.SheHao=DDZL.SheHao ');
      SQL.Add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.Shehao=DDZL.SheHao ');
      sql.Add('where DDZL.GSBH='''+main.Edit2.Text+''' and DDZL.DDZT<>''C''');
      if edDDBh.Text<>'' then
        sql.Add('and DDZL.DDBh like '''+edDDBH.Text+'%''');
      if edXieXing.Text<>'' then
        sql.Add('and DDZL.Xiexing like '''+edXieXing.Text+'%''');
      if edShehao.Text<>'' then
        sql.Add('and DDZL.Shehao like '''+edShehao.Text+'%''');
      if edArticle.Text<>'' then
        sql.Add('and DDZL.article like '''+edarticle.Text+'%''');
      if edStyle.Text<>'' then
        sql.Add('and SCXXDV.Style like '''+edStyle.Text+'%''');
      if editDaoMH.Text<>'' then
        sql.Add('and XXZL.DAOMH like '''+editDaoMH.Text+'%'' ');
      if edBuyNo.Text<>'' then
        sql.Add('and DDZL.BuyNo like '''+edBuyNo.Text+'%''');
      //
      if CKDepID1.Checked=true then SQL.Add('and IsNull(SCXXDV.DepID1,'''')='''' ');
      if CKDepID1.Checked=true then SQL.Add('and IsNull(SCXXDV.DepID2,'''')='''' ');
      if CKDepID1.Checked=true then SQL.Add('and IsNull(SCXXDV.DepID3,'''')='''' ');
      //
      sql.Add('group by DDZL.DDBH,DDZL.XieXing,DDZL.SheHao,XXZL.DAOMH,XXZL.Article,SCXXDV.Style,SCXXDV.DepID1,');
      sql.Add('       SCXXDV.DepID2,SCXXDV.DepID3,SCXXCL.BZCL,SC.BZCL,DDZL.Pairs,');
      sql.Add('       SCXXDV.UserID,SCXXDV.UserDate,SCXXDV.YN,SCXXDV.YinShua,SCXXDV.YGZP,SCXXDV.DianXiu,SCXXDV.TierABC');
      sql.Add('order by XXZL.Article');
      active:=true;
    end;
  end;
 panel3.Visible:=false;
 bb4.Enabled:=true;
 bbt1.Enabled:=true;
 bbt2.Enabled:=true;
 bbt3.Enabled:=true;
 bbt4.Enabled:=true;
 bbt5.Enabled:=true;
 bbt6.Enabled:=true;
end;

procedure TModelDepartment.BB2Click(Sender: TObject);
begin
  with qrySCXXDV do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
  DBGridEh1.columns[0].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[5].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[10].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[12].ButtonStyle:=cbsEllipsis;
end;

procedure TModelDepartment.BB3Click(Sender: TObject);
begin
  with qrySCXXDV do
  begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      fieldbyname('YN').Value:='0';
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
end;

procedure TModelDepartment.BB4Click(Sender: TObject);
begin
  with qrySCXXDV do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
  DBGridEh1.columns[6].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[7].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[8].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[9].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[10].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[11].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[12].ButtonStyle:=cbsEllipsis;
end;

procedure TModelDepartment.BB6Click(Sender: TObject);
begin
  with qrySCXXDV do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
  //
  DBGridEh1.Columns[6].ButtonStyle:=cbsNone;
  DBGridEh1.Columns[7].ButtonStyle:=cbsNone;
  DBGridEh1.Columns[8].ButtonStyle:=cbsNone;
  DBGridEh1.Columns[9].ButtonStyle:=cbsNone;
  DBGridEh1.Columns[10].ButtonStyle:=cbsNone;
  DBGridEh1.Columns[11].ButtonStyle:=cbsNone;
  DBGridEh1.Columns[12].ButtonStyle:=cbsNone;
end;

procedure TModelDepartment.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TModelDepartment.BBT1Click(Sender: TObject);
begin
  qrySCXXDV.First;
end;

procedure TModelDepartment.BBT2Click(Sender: TObject);
begin
  qrySCXXDV.Prior;
end;

procedure TModelDepartment.BBT3Click(Sender: TObject);
begin
  qrySCXXDV.Next;
end;

procedure TModelDepartment.BBT4Click(Sender: TObject);
begin
  qrySCXXDV.Last;
end;
procedure TModelDepartment.DBGridEh1EditButtonClick(Sender: TObject);
var Article,Style:String;
begin
  if DBGridEh1.SelectedField.FieldName='DepID1' then
  begin
    ModelDepartment_Dep:=TModelDepartment_Dep.Create(self);
    ModelDepartment_Dep.Show;
    ModelDepartment_Dep.Label3.Caption:='DepID1'
  end;
  if DBGridEh1.SelectedField.FieldName='DepID2' then
  begin
    ModelDepartment_Dep:=TModelDepartment_Dep.Create(self);
    ModelDepartment_Dep.Show;
    ModelDepartment_Dep.Label3.Caption:='DepID2'
  end;
  if DBGridEh1.SelectedField.FieldName='DepID3' then
  begin
    ModelDepartment_Dep:=TModelDepartment_Dep.Create(self);
    ModelDepartment_Dep.Show;
    ModelDepartment_Dep.Label3.Caption:='DepID3'
  end;
  if ((DBGridEh1.SelectedField.FieldName='Style') or (DBGridEh1.SelectedField.FieldName='YinShua') or (DBGridEh1.SelectedField.FieldName='YGZP') or (DBGridEh1.SelectedField.FieldName='DianXiu')) then
  begin
    if DBGridEh1.SelectedField.FieldName='Style' then Style:=inputbox('Please Input Style','Style:','');
    if DBGridEh1.SelectedField.FieldName='YinShua' then Style:=inputbox('Please Input Print','Print:','');
    if DBGridEh1.SelectedField.FieldName='YGZP' then Style:=inputbox('Please Input Laser','Laser:','');
    if DBGridEh1.SelectedField.FieldName='DianXiu' then Style:=inputbox('Please Input Embroider','Embroider:','');
    if Style<>'' then
    begin
      with ModelDepartment.qrySCXXDV do
      begin
        while not Eof do
        begin
          Edit;
          if Article='' then Article:=FieldByName('Article').AsString;
          if Article=FieldByName('Article').AsString then
          begin
            if DBGridEh1.SelectedField.FieldName='Style' then FieldByName('Style').Value:=Style;
            if DBGridEh1.SelectedField.FieldName='YinShua' then FieldByName('YinShua').Value:=Style;
            if DBGridEh1.SelectedField.FieldName='YGZP' then FieldByName('YGZP').Value:=Style;
            if DBGridEh1.SelectedField.FieldName='DianXiu' then FieldByName('DianXiu').Value:=Style;
            Next;
          end else
          begin
            break;
          end;
        end;
      end;
    end;
  end;

end;
procedure TModelDepartment.BB5Click(Sender: TObject);
var i: integer;
begin
    qrySCXXDV.First;
    for i:=1 to qrySCXXDV.RecordCount do
    begin
      if (( not qrySCXXDV.FieldByName('Style').IsNull) or ( not qrySCXXDV.FieldByName('DepID1').IsNull) or ( not qrySCXXDV.FieldByName('DepID2').IsNull) or ( not qrySCXXDV.FieldByName('DepID3').IsNull) or( not qrySCXXDV.FieldByName('YinShua').IsNull)
      or( not qrySCXXDV.FieldByName('YGZP').IsNull)or( not qrySCXXDV.FieldByName('DianXiu').IsNull) or (not qrySCXXDV.fieldbyname('TierABC').IsNull)) then
      begin
        with tmpQ do
        begin
          active:=false;
          sql.Clear;
          sql.Add('select * from SCXXDV where XieXing='''+ qrySCXXDV.fieldbyname('XieXing').Value+'''');
          sql.Add('            and  shehao='''+qrySCXXDV.fieldbyname('shehao').Value+'''');
          active:=true;
        end;
        if tmpQ.RecordCount=0 then
        begin
          with query1 do
          begin
            active:=false;
            sql.Clear;
            sql.Add('insert into SCXXDV (XieXing,Shehao,Style,DepID1,DepID2,DepID3,UserID,UserDate,YN,YinShua,YGZP,DianXiu,TierABC)');
            sql.Add('values ('''+ qrySCXXDV.fieldbyname('XieXing').Value+''','''+ qrySCXXDV.fieldbyname('SheHao').Value+''',');
            sql.Add(''''+ qrySCXXDV.fieldbyname('Style').AsString+''','''+ qrySCXXDV.fieldbyname('DepID1').AsString+''',');
            sql.Add(''''+ qrySCXXDV.fieldbyname('DepID2').AsString+''','''+ qrySCXXDV.fieldbyname('DepID3').AsString+''',');
            sql.Add(''''+main.Edit1.Text+''','''+formatdatetime('yyyy/mm/dd HH:MM:SS',now)+''',1,'''+ qrySCXXDV.fieldbyname('YinShua').AsString+''',');
            sql.Add(''''+ qrySCXXDV.fieldbyname('YGZP').AsString+''','''+ qrySCXXDV.fieldbyname('DianXiu').AsString+''','''+ qrySCXXDV.fieldbyname('TierABC').AsString+''')');
            execsql;
          end;
        end else
        begin
          if (( qrySCXXDV.fieldbyname('Style').AsString<> qrySCXXDV.fieldbyname('Style').OldValue) or ( qrySCXXDV.fieldbyname('DepID1').AsString<> qrySCXXDV.fieldbyname('DepID1').OldValue) or ( qrySCXXDV.fieldbyname('DepID2').AsString<> qrySCXXDV.fieldbyname('DepID2').OldValue) or  ( qrySCXXDV.fieldbyname('DepID3').AsString<> qrySCXXDV.fieldbyname('DepID3').OldValue) or ( qrySCXXDV.fieldbyname('YinShua').AsString<> qrySCXXDV.fieldbyname('YinShua').OldValue)
          or ( qrySCXXDV.fieldbyname('YGZP').AsString<> qrySCXXDV.fieldbyname('YGZP').OldValue)or ( qrySCXXDV.fieldbyname('DianXiu').AsString<> qrySCXXDV.fieldbyname('DianXiu').OldValue) or ( qrySCXXDV.fieldbyname('TierABC').AsString<> qrySCXXDV.fieldbyname('TierABC').OldValue)) then
          begin
            with query1 do
            begin
              active:=false;
              sql.Clear;
              sql.Add('update SCXXDV');
              sql.Add('set Style= '''+ qrySCXXDV.fieldbyname('Style').AsString+''', DepID1='''+ qrySCXXDV.fieldbyname('DepID1').AsString+''',');
              sql.Add('DepID2='''+ qrySCXXDV.fieldbyname('DepID2').AsString+''',DepID3='''+ qrySCXXDV.fieldbyname('DepID3').AsString+''',');
              sql.Add('UserID='''+main.Edit1.Text+''',UserDate= '''+formatdatetime('yyyy/mm/dd HH:MM:SS',now)+''',');
              sql.Add('YinShua='''+ qrySCXXDV.fieldbyname('YinSHua').AsString+''',YGZP='''+ qrySCXXDV.fieldbyname('YGZP').AsString+''',');
              sql.Add('DianXiu='''+ qrySCXXDV.fieldbyname('DianXiu').AsString+''',');
              sql.Add('TierABC='''+ qrySCXXDV.fieldbyname('TierABC').AsString+'''');
              sql.Add('where XieXing='''+ qrySCXXDV.fieldbyname('XieXing').Value+''' and shehao='''+ qrySCXXDV.fieldbyname('Shehao').Value+'''');
              execsql;
            end;
          end;
        end;
      end;
     qrySCXXDV.Next;
    end;
  qrySCXXDV.Active:=false;
  qrySCXXDV.RequestLive:=false;
  qrySCXXDV.CachedUpdates:=false;
  qrySCXXDV.Active:=true;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  //
  DBGridEh1.Columns[6].ButtonStyle:=cbsNone;
  DBGridEh1.Columns[7].ButtonStyle:=cbsNone;
  DBGridEh1.Columns[8].ButtonStyle:=cbsNone;
  DBGridEh1.Columns[9].ButtonStyle:=cbsNone;
  DBGridEh1.Columns[10].ButtonStyle:=cbsNone;
  DBGridEh1.Columns[11].ButtonStyle:=cbsNone;
  DBGridEh1.Columns[12].ButtonStyle:=cbsNone;
end;

procedure TModelDepartment.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if qrySCXXDV.FieldByName('YN').Value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  if qrySCXXDV.cachedupdates then
  begin
    if (gdfocused in state) then
    begin
      if (DBGridEh1.SelectedField.fieldname=CB1.datafield) then
      begin
        CB1.left:=rect.left+DBGridEh1.left;
        CB1.top:=rect.top+DBGridEh1.Top;
        CB1.width:=rect.right-rect.left+2;
        CB1.height:=rect.bottom-rect.top;
        CB1.visible:=true;
      end
      else
        CB1.Visible:=false;
    end;
  end
  else
    begin
      CB1.Visible:=false;
    end;
end;

procedure TModelDepartment.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    workRange : OleVariant;
    picture : OleVariant;
    workSheet : OleVariant;
    PicImage:string;
    i,j,k:integer;
    //
    tmpStr:string;
    DAOMH:string;
    DAOMH_S,DAOMH_E:integer;
    //
begin
  with tmpQ do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select xxzl.DAOMH,xxzl.XieMing,DDZL.ARTICLE,xxzl.IMGName,SCXXDV.Style,SCXXDV.YinShua,SCXXDV.YGZP,SCXXDV.DianXiu,');
    sql.Add('     	SUM(DDZL.Pairs) as Qty,SCXXDV.DepID1,SCXXDV.DepID2,SCXXDV.DepID3,SCXXCL.BZCL as A_BZCL, SC.BZCL as S_BZCL');
    sql.Add('from DDZL left join SCXXDV');
    sql.Add('on SCXXDV.XieXing =DDZL.XieXing and SCXXDV.Shehao=DDZL.SheHao');
    sql.Add('left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.Shehao=DDZL.SheHao and SCXXCL.GXLB=''A''');
    sql.Add('left join (select XieXing,SheHao,GXLB,BZCL from SCXXCL  where GXLB=''S'')SC on SC.XieXing=DDZL.XieXing and SC.SheHao=DDZL.SheHao');
    sql.Add('left join xxzl on ddzl.XieXing=xxzl.XieXing and DDZL.SheHao=xxzl.SheHao');
    sql.Add('where DDZL.GSBH='''+main.Edit2.Text+''' and DDZL.DDZT<>''C''');
    if edDDBh.Text<>'' then
      sql.Add('and DDZL.DDBh like '''+edDDBH.Text+'%''');
    if edXieXing.Text<>'' then
      sql.Add('and DDZL.Xiexing like '''+edXieXing.Text+'%''');
    if edShehao.Text<>'' then
      sql.Add('and DDZL.Shehao like '''+edShehao.Text+'%''');
    if edArticle.Text<>'' then
      sql.Add('and DDZL.article like '''+edarticle.Text+'%''');
    if edStyle.Text<>'' then
      sql.Add('and SCXXDV.Style like '''+edStyle.Text+'%''');
    if editDaoMH.Text<>'' then
      sql.Add('and XXZL.DAOMH like '''+editDaoMH.Text+'%'' ');
    if edBuyNo.Text<>'' then
      sql.Add('and DDZL.BuyNo like '''+edBuyNo.Text+'%''');
    //
    if CKDepID1.Checked=true then SQL.Add('and IsNull(SCXXDV.DepID1,'''')='''' ');
    if CKDepID1.Checked=true then SQL.Add('and IsNull(SCXXDV.DepID2,'''')='''' ');
    if CKDepID1.Checked=true then SQL.Add('and IsNull(SCXXDV.DepID3,'''')='''' ');
   sql.Add('Group by xxzl.DAOMH,xxzl.XieMing,DDZL.ARTICLE,xxzl.IMGName,SCXXDV.Style,SCXXDV.DepID1,SCXXDV.DepID2,SCXXDV.DepID3,');
   sql.Add('         SCXXCL.BZCL,SC.BZCL,SCXXDV.YinShua,SCXXDV.YGZP,SCXXDV.DianXiu');
   active:=true;
  end;

  // excel
   //
  if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
    CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Plan_SN332.xls'),Pchar(AppDir+'Additional\Plan_SN332.xls'),false);
  if FileExists(AppDir+'Additional\Plan_SN332.xls') then
  begin
  //

    if  tmpQ.active  then
    begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        eclApp.DisplayAlerts := False;
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
          eclApp.WorkBooks.Open(AppDir+'Additional\Plan_SN332.xls');
          tmpQ.First;
          j:=4;
          for i:=0 to tmpQ.RecordCount-1 do
          begin
            eclApp.Cells(j,1):=tmpQ.FieldByName('DAOMH').AsString;
            eclApp.Cells(j,2):=tmpQ.FieldByName('XieMing').AsString;
            eclApp.Cells(j,3):=tmpQ.FieldByName('ARTICLE').AsString;
            eclApp.Cells(j,5):=tmpQ.FieldByName('Style').AsString;
            eclApp.Cells(j,6):=tmpQ.FieldByName('YinShua').Value;
            eclApp.Cells(j,7):=tmpQ.FieldByName('YGZP').AsString;
            eclApp.Cells(j,8):=tmpQ.FieldByName('DianXiu').AsString;
            eclApp.Cells(j,9):=tmpQ.FieldByName('Qty').Value;
            eclApp.Cells(j,10):=tmpQ.FieldByName('DepID1').AsString;
            eclApp.Cells(j,11):=tmpQ.FieldByName('DepID2').AsString;
            eclApp.Cells(j,12):=tmpQ.FieldByName('DepID3').AsString;
            eclApp.Cells(j,17):=tmpQ.FieldByName('S_BZCL').AsString;
            eclApp.Cells(j,18):=tmpQ.FieldByName('S_BZCL').Value*8;
            eclApp.Cells(j,19):=tmpQ.FieldByName('Qty').Value;
            eclApp.Cells(j,20):=':';
            eclApp.Cells(j,21):=tmpQ.FieldByName('S_BZCL').Value*8;
            eclApp.Cells(j,22):=':';
            eclApp.Cells(j,23):=edLean.Text;
            eclApp.Cells(j,24):='=';
            if  not tmpQ.FieldByName('S_BZCL').isnull then
            begin
              eclApp.Cells(j,25):= RoundTo(tmpQ.FieldByName('Qty').Value/(tmpQ.FieldByName('S_BZCL').Value*8)/edLean.Text,-2);
            end;
            eclApp.Cells(j,26):='คั';
            eclApp.Cells(j,31):=tmpQ.FieldByName('A_BZCL').AsString;
            eclApp.Cells(j,32):=tmpQ.FieldByName('A_BZCL').Value*8;
            eclApp.Cells(j,33):=tmpQ.FieldByName('Qty').Value;
            eclApp.Cells(j,34):=':';
            eclApp.Cells(j,35):=tmpQ.FieldByName('A_BZCL').Value*8;
            eclApp.Cells(j,36):=':';
            eclApp.Cells(j,37):=edLean.Text;
            eclApp.Cells(j,38):='=';
            if  not tmpQ.FieldByName('A_BZCL').isnull then
            begin
              eclApp.Cells(j,39):= RoundTo(tmpQ.FieldByName('Qty').Value/(tmpQ.FieldByName('A_BZCL').Value*8)/edLean.Text,-2);
            end;
            eclApp.Cells(j,40):='คั';
            eclApp.Range[eclApp.cells[j,1],eclApp.cells[j,40]].HorizontalAlignment := -4108;
            // add picture
            PicImage:=StringReplace(tmpQ.FieldByName('IMGName').Asstring,'H:',ShoePicPath, [rfReplaceAll, rfIgnoreCase]);
            if FileExists(PicImage)=true then
            begin
              workSheet := eclApp.WorkSheets[1];
              workRange :=eclApp.Range[eclApp.cells[j,4],eclApp.cells[j,4]];
              picture := workSheet.pictures.Insert(PicImage);
              picture.left := workRange.left + 1;
              picture.top := workRange.top + 1;
              picture.width := workRange.width+20;
              picture.height := workRange.height+20;
              picture := Unassigned;
            end;
             eclApp.Rows[j].RowHeight:=40;

            tmpQ.Next;
            inc(j);
          end;

          //Run Merge Cell DAOMH
          DAOMH:='';
          DAOMH_S:=0;
          DAOMH_E:=0;
          for k:=4 to tmpQ.RecordCount+4 do
          begin
           tmpStr:=eclApp.Cells[k,1];
           if DAOMH='' then
           begin
            DAOMH_S:=k;
            DAOMH:=tmpStr;
           end;
          if(( tmpStr<>DAOMH) and (DAOMH<>'')) then
          begin
            DAOMH_E:=k-1;
            DAOMH:= eclApp.Cells[k,1];
            eclApp.Range[eclApp.Cells[DAOMH_S,1],eclApp.Cells[DAOMH_E,1]].merge;
            eclApp.Range[eclApp.Cells[DAOMH_S,1],eclApp.Cells[DAOMH_E,1]].Font.Bold:=true;
            DAOMH_S:=k;
          end;
         end;

          //  add outline
          for k:=1 to 4 do
          begin
            eclApp.range[eclApp.cells[4,1],eclApp.cells[j-1,40]].borders[k].linestyle:=1;
          end;
         //
         showmessage('Succeed');
         eclApp.Visible:=True;
      except
          on   F:Exception   do
          begin
              eclApp.quit;
              showmessage(F.Message);
          end;
      end;
    end;
  //
  end;
  //
end;

procedure TModelDepartment.FormCreate(Sender: TObject);
begin
   AppDir:=ExtractFilePath(Application.ExeName);
   ReadIni();
end;

procedure TModelDepartment.bbt5Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

  if  qrySCXXDV.active  then
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
        for   i:=0   to   qrySCXXDV.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=qrySCXXDV.fields[i].FieldName;
        end;
        qrySCXXDV.First;
        j:=2;
        while   not   qrySCXXDV.Eof   do
        begin
          for   i:=0   to  qrySCXXDV.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=qrySCXXDV.Fields[i].Value;
          end;
          qrySCXXDV.Next;
          inc(j);
        end;
        eclapp.columns.autofit;
        eclApp.Visible:=True;
    except
        on  F:Exception   do
          showmessage(F.Message);
    end;
  end;

end;

end.
