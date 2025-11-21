unit ProdSendR1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, DB, DBTables,dateutils, PrnDbgeh,
  GridsEh, DBGridEh, Menus, Mask, DBCtrls, DBCtrlsEh,comobj, Spin, Buttons;

type
  TProdSendR = class(TForm)
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DDBHSEdit: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CBX4: TComboBox;
    Qtemp: TQuery;
    SMDDS: TQuery;
    DS1: TDataSource;
    PrintDBGridEh1: TPrintDBGridEh;
    DBGridEh1: TDBGridEh;
    BWZL: TQuery;
    UpdateSQL1: TUpdateSQL;
    DS2: TDataSource;
    PopupMenu1: TPopupMenu;
    Insert1: TMenuItem;
    BWZLBWBH: TStringField;
    BWZLYWSM: TStringField;
    BWZLCLBH: TStringField;
    BWZLYWPM: TStringField;
    BWZLDWBH: TStringField;
    UpdateSQL2: TUpdateSQL;
    PopupMenu2: TPopupMenu;
    Delete1: TMenuItem;
    BWZLCCQQ: TStringField;
    BWZLCCQZ: TStringField;
    ChkSize: TCheckBox;
    BWZLYN: TIntegerField;
    SizefoxQry: TQuery;
    DS3: TDataSource;
    UpdateSQL3: TUpdateSQL;
    Panel1: TPanel;
    DBGridEh3: TDBGridEh;
    Splitter1: TSplitter;
    XXCCQry: TQuery;
    Delete2: TMenuItem;
    Splitter2: TSplitter;
    DDBHEEdit: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    PairsSpinEdit: TSpinEdit;
    Label3: TLabel;
    CCCombo: TComboBox;
    Panel5: TPanel;
    Panel3: TPanel;
    DBGridEh2: TDBGridEh;
    Panel4: TPanel;
    GroupBox3: TGroupBox;
    Label26: TLabel;
    SizeFoxTypeEdit: TComboBox;
    DBGridEh4: TDBGridEh;
    DS4: TDataSource;
    RYQuery: TQuery;
    RYQueryDDBH: TStringField;
    RYQueryT1: TIntegerField;
    RYQueryT2: TIntegerField;
    UpdateSQL4: TUpdateSQL;
    BDT6: TBitBtn;
    BDT7: TBitBtn;
    BDT8: TBitBtn;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BWZLBZ: TStringField;
    BWZLclsl: TFloatField;
    ArticleEdit: TEdit;
    QArticle: TQuery;
    Label4: TLabel;
    Edit1: TEdit;
    Label7: TLabel;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Insert1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SMDDSSAfterOpen(DataSet: TDataSet);
    procedure SizeFoxTypeEditChange(Sender: TObject);
    procedure Delete2Click(Sender: TObject);
    procedure BDT6Click(Sender: TObject);
    procedure BDT7Click(Sender: TObject);
    procedure BDT8Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
  private
    IsCombined:boolean;
    RYQuery_TotalSQL:String;
    { Private declarations }
    procedure Show_CombinedSize(eclApp:olevariant;j:integer;QrySizPos:integer);
    procedure Show_NamebySize(eclApp:olevariant;j:integer;QrySizPos:integer);
    procedure InitSizeFoxTypeEdit();
    procedure DBGrid2Setting();
    function  CalculateRYQuery_SQL():string;
    procedure ButtonQuery(Query:TQuery;Combine:boolean;IsPacking:boolean);
  public
    AppDir:String;
    { Public declarations }
  end;

var
  ProdSendR: TProdSendR;
  NDate:TDate;

implementation

uses main1, ProdSendR_Print1, ProdSendR_BW1, FunUnit;

{$R *.dfm}

procedure TProdSendR.FormDestroy(Sender: TObject);
begin
  ProdSendR:=nil;
end;

procedure TProdSendR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TProdSendR.FormCreate(Sender: TObject);
var i,j:integer;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct GX from SCGXDY order by GX');
    active:=true;
    for i:=1 to recordcount do
    begin
      CBX4.Items.Add(fieldbyname('GX').asstring);
      next;
    end;
    CBX4.text:='W';
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    DTP1.Date:=startoftheweek(incweek(NDate,1));
    DTP2.Date:=endoftheweek(incweek(NDate,1));
  end;
  RYQuery.Active:=true;
end;

procedure TProdSendR.Insert1Click(Sender: TObject);
begin
  if SMDDS.RecordCount>0 then
  begin
    ProdSendR_BW:=TProdSendR_BW.create(self);
    with BWZL do
    begin
      cachedupdates:=true;
      requestlive:=true;
    end;
    ProdSendR_BW.edit3.Text:=SMDDS.fieldbyname('Article').value;
    ProdSendR_BW.edit1.Text:=SMDDS.fieldbyname('ysbh').value;
    ProdSendR_BW.edit2.Text:=SMDDS.fieldbyname('shehao').value;
    ProdSendR_BW.button1click(nil);
    ProdSendR_BW.show;
  end;
end;

procedure TProdSendR.Delete1Click(Sender: TObject);
begin
  if SMDDS.recordcount>0 then
     SMDDS.Delete;
end;
procedure TProdSendR.DBGrid2Setting();
var i:integer;
begin
  DBGrideh3.columns[0].width:=102;
  DBGrideh3.columns[0].Title.Caption:='OrderNo#';
  DBGrideh3.columns[1].width:=81;
  DBGrideh3.columns[1].Title.Caption:='Article';
  DBGrideh3.columns[2].width:=74;
  DBGrideh3.columns[2].Title.Caption:='Buyno';
  DBGrideh3.columns[3].width:=153;
  DBGrideh3.columns[3].Title.Caption:='ShoeName';
  DBGrideh3.columns[4].width:=68;
  DBGrideh3.columns[4].Title.Caption:='Shoe Last';
  DBGrideh3.columns[5].width:=160;
  DBGrideh3.columns[5].Title.Caption:='Cutting die';
  DBGrideh3.columns[6].width:=40;
  DBGrideh3.columns[6].Title.Caption:='PDate';
  TDatefield(SMDDS.Fields[6]).displayformat:='MM/dd' ;
  DBGrideh3.columns[7].width:=50;
  DBGrideh3.columns[7].title.caption:='Size';
  DBGrideh3.columns[7].footer.valuetype:=fvtsum;
  Tfloatfield(SMDDS.Fields[7]).displayformat:='##,#0';
  DBGrideh3.columns[8].width:=88;
  DBGrideh3.columns[8].title.caption:='Style';
  DBGrideh3.columns[9].width:=42;
  DBGrideh3.columns[9].title.caption:='ColorID';
  DBGrideh3.columns[0].footer.valuetype:=fvtcount;
  for i:=10 to SMDDS.fieldcount-2 do
  begin
    DBGrideh3.columns[i].width:=35;
    DBGrideh3.columns[i].footer.valuetype:=fvtsum;
    Tfloatfield(SMDDS.Fields[i]).displayformat:='#0';
  end;
  DBGrideh3.columns[SMDDS.fieldcount-1].title.caption:='OrderNo';
  BWZL.Active:=false;
  BWZL.Active:=true;
  ProdSendR.SizefoxQry.SQL.Clear;
end;
  //
function TProdSendR.CalculateRYQuery_SQL():string;
var i,count:integer;
    SubSQL:array of String;
    TotalSuSQL,DDBHSQL:String;
    T1,T2:string;
begin

  Count:=0;
  RYQuery.First;
  for i:=0 to RYQuery.RecordCount-1 do
  begin
    if trim(RYQuery.FieldByName('DDBH').AsString)<>'' then
    begin
      Count:=Count+1;
    end;
  end;
  //
  setlength(SubSQL,Count);
  RYQuery.First;
  Count:=0;
  TotalSuSQL:='';
  for i:=0 to RYQuery.RecordCount-1 do
  begin
    if RYQuery.FieldByName('DDBH').AsString<>'' then
    begin
      if RYQuery.FieldByName('T2').AsString<>'' then
      begin
        if RYQuery.FieldByName('T1').AsString<>'' then
        begin
          if length(RYQuery.FieldByName('T1').AsString)=1 then T1:='-00'+RYQuery.FieldByName('T1').AsString;
          if length(RYQuery.FieldByName('T1').AsString)=2 then T1:='-0'+RYQuery.FieldByName('T1').AsString;
          if length(RYQuery.FieldByName('T1').AsString)=3 then T1:='-'+RYQuery.FieldByName('T1').AsString;
          if length(RYQuery.FieldByName('T2').AsString)=1 then T2:='-00'+RYQuery.FieldByName('T2').AsString;
          if length(RYQuery.FieldByName('T2').AsString)=2 then T2:='-0'+RYQuery.FieldByName('T2').AsString;
          if length(RYQuery.FieldByName('T2').AsString)=3 then T2:='-'+RYQuery.FieldByName('T2').AsString;
          DDBHSQL:=' (SMDDS.DDBH like '''+RYQuery.FieldByName('DDBH').AsString+'%'' and SMDDS.DDBH >= '''+RYQuery.FieldByName('DDBH').AsString+T1+''' and SMDDS.DDBH <= '''+RYQuery.FieldByName('DDBH').AsString+T2+''' )';
        end else
        begin
           DDBHSQL:=' SMDDS.DDBH like '''+RYQuery.FieldByName('DDBH').AsString+'%'' ';
        end;
      end else
      begin
        if RYQuery.FieldByName('T1').AsString<>'' then
        begin
          if length(RYQuery.FieldByName('T1').AsString)=1 then T1:='-00'+RYQuery.FieldByName('T1').AsString;
          if length(RYQuery.FieldByName('T1').AsString)=2 then T1:='-0'+RYQuery.FieldByName('T1').AsString;
          if length(RYQuery.FieldByName('T1').AsString)=3 then T1:='-'+RYQuery.FieldByName('T1').AsString;
          DDBHSQL:=' SMDDS.DDBH = '''+RYQuery.FieldByName('DDBH').AsString+T1+''' ';
        end else
        begin
          DDBHSQL:=' SMDDS.DDBH like '''+RYQuery.FieldByName('DDBH').AsString+'%'' ';
        end;
      end;
      //
      TotalSuSQL:=TotalSuSQL+'('+DDBHSQL+') or ';
      SubSQL[count]:=' and ('+DDBHSQL+')  ';
      Count:=Count+1;
    end;
    RYQuery.Next;
  end;
  //
  if length(TotalSuSQL)>0 then TotalSuSQL:='and ('+Copy(TotalSuSQL,1,length(TotalSuSQL)-4)+')';
  //
  result:=TotalSuSQL;
end;
//
procedure TProdSendR.ButtonQuery(Query:TQuery;Combine:boolean;IsPacking:boolean);
begin
  //多筆訂單迴轉數
  RYQuery_TotalSQL:=CalculateRYQuery_SQL;
  //
  with XXCCQry do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct ZLZLS.ZLCC,SMDDS.XXCC,IsNull(XXGJS.GJCC,SMDDS.XXCC) as GJCC from SMDDS ');
    sql.add('left join SMDD on SMDD.DDBH=SMDDS.DDBH ');
    sql.add('left join ZLZLS on ZLZLS.ZLBH=SMDD.YSBH and ZLZLS.XXCC=SMDDS.XXCC');
    sql.add('left join DDZL on SMDD.YSBH=DDZL.DDBH ');
    sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZL.Shehao=XXZL.SheHao ');
    sql.add('left join XXGJS on xxgjs.XieXing=DDZL.XieXing and xxgjs.GJLB='''+Copy(CCCombo.Text,1,3)+''' and xxgjs.XXCC=SMDDS.XXCC ');
    sql.add('where (convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between ');
    sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and  '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''+')');
    sql.add('      and SMDD.GXLB='+''''+CBX4.text+'''');

    if RYQuery_TotalSQL<>'' then
    begin
      sql.add(RYQuery_TotalSQL);
    end else if DDBHEEdit.Text='' then
    begin
      sql.add('      and SMDDS.DDBH like '''+DDBHSEdit.Text+'%'' ');
    end else
    begin
      sql.add('      and SMDDS.DDBH >= '''+DDBHSEdit.Text+''' ');
      sql.add('      and SMDDS.DDBH <= '''+DDBHEEdit.Text+''' ');
    end;

    //Code them
    if ArticleEdit.Text <> '' then
    begin
      sql.add('      and SMDD.Article like '''+ArticleEdit.Text+'%'' ');
    end;
    
    sql.add('      and SMDD.GSBH='+''''+main.edit2.text+'''');
    sql.add('      and ZLZLS.ZLCC is not null ');
    if ChkSize.Checked=false then
      sql.add('order by  SMDDS.XXCC DESC')
    else
      sql.add('order by  SMDDS.XXCC ASC');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  with Query do
  begin
    active:=false;
    sql.Clear;
    if Combine=false then //迴轉數不合併
      sql.Add('select A.ddbh,A.Article,A.buyno,A.XieMing,A.XTMH,A.DAOMH,A.PlanDate,A.Qty,A.XieXing,A.SheHao')
    else
      sql.Add('select A.ddbh,A.Article,A.buyno,A.XieMing,A.XTMH,A.DAOMH,A.PlanDate,Sum(A.Qty) as Qty,A.XieXing,A.SheHao');
    XXCCQry.first;
    while not XXCCQry.Eof do
    begin
      if IsPacking=false then
        sql.add(',sum(['+''+XXCCQry.fieldbyname('GJCC').value+''+']) as '+' '''+XXCCQry.fieldbyname('GJCC').value+''' ');
      if IsPacking=true then
        sql.add(', case when sum(['+''+XXCCQry.fieldbyname('GJCC').value+''+'])>0 then convert(varchar,sum(['+''+XXCCQry.fieldbyname('GJCC').value+''+']))+''/''+convert(varchar,sum(['+''+XXCCQry.fieldbyname('GJCC').value+''+'])/'+inttostr(PairsSpinEdit.Value)+') else null end as '+' '''+XXCCQry.fieldbyname('GJCC').value+''' ');
      XXCCQry.Next;
    end;
    sql.Add(',A.YSBH from(');
    if Combine=false then //迴轉數不合併
      sql.add('select SMDD.DDBH,SMDD.Article,DDZL.buyno,SMDD.XieMing ')
    else
      sql.add('select SMDD.YSBH as DDBH,SMDD.Article,DDZL.buyno,SMDD.XieMing ');
    sql.Add(',XXZL.xtmh as XXTMH ,XXZL.DAOMH as XDAOMH,SMDD.PlanDate');
    sql.Add(',ddzl.xiexing,ddzl.shehao,SMDD.Qty as Qty ');
    XXCCQry.first;
    while not XXCCQry.Eof do
    begin
      sql.add(',Max(case  when SMDDS.XXCC='+''''+XXCCQry.fieldbyname('XXCC').value+'''');
      sql.add(' then SMDDS.Qty else null end) as '+''''+XXCCQry.fieldbyname('GJCC').value+'''');
      XXCCQry.Next;
    end;
    sql.add(',smdd.ysbh,DXXZL.XTMH as DXTMH,DXXZL.DAOMH as DDAOMH,DXXZL.DDBH as XDDBH');
    sql.Add(',case when DXXZL.DDBH is null then XXZL.XTMH else DXXZL.XTMH end as XTMH');
    sql.Add(',case when DXXZL.DDBH is null then XXZL.DAOMH else DXXZL.DAOMH end as DAOMH');
    sql.add('from SMDDS ');
    sql.add('left join SMDD on SMDD.DDBH=SMDDS.DDBH ');
    sql.add('left join DDZL on SMDD.YSBH=DDZL.DDBH ');
    sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZL.Shehao=XXZL.SheHao ');
    sql.Add('left join DDZL_XXZL as DXXZL on DXXZL.XieXing=DDZL.XieXing and DXXZL.Shehao=DDZL.Shehao and DXXZL.DDBH=DDZL.DDBH');
    sql.add('where (convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between ');
    sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and  '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''+')');
    sql.add('      and SMDD.GXLB='+''''+CBX4.text+'''');

    if RYQuery_TotalSQL<>'' then
    begin
      sql.add(RYQuery_TotalSQL);
    end else if DDBHEEdit.Text='' then
    begin
      sql.add('      and SMDDS.DDBH like '''+DDBHSEdit.Text+'%'' ');
    end else
    begin
      sql.add('      and SMDDS.DDBH >= '''+DDBHSEdit.Text+''' ');
      sql.add('      and SMDDS.DDBH <= '''+DDBHEEdit.Text+''' ');
    end;

    //Code them
    if ArticleEdit.Text <> '' then
    begin
      sql.add('      and SMDD.Article like '''+ArticleEdit.Text+'%'' ');
    end;

    sql.add('      and SMDD.GSBH='+''''+main.edit2.text+'''');
    sql.add('group by SMDD.DDBH,SMDD.Article,SMDD.XieMing,XXZL.xtmh,XXZL.DAOMH,SMDD.PlanDate,SMDD.Qty,ddzl.xiexing,ddzl.shehao,smdd.ysbh,DXXZL.XTMH,DXXZL.DAOMH,DXXZL.DDBH,DDZl.buyno ');
    if Combine=false then //迴轉數不合併
      sql.Add(') A group by A.ddbh,A.Article,A.XieMing,A.XTMH,A.DAOMH,A.PlanDate,A.Qty,A.XieXing,A.SheHao,A.YSBH,A.buyno')
    else
      sql.Add(') A group by A.ddbh,A.Article,A.XieMing,A.XTMH,A.DAOMH,A.PlanDate,A.XieXing,A.SheHao,A.YSBH,A.buyno');
    sql.Add('order by A.ddbh ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;
//
procedure TProdSendR.Button1Click(Sender: TObject);
begin

end;
//
procedure TProdSendR.InitSizeFoxTypeEdit();
var i:integer;
begin
  ProdSendR.SizeFoxTypeEdit.Text:='';
  with Qtemp do
  begin
    Active:=false;
    SQl.Clear;
    SQL.Add('select Distinct CLLBZL.YWSM  ');
    SQL.Add('from '+main.LIY_DD+'.dbo.lastsizefox lastsizefox');
    SQL.Add('left join LastDatas on lastsizefox.CLBH=LastDatas.CLBH');
    SQL.Add('left join '+main.LIY_DD+'.dbo.CLLBZL CLLBZL on CLLBZL.cllb=lastsizefox.lbdh');
    if Edit1.Text<>'' then
    begin
      SQL.Add('Where  LastDatas.LastCode='''+Edit1.Text+''' ');
    end else
    begin
      SQL.Add('where LastDatas.LastCode  in (');
      SQL.Add('	select A.XTMH from(');
      SQL.Add('	select');
      SQL.Add('	case when DXXZL.DDBH is null then XXZL.XTMH else DXXZL.XTMH end as XTMH');
      SQL.Add('	from SMDDS ');
      SQL.Add('	left join SMDD on SMDD.DDBH=SMDDS.DDBH ');
      SQL.add(' left join ZLZLS on ZLZLS.ZLBH=SMDD.YSBH and ZLZLS.XXCC=SMDDS.XXCC');
      SQL.Add('	left join DDZL on SMDD.YSBH=DDZL.DDBH ');
      SQL.Add('	left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZL.Shehao=XXZL.SheHao ');
      SQL.Add('	left join DDZL_XXZL as DXXZL on DXXZL.XieXing=DDZL.XieXing and DXXZL.Shehao=DDZL.Shehao and DXXZL.DDBH=DDZL.DDBH');
      sql.add('where (convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between ');
      sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and  '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''+')');
      sql.add('      and SMDD.GXLB='+''''+CBX4.text+'''');
      if RYQuery_TotalSQL<>'' then
      begin
        sql.add(RYQuery_TotalSQL);
      end else if DDBHEEdit.Text='' then
      begin
        sql.add('      and SMDDS.DDBH like '''+DDBHSEdit.Text+'%'' ');
      end else
      begin
        sql.add('      and SMDDS.DDBH >= '''+DDBHSEdit.Text+''' ');
        sql.add('      and SMDDS.DDBH <= '''+DDBHEEdit.Text+''' ');
      end;

      if ArticleEdit.Text <> '' then
      begin
        sql.add('      and SMDD.Article like '''+ArticleEdit.Text+'%'' ');
      end;

      sql.add('      and SMDD.GSBH='+''''+main.edit2.text+'''');
      sql.add('      and ZLZLS.ZLCC is not null ');
      SQL.Add('	group by DXXZL.DDBH,XXZL.xtmh,DXXZL.XTMH');
      SQL.Add('	) A Group by A.XTMH )');
    end;
    //funcobj.WriteErrorLog(sql.Text);
    Active:=true;
    SizeFoxTypeEdit.Items.Clear;
    for i:=1 to recordcount do
    begin
      SizeFoxTypeEdit.Items.Add(fieldbyname('YWSM').asstring);
      next;
    end;
    Active:=false;
  end;
end;
//
procedure TProdSendR.SMDDSSAfterOpen(DataSet: TDataSet);
var i:integer;
begin
  InitSizeFoxTypeEdit();
end;


procedure TProdSendR.SizeFoxTypeEditChange(Sender: TObject);
var i:word;
begin
  with SizefoxQry do
  begin
    Active:=false;
    sql.Clear;
    sql.Add('select 0 as YN,CLLBZL.ywsm as Memo,lastsizeR.CLBH,LastCode ');
    XXCCQry.first;
    while not XXCCQry.Eof do
    begin
      sql.add(',Max(case  when lastsizeR.SIZ like '+'''%'+XXCCQry.fieldbyname('GJCC').value+'%''');
      sql.add(' then lastsizefox.Lenfox else null end) as '+''''+XXCCQry.fieldbyname('GJCC').value+'''');
      XXCCQry.Next;
    end;
    sql.Add('from lastsizeR');
    sql.Add('left join LastDatas on lastsizeR.CLBH=LastDatas.CLBH ');
    sql.Add('left join '+main.LIY_DD+'.dbo.lastsizefox lastsizefox on lastsizefox.CLBH=lastsizeR.CLBH and lastsizefox.Siz=lastsizeR.Siz ');
    sql.Add('left join '+main.LIY_DD+'.dbo.CLLBZL CLLBZL on CLLBZL.cllb=lastsizefox.lbdh ');
    sql.Add('where 1=1 ');
    if Edit1.Text<>'' then
    begin
      sql.Add('and LastDatas.LastCode='''+Edit1.Text+''' ');
    end else
    begin
      sql.Add('and LastDatas.LastCode ='''+SMDDS.FieldByName('XTMH').AsString+''' ');
    end;
    sql.Add('and CLLBZL.YWSM ='+''''+SizeFoxTypeEdit.Text+'''');
    sql.Add('group by CLLBZL.ywsm,lastsizeR.CLBH,LastCode');
    active:=true;
    with DBGridEh2 do
    begin
     columns[0].Visible:=false;
     columns[0].Width:=50;
     columns[1].Width:=80;
     columns[2].Width:=80;
     columns[3].Width:=80;
     for i:=4 to SizefoxQry.FieldCount-1 do
     begin
       columns[i].Width:=50;
     end;
   end;
  end;
end;

procedure TProdSendR.Delete2Click(Sender: TObject);
begin
  if BWZL.recordcount>0 then
     BWZL.Delete;
end;

procedure TProdSendR.BDT6Click(Sender: TObject);
var IsPacking:boolean;
begin
  ProdSendR_Print:=TProdSendR_Print.create(self);
  //分片包裝
  IsPacking:=true;
  if PairsSpinEdit.Value>1 then
    ButtonQuery(ProdSendR_Print.SMDDS,IsCombined,true)
  else
    IsPacking:=false;
  ProdSendR_Print.Init(IsPacking);
  ProdSendR_Print.quickrep1.preview;
  ProdSendR_Print.free;

end;

//
procedure TProdSendR.Show_NamebySize(eclApp:olevariant;j:integer;QrySizPos:integer);
var Split_S,Split_E,SumQty:integer;
    SplitCC:array [0..1] of String;
    SplitMergCell_S,SplitMergCell_E:TSTringlist;
    i,k,a,check:integer;
begin
  BWZL.First;
  while not BWZL.Eof   do
  BEGIN
    //split Postion
    if ((BWZL.FieldByName('CCQZ').value <> '') and  (BWZL.FieldByName('CCQQ').value <> '')and (BWZL.FieldByName('CCQZ').value <> null) and (BWZL.FieldByName('CCQQ').value <> null)) then
    begin
      Split_S:=-1; Split_E:=-1;
      SplitMergCell_S:=TStringlist.Create;
      SplitMergCell_E:=TStringlist.Create;
      //Sort Size Asc
      SplitCC[0]:=BWZL.FieldByName('CCQZ').AsString;
      SplitCC[1]:=BWZL.FieldByName('CCQQ').AsString;
      //
      for k:=0 to High(SplitCC) do
      begin
        //
        if ChkSize.Checked=false then
          for   i:=11   to  SMDDS.fieldcount-1  do
             if (SMDDS.fields[i-1].FieldName>=SplitCC[k]) then
                Split_E:=i;
        if ChkSize.Checked=true then
          for  i:=SMDDS.fieldcount-1 downto 11  do
             if (SMDDS.fields[i-1].FieldName>=SplitCC[k]) then
                Split_E:=i;
        //
        if Split_S=-1 then
          Split_S:= Split_E;
        if ((ChkSize.Checked=false) and (Split_E>=Split_S) and (Split_E>0) ) then
        begin
          SplitMergCell_S.Add(inttostr(Split_S));
          SplitMergCell_E.Add(inttostr(Split_E));
        end else if ((ChkSize.Checked=true) and (Split_E<=Split_S) and (Split_S>0) ) then
        begin
          SplitMergCell_S.Add(inttostr(Split_E));
          SplitMergCell_E.Add(inttostr(Split_S));
        end;
        //funcObj.WriteErrorLog('SplitI:'+floattostr(Split_S)+':'+floattostr(Split_E));
        if ((ChkSize.Checked=false) and (Split_S>0)) then
        BEGIN
          IF (SMDDS.fields[Split_S-1].FieldName <= BWZL.FieldByName('CCQZ').value) THEN
            Split_S:=Split_E
          ELSE  Split_S:=Split_E+1;
        END
        else if ((ChkSize.Checked=false) and (Split_S<=0)) then
          Split_S:=11;
        //
        if ((ChkSize.Checked=true) and (Split_S>0)) then
        BEGIN
          IF (SMDDS.fields[Split_S-1].FieldName <= BWZL.FieldByName('CCQZ').value) THEN
            Split_S:=Split_E
          ELSE  Split_S:=Split_E-1;
        END
        else if ((ChkSize.Checked=true) and (Split_S<=0)) then
          Split_S:=SMDDS.fieldcount-1;
      end;
      //
      for k:=0 to SplitMergCell_S.Count-1 do
      begin
        Split_S:=strtoint(SplitMergCell_S.Strings[k])-QrySizPos;
        Split_E:=strtoint(SplitMergCell_E.Strings[k])-QrySizPos;
      end;
      //
      for i:=0 to Length(BWZL.fieldbyname('YWPM').Value) do
      begin
        if copy(BWZL.fieldbyname('YWPM').Value,i,1)=' ' then
          break;
      end;
      if SMDDS.fields[strtoint(SplitMergCell_S.Strings[k-1])-1].FieldName<>SMDDS.fields[strtoint(SplitMergCell_E.Strings[k-1])-1].FieldName then
      begin
        eclApp.Range[eclApp.Cells[j,Split_S],eclApp.Cells[j,Split_E]].merge;
        eclApp.Cells(j,Split_S):= copy(BWZL.fieldbyname('YWPM').Value,0,i);
      end ELSE
        eclApp.Cells(j,Split_S):= copy(BWZL.fieldbyname('YWPM').Value,0,i);
      //
      for k:=1 to 4 do
      begin
        eclApp.range[eclApp.cells[5,Split_S],eclApp.cells[5,Split_E]].borders[k].linestyle:=1;
      end;
    end;
  BWZL.Next;
  END;
  SplitMergCell_S.Free;
  SplitMergCell_E.Free;
end;
//
//
procedure TProdSendR.BDT7Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k,QrySizPos:integer;
    YWPM:string;
begin
  if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
  if FileExists(AppDir+'Additional\Plan_SN32-1.xls')=false then
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Plan_SN32-1.xls'),Pchar(AppDir+'Additional\Plan_SN32-1.xls'),false);
  if FileExists(AppDir+'Additional\Plan_SN32-1.xls') then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
  end;
  try
    eclApp.WorkBooks.Open(AppDir+'Additional\Plan_SN32-1.xls');
    //部位材料名稱 BWBH
    with ProdSendR.BWZL do
    begin
      YWPM:='';
      first;
      while not eof do
      begin
        if fieldbyname('YWPM').value<>'' then
        begin
            //YWPM:=YWPM+'--'+fieldbyname('YWPM').value+' // ';
          if ((FieldByName('CCQZ').Value) = '') or     //判斷是否為分段材料
              ((FieldByName('CCQZ').Value) = null) then
          begin
            YWPM:=YWPM+'--'+fieldbyname('YWPM').value+' // ';
          end else
          begin
            YWPM:=YWPM+'--'+fieldbyname('YWPM').value+' =>('+FieldByName('CCQQ').Value+'-'+FieldByName('CCQZ').Value+') // ' ;
          end;
        end;
        next;
      end;
    end;
    eclApp.Cells(3,1):=YWPM;
    //Insert empty Rows
    eclApp.Range[eclApp.Cells[5,1],eclApp.Cells[5,SMDDS.fieldcount-QrySizPos-1]].HorizontalAlignment := -4108;
    for i:=1 to (SMDDS.RecordCount+2) do
    begin
      eclApp.ActiveSheet.Rows[5].Copy;
      eclApp.ActiveSheet.Rows[5].Insert;
    end;
    QrySizPos:=8;
    //201805  Show name YWPM by SIZE
    if BWZL.RecordCount >0 then
    begin
      j:=5;
      Show_NamebySize(eclApp,j,QrySizPos);
    end;
    //FieldName
    eclApp.Cells(6,1):='RY:';
    eclApp.Cells(6,2):='Article';
    for   i:=11 to SMDDS.fieldcount-1  do
    begin
      eclApp.Cells(6,i-QrySizPos):=SMDDS.fields[i-1].FieldName;
    end;
    //Data
    SMDDS.First;
    j:=7;
    while   not  SMDDS.Eof   do
    begin
      for   i:=1 to 2   do
      begin
        eclApp.Cells(j,i):=SMDDS.Fields[i-1].Value;
      end;
      for   i:=11 to  SMDDS.fieldcount-1   do
      begin
        eclApp.Cells(j,i-QrySizPos):=SMDDS.Fields[i-1].Value;
      end;
      SMDDS.Next;
      inc(j);
      //outline
      for k:=1 to 4 do
      begin
        eclApp.range[eclApp.cells[6,1],eclApp.cells[j,i-QrySizPos-1]].borders[k].linestyle:=1;
      end;
    end;
    //20180403
    eclApp.Range[eclApp.Cells[j,1],eclApp.Cells[j,2]].merge;
    eclApp.Cells(j,1):='TC:';
    for i:=10 to  SMDDS.fieldcount-1 do
    begin
      eclApp.Cells[j,i-7]:=DBGrideh3.getfootervalue(0,DBGrideh3.columns[i]);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
    except
    on   F:Exception   do
      showmessage(F.Message);
    end;
  end;
end;
//R2中底布分段規格SIZE轉交單
procedure TProdSendR.Show_CombinedSize(eclApp:olevariant;j:integer;QrySizPos:integer);
var Split_S,Split_E,SumQty:integer;
    SplitCC:array [0..11] of string;
    SplitMergCell_S,SplitMergCell_E:TSTringlist;
    i,k,a :integer;
begin
    //split Postion
    if ChkSize.Checked=false then
      Split_S:=11;
    if ChkSize.Checked=true then
      Split_S:= SMDDS.fieldcount-1;
    Split_E:=-1;
    SplitMergCell_S:=TStringlist.Create;
    SplitMergCell_E:=TStringlist.Create;
    //Sort Size Asc
    if SMDDS.FieldByName('XTMH').AsString<>'LS004L-4' then
    begin
      SplitCC[0]:='14.0';  SplitCC[1]:='13.0'; SplitCC[2]:='11.0'; SplitCC[3]:='09.5';
      SplitCC[4]:='08.0';  SplitCC[5]:='06.5';  SplitCC[6]:='05.0'; SplitCC[7]:='03.0';
      SplitCC[8]:=' 14.0';  SplitCC[9]:=' 13.0'; SplitCC[10]:=' 11.0'; SplitCC[11]:=' 10.0';
    end else
    begin
      SplitCC[0]:='14.0';  SplitCC[1]:='13.0'; SplitCC[2]:='12.0'; SplitCC[3]:='10.0';
      SplitCC[4]:='08.5';  SplitCC[5]:='07.0';  SplitCC[6]:='04.5'; SplitCC[7]:='03.0';
      SplitCC[8]:=' 14.0';  SplitCC[9]:=' 13.0'; SplitCC[10]:=' 11.0'; SplitCC[11]:=' 10.0';
    end;
    for k:=0 to High(SplitCC) do
    begin
      //
      if ChkSize.Checked=false then
        for   i:=11   to  SMDDS.fieldcount-1  do
           if (SMDDS.fields[i-1].FieldName>=SplitCC[k]) then
           begin
              Split_E:=i;
           end;
      if ChkSize.Checked=true then
        for  i:=SMDDS.fieldcount-1 downto 11  do
           if (SMDDS.fields[i-1].FieldName>=SplitCC[k]) then
              Split_E:=i;
      //
      if Split_E=-1 then
        Split_E:=Split_S;
      if ((ChkSize.Checked=false) and (Split_E>=Split_S) and (Split_E>0) ) then
      begin
        SplitMergCell_S.Add(inttostr(Split_S));
        SplitMergCell_E.Add(inttostr(Split_E));
      end else if ((ChkSize.Checked=true) and (Split_E<=Split_S) and (Split_S>0) ) then
      begin
        SplitMergCell_S.Add(inttostr(Split_E));
        SplitMergCell_E.Add(inttostr(Split_S));
      end;
      if ((ChkSize.Checked=false) and (Split_S>0) and (Split_E>0) ) then
        Split_S:=Split_E+1;
      if ((ChkSize.Checked=true) and (Split_S>0) and (Split_E>0)) then
        Split_S:=Split_E-1;
      //
    end;
    //=============
    //FieldName
    a:=j+1;   //check start location in Show_CombinedSize
    for k:=0 to SplitMergCell_S.Count-1 do
    begin
      Split_S:=strtoint(SplitMergCell_S.Strings[k])-QrySizPos;
      Split_E:=strtoint(SplitMergCell_E.Strings[k])-QrySizPos;
      eclApp.Range[eclApp.Cells[j,Split_S],eclApp.Cells[j,Split_E]].merge;
      if SMDDS.fields[strtoint(SplitMergCell_S.Strings[k])-1].FieldName<>SMDDS.fields[strtoint(SplitMergCell_E.Strings[k])-1].FieldName then
        eclApp.Cells(j,Split_S):=SMDDS.fields[strtoint(SplitMergCell_S.Strings[k])-1].FieldName+'-'+SMDDS.fields[strtoint(SplitMergCell_E.Strings[k])-1].FieldName
      else
        eclApp.Cells(j,Split_S):=SMDDS.fields[strtoint(SplitMergCell_S.Strings[k])-1].FieldName;
    end;
    //Data
    SMDDS.First;
    j:=j+1;
    while   not  SMDDS.Eof   do
    begin
      //Order
      eclApp.Cells(j,1):=SMDDS.Fields[0].Value;
      for k:=0 to SplitMergCell_S.Count-1 do
      begin
        SumQty:=0;
        for i:=strtoint(SplitMergCell_S.Strings[k]) to strtoint(SplitMergCell_E.Strings[k]) do
        begin
          if SMDDS.fields[i-1].AsString<>'' then
            SumQty:=SumQty+SMDDS.fields[i-1].Value;
        end;
        Split_S:=strtoint(SplitMergCell_S.Strings[k])-QrySizPos;
        Split_E:=strtoint(SplitMergCell_E.Strings[k])-QrySizPos;
        eclApp.Range[eclApp.Cells[j,Split_S],eclApp.Cells[j,Split_E]].merge;
        if SumQty>0 then
          eclApp.Cells(j,Split_S):=SumQty;
      end;
      SMDDS.Next;
      //outline
      for k:=1 to 4 do
      begin
        eclApp.range[eclApp.cells[j,1],eclApp.cells[j+1,SMDDS.fieldcount-QrySizPos-1]].borders[k].linestyle:=1;
      end;
      inc(j);
    end;
    //20180508
    eclApp.Cells(j,1):='TC:';
    for i:=2 to SMDDS.fieldcount-QrySizPos-1 do
    begin
      for k:=0 to SplitMergCell_S.Count-1 do
      begin
        Split_S:=strtoint(SplitMergCell_S.Strings[k])-QrySizPos;
        Split_E:=strtoint(SplitMergCell_E.Strings[k])-QrySizPos;
        if i = Split_S then
        begin
          eclApp.Range[eclApp.Cells[j,Split_S],eclApp.Cells[j,Split_E]].merge;
          eclApp.Cells[j,i]:=  '=SUM(R'+inttostr(a)+'C' + inttostr(Split_S) +':R'+ inttostr(j-1) +'C'+ inttostr(Split_E) + ')';
        end else
          eclApp.Cells[j,i]:= '=SUM(R'+inttostr(a)+'C' + inttostr(i) +':R'+ inttostr(j-1) +'C'+ inttostr(i) + ')';
      end;
    end;
    eclApp.Cells[j,i]:= '=SUM(R'+inttostr(j)+'C' + inttostr(2) +':R'+ inttostr(j) +'C'+ inttostr(i-1) + ')';
    SplitMergCell_S.Free;
    SplitMergCell_E.Free;
end;

procedure TProdSendR.BDT8Click(Sender: TObject);
  function GetExcelColumnID(i:integer):string;
  var str:string;
  begin
    case i of
      1:str:='A';  2:str:='B';  3:str:='C';
      4:str:='D';  5:str:='E';  6:str:='F';
      7:str:='G';  8:str:='H';  9:str:='I';
      10:str:='J';  11:str:='K';  12:str:='L';
      13:str:='M';  14:str:='N';  15:str:='O';
      16:str:='P';  17:str:='Q';  18:str:='R';
      19:str:='S';  20:str:='T';  21:str:='U';
      22:str:='V';  23:str:='W';  24:str:='X';
      25:str:='Y';  26:str:='Z';  27:str:='AA';
      28:str:='AB';  29:str:='AC';  30:str:='AD';
      31:str:='AE';  32:str:='AF';  33:str:='AG';
      34:str:='AH';  35:str:='AI';  36:str:='AJ';
    end;
    result:=str;
  end;
var eclApp,WorkBook:olevariant;
    i,j,k,QrySizPos:integer;
    YWPM:string;
    //
    Split_S,Split_E,SumQty:integer;
    SplitCC:array [0..7] of double;
    SplitMergCell_S,SplitMergCell_E:TSTringlist;
begin
 if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
 if FileExists(AppDir+'Additional\Plan_SN32-2.xls')=false then
    CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Plan_SN32-2.xls'),Pchar(AppDir+'Additional\Plan_SN32-2.xls'),false);
 if FileExists(AppDir+'Additional\Plan_SN32-2.xls') then
 begin
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  try
    eclApp.WorkBooks.Open(AppDir+'Additional\Plan_SN32-2.xls');
    eclApp.Cells(6,1):='SKU:'+SMDDS.FieldByName('Article').value;
    eclApp.Cells(7,1):='DAO:'+SMDDS.FieldByName('DAOMH').value;
    //部位材料名稱 BWBH
    with ProdSendR.BWZL do
    begin
      YWPM:='';
      first;
      while not eof do
      begin
        if fieldbyname('YWPM').value<>'' then
        begin
           // YWPM:=YWPM+'--'+fieldbyname('YWPM').value+' // ';
           if ((FieldByName('CCQZ').Value) = '') or     //判斷是否為分段材料
              ((FieldByName('CCQZ').Value) = null) then
           begin
            YWPM:=YWPM+'--'+fieldbyname('YWPM').value+' // ';
           end else
           begin
            YWPM:=YWPM+'--'+fieldbyname('YWPM').value+' =>('+FieldByName('CCQQ').Value+'-'+FieldByName('CCQZ').Value+') // ' ;
           end;
        end;
        next;
      end;
    end;

    {with ProdSendR.BWZL do
  begin
    YWSM:='';
    YWPM:='';
    first;
    while not eof do
    begin
      YWSM:=YWSM+fieldbyname('BWBH').value+'--'+fieldbyname('YWSM').value+' // ';
      if fieldbyname('YWPM').value<>'' then
      begin
        if ((FieldByName('CCQZ').Value) = '') or     //判斷是否為分段材料
           ((FieldByName('CCQZ').Value) = null) then
        begin
          YWPM:=YWPM+fieldbyname('CLBH').value+'--'+fieldbyname('YWPM').value+' // ';
        end else
        begin
          YWPM:=YWPM+fieldbyname('CLBH').value+'--'+fieldbyname('YWPM').value+' =>('+FieldByName('CCQQ').Value+'-'+FieldByName('CCQZ').Value+') // ' ;
        end;
      end;
      next;
    end;
    if YWPM<>'' then YWPM:=Copy(YWPM,1,length(YWPM)-3);
    if YWSM<>'' then YWSM:=Copy(YWSM,1,length(YWSM)-3);
    LYWSM.caption:=YWSM;
    LYWPM.caption:=YWPM;
  end;}
    eclApp.Cells(8,1):=YWPM;
    //Insert empty Rows x2
    for i:=1 to (SMDDS.RecordCount+2)*2 do
    begin
      eclApp.ActiveSheet.Rows[10].Copy;
      eclApp.ActiveSheet.Rows[10].Insert(-4121);
    end;
    //Fieldname
    QrySizPos:=9;
    eclApp.Cells(10,1):='RY:';
    for   i:=11 to SMDDS.fieldcount-1  do
    begin
      eclApp.Cells(10,i-QrySizPos):=SMDDS.fields[i-1].FieldName;
    end;
    //Data
    SMDDS.First;
    j:=11;
    while   not  SMDDS.Eof   do
    begin
      //Order Tua
      eclApp.Cells(j,1):=SMDDS.Fields[0].Value;
      //Paris Pices show
      if PairsSpinEdit.value >1 then
      begin
        for  i:=11  to  SMDDS.fieldcount-1  do
        begin
          if SMDDS.fields[i-1].AsString <>'' then
          begin
            eclApp.Cells(j,i-QrySizPos):=''''+SMDDS.fields[i-1].AsString+'/'+String(SMDDS.fields[i-1].Value / PairsSpinEdit.Value);
          end;
        end;
      end else
      begin
        for   i:=11   to  SMDDS.fieldcount-1  do
        begin
          eclApp.Cells(j,i-QrySizPos):=SMDDS.fields[i-1].Value;
        end;
      end;
      SMDDS.Next;
      inc(j);
    end;
    eclApp.Cells(j,1):='TC:';
    for i:=10 to  SMDDS.fieldcount-1 do
    begin
      eclApp.Cells[j,i-8]:=DBGrideh3.getfootervalue(0,DBGrideh3.columns[i]);
    end;
    eclApp.Cells[j,i-QrySizPos]:= '=SUM(R'+inttostr(j)+'C' + inttostr(2) +':R'+ inttostr(j) +'C'+ inttostr(i-QrySizPos-1) + ')';

    //outline
    for k:=1 to 4 do
    begin
      eclApp.range[eclApp.cells[10,1],eclApp.cells[j,SMDDS.fieldcount-QrySizPos-1]].borders[k].linestyle:=1;
    end;
    //update 20180508
    //Show Additional CombinedSize
    Show_CombinedSize(eclApp,j+1,QrySizPos);
    showmessage('Succeed.');
    eclApp.Visible:=True;
    except
    on   F:Exception   do
      showmessage(F.Message);
  end;
 end;
end;

procedure TProdSendR.BB1Click(Sender: TObject);
begin
  IsCombined:=false;//是否迴轉數合併
  ButtonQuery(SMDDS,IsCombined,false);//Query按鈕
  DBGrid2Setting();
  //funcobj.WriteErrorLog(SMDDS.Text);
end;

procedure TProdSendR.BB2Click(Sender: TObject);
begin
  IsCombined:=true;//是否迴轉數合併
  ButtonQuery(SMDDS,IsCombined,false);//Query按鈕
  DBGrid2Setting();
end;

end.
