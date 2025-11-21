unit DDZL_BOMM1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ComCtrls, Buttons, OleServer,comobj ,
  ExtCtrls, DBCtrls, GridsEh, DBGridEh, Menus, IniFiles;

type
  TDDZL_BOMM = class(TForm)
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
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    PC1: TPageControl;
    TS1: TTabSheet;
    TS2: TTabSheet;
    TS3: TTabSheet;
    TS4: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    DBGrid1: TDBGridEh;
    XXZL: TQuery;
    DS1: TDataSource;
    XXZLXieXing: TStringField;
    XXZLSheHao: TStringField;
    XXZLXieMing: TStringField;
    XXZLYSSM: TStringField;
    XXZLARTICLE: TStringField;
    XXZLBZCC: TStringField;
    Panel3: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBGrid2: TDBGridEh;
    XXZLS: TQuery;
    DS2: TDataSource;
    XXZLSXH: TStringField;
    XXZLSBWBH: TStringField;
    XXZLSBWMC: TStringField;
    XXZLSCLBH: TStringField;
    XXZLSCLMC: TStringField;
    XXZLSDWBH: TStringField;
    XXZLSLYCC: TStringField;
    XXZLSBZ: TStringField;
    XXZLSZSYWJC: TStringField;
    XXZLSLOSS: TFloatField;
    XXZLSCLSL: TFloatField;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel4: TPanel;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Panel5: TPanel;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBGrid3: TDBGridEh;
    DBGrid4: TDBGridEh;
    xtbwyl1: TQuery;
    DS3: TDataSource;
    xtbwyl: TQuery;
    DS4: TDataSource;
    XXCC: TQuery;
    Excel: TButton;
    Print: TButton;
    Print2: TButton;
    Excel2: TButton;
    XXZLKFJC: TStringField;
    XXZLSCCQQ: TStringField;
    XXZLSCCQZ: TStringField;
    XXZLSCLZMLB: TStringField;
    XXZLSCLZW: TStringField;
    XXZLSBWZW: TStringField;
    XXZLXx: TStringField;
    XXZLSs: TStringField;
    XXZLSBWLB: TStringField;
    XXZLIMGName: TStringField;
    shoePicpopo: TPopupMenu;
    Saveas1: TMenuItem;
    SaveDialog: TSaveDialog;
    XXZLJiJie: TStringField;
    Label3: TLabel;
    DDBHEdit: TEdit;
    XXZLZLBH: TStringField;
    XXZLSysDate: TDateTimeField;
    bbt7: TBitBtn;
    Gjtable: TQuery;
    Titlememo: TQuery;
    TitlememoZLBH: TStringField;
    TitlememoDDBH: TStringField;
    TitlememoXieXing: TStringField;
    TitlememoSheHao: TStringField;
    TitlememoARTICLE: TStringField;
    TitlememoKHBH: TStringField;
    TitlememoKHPO: TStringField;
    TitlememoVersion: TSmallintField;
    TitlememoTrader: TStringField;
    TitlememoTraderPO: TStringField;
    TitlememoDDLB: TStringField;
    TitlememoDDCC: TStringField;
    TitlememoBOMCC: TStringField;
    TitlememoDest: TStringField;
    TitlememoDDRQ: TDateTimeField;
    TitlememoShipDate: TDateTimeField;
    TitlememoPairs: TIntegerField;
    TitlememoXieMing: TStringField;
    TitlememoYSSM: TStringField;
    TitlememoBZCC: TStringField;
    TitlememoKHDH: TStringField;
    TitlememoXTMH: TStringField;
    TitlememoDMGJ: TStringField;
    TitlememoDDMH: TStringField;
    TitlememoMSGJ: TStringField;
    TitlememoMDMH: TStringField;
    TitlememoDAOGJ: TStringField;
    TitlememoDAOMH: TStringField;
    TitlememoIMGName: TStringField;
    TitlememoKFJC: TStringField;
    TitlememoYWSM: TStringField;
    QMatList: TQuery;
    TempSQL: TQuery;
    XXZLFlag: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure XXCCAfterOpen(DataSet: TDataSet);
    procedure XXZLSAfterOpen(DataSet: TDataSet);
    procedure ExcelClick(Sender: TObject);
    procedure Excel2Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure bbt5Click(Sender: TObject);
    procedure XXZLAfterOpen(DataSet: TDataSet);
    procedure TitlememoAfterOpen(DataSet: TDataSet);
    procedure bbt7Click(Sender: TObject);
  private
    AppDir:String;
    { Private declarations }
    procedure Print_ShoeSpec();
    procedure Print_OutsoleSpec();
    procedure DetectMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
  public
    ShoePicPath:String;
    { Public declarations }
    procedure ReadIni();
  end;

var
  DDZL_BOMM: TDDZL_BOMM;

implementation
  uses main1, D_PSpecPrintss1, D_PSpecPrintssTW1, D_PSPecPrintss_SP1 ,R_PSepcRintss1 ,FunUnit;
{$R *.dfm}
procedure TDDZL_BOMM.ReadIni();
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

procedure TDDZL_BOMM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDDZL_BOMM.Button1Click(Sender: TObject);
begin
  //
  if DDBHEdit.Text='' then
  begin
    showmessage('Please input Order No.');
    abort;
  end;
  //
  with XXZL do
  begin
    active:=false;
    sql.clear;
    sql.add('select XXZL.DDBH as ZLBH,XXZL.XieXing,XXZL.SheHao,XXZL.Article,');
    sql.add('XXZL.XieMing,XXZL.YSSM,KFZL.KFJC,XXZL.BZCC,xt.xiexing as Xx,xt.Shehao as Ss,XXZL.IMGName,KFXXZL.JiJie,XXZL.SysDate,''SHOE'' as Flag ');
    sql.add('from DDZL_XXZL XXZL  ');
    sql.add('left join KFZL on KFZL.KFDH=XXZL.KHDH ');
    sql.add('left join KFXXZL on KFXXZL.SheHao=XXZL.SheHao and  KFXXZL.XieXing=XXZL.XieXing ');
    sql.Add('left join (select xiexing,shehao from DDZL_xtbwyl1 group by xiexing,shehao) as xt');
    sql.add(' on xt.xiexing=xxzl.xiexing and xt.shehao=xxzl.shehao ' );
    sql.add('where XXZL.DDBH like '''+DDBHEdit.Text+'%'' ');
    sql.add(' and XXZL.XieXing like '+''''+edit1.Text+'%'+'''');
    sql.add(' and XXZL.SheHao like '+''''+edit2.Text+'%'+'''');
    sql.add(' and XXZL.ARTICLE like '+''''+edit3.Text+'%'+'''');
    sql.add(' and XXZL.XieMing like '+''''+edit5.Text+'%'+'''');
    sql.add(' order by KFJC,XXZL.XieXing,XXZL.Shehao');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  if XXZL.RecordCount=0 then //底廠大底出貨訂單  R factory shipping only Outsole
  begin
    with XXZL do
    begin
      active:=false;
      SQL.clear;
      SQL.Add('select DDZL.DDBH as ZLBH,XXZL.XieXing,XXZL.Shehao,XXZL.Article,'''' as XieMing,XXZL.YSSM,');
      SQL.Add('	    	'''' as KFJC,'''' as BZCC,'''' as Xx,'''' as Ss,'''' as ImGName, '''' as JiJie, Convert(smalldatetime,DDZL.USERDATE) as SysDate,''OUTSOLE'' as Flag');
      SQL.Add(' from '+main.LIY_DD+'.dbo.DDZL DDZL');
      SQL.Add(' left join '+main.LIY_DD+'.dbo.XXZL XXZL on DDZL.XieXing=XXZL.XieXing and DDZL.Shehao=XXZL.Shehao and DDZL.CQDH=XXZL.CQDH');
      SQL.Add(' where DDZL.DDBH like '''+DDBHEdit.Text+'%'' ');
      sql.add(' and XXZL.XieXing like '+''''+edit1.Text+'%'+'''');
      sql.add(' and XXZL.SheHao like '+''''+edit2.Text+'%'+'''');
      sql.add(' and XXZL.ARTICLE like '+''''+edit3.Text+'%'+'''');
      SQL.Add(' order by KFJC,XXZL.XieXing,XXZL.Shehao');
      Active:=true;
    end;
  end;
  //
  XXZLS.Open;
  BBT6.Enabled:=true;
  BBT7.Enabled:=true;
  Panel2.Visible:=false;
  //
end;

procedure TDDZL_BOMM.BB7Click(Sender: TObject);
begin
close;
end;

procedure TDDZL_BOMM.BB1Click(Sender: TObject);
begin
  PC1.ActivePage:=TS1;
  panel2.Visible:=true;
  edit1.SetFocus;
end;

procedure TDDZL_BOMM.DBGrid1DblClick(Sender: TObject);
begin
  if XXZL.active then
  begin
    PC1.ActivePage:=TS2;
  end;
end;

procedure TDDZL_BOMM.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGrid1Dblclick(nil);
end;

procedure TDDZL_BOMM.XXZLSAfterOpen(DataSet: TDataSet);
begin

  if XXZLS.RecordCount <> 0 then
  begin
    with XXCC do
    begin
      Active:=false;
      sql.Clear;
      sql.add('select distinct XTCC from XTBWYL  ');
      sql.add('where XieXing='+''''+XXZL.fieldbyname('XieXing').AsString+'''');
      sql.add('and SheHao='+''''+XXZL.fieldbyname('SheHao').AsString+''''+'  order by XTCC ');
      active:=true;
    end;
  end;
  
end;


procedure TDDZL_BOMM.XXCCAfterOpen(DataSet: TDataSet);
var i:integer;
begin

if XXCC.RecordCount <> 0 then   // 沒有電腦用量
begin

  //實際用量
  XXCC.First;
  with  XTBWYL1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select XTBWYL1.BWBH,BWZL.YWSM');
    while not XXCC.eof do
      begin
        sql.add(',max(case when XTBWYL1.XTCC='+''''+XXCC.fieldbyname('XTCC').asstring+'''');
        sql.add(' then XTBWYL1.CLSL end ) as '+''''+XXCC.fieldbyname('XTCC').asstring+'''');
        XXCC.Next;
      end;
    sql.add('from DDZL_XTBWYL1 as XTBWYL1 ');
    sql.add('left join BWZL on BWZL.BWDH=XTBWYL1.BWBH  ');
    sql.add('where XTBWYL1.XieXing=:XieXing and XTBWYL1.SheHao=:SheHao and XTBWYL1.DDBH=:ZLBH');
    sql.add('group by XTBWYL1.BWBH,BWBH,BWZL.YWSM');
    sql.add('order by XTBWYL1.BWBH');
    active:=true;
  end;

  DBGrid3.columns[0].width:=40;
  DBGrid3.columns[1].width:=140;
  for i:=2 to XTBWYL1.FieldCount-1 do
  begin
    DBGrid3.columns[i].width:=50;
  end;
  for i:=2 to XTBWYL1.FieldCount-1 do
  begin
    TFLOATField(XTBWYL1.Fields[i]).DisplayFormat:='#,##0.0000';
  end;

  //電腦用量
  XXCC.First;
  with  XTBWYL do
  begin
    active:=false;
    sql.clear;
    sql.add('select XTBWYL.BWBH,BWZL.YWSM');
    while not XXCC.eof do
      begin
        sql.add(',max(case when XTBWYL.XTCC='+''''+XXCC.fieldbyname('XTCC').asstring+'''');
        sql.add(' then XTBWYL.CLSL end ) as '+''''+XXCC.fieldbyname('XTCC').asstring+'''');
        XXCC.Next;
      end;
    sql.add('from DDZL_XTBWYL as XTBWYL ');
    sql.add('left join BWZL on BWZL.BWDH=XTBWYL.BWBH  ');
    sql.add('where XTBWYL.XieXing=:XieXing and XTBWYL.SheHao=:SheHao and XTBWYL.DDBH=:ZLBH');
    sql.add('group by XTBWYL.BWBH,BWBH,BWZL.YWSM');
    sql.add('order by XTBWYL.BWBH');
    active:=true;
  end;

  DBGrid4.columns[0].width:=40;
  DBGrid4.columns[1].width:=140;
  for i:=2 to XTBWYL.FieldCount-1 do
  begin
    DBGrid4.columns[i].width:=50;
  end;
  for i:=2 to XTBWYL.FieldCount-1 do
  begin
    TFLOATField(XTBWYL.Fields[i]).DisplayFormat:='#,##0.0000';
  end;

end;    //  end of if XXCC.RecordCount <> 0
end;


procedure TDDZL_BOMM.ExcelClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if XTBWYL1.active  then
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
        for   i:=0   to   XTBWYL1.fieldCount-1   do
        begin
          eclApp.Cells(1,i+1):=XTBWYL1.fields[i].FieldName;
        end;

        XTBWYL1.First;
        j:=2;
        while   not   XTBWYL1.Eof   do
        begin
          for   i:=0   to   XTBWYL1.FieldCount-1   do
          begin
            eclApp.Cells(j,i+1):=XTBWYL1.Fields[i].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
          XTBWYL1.Next;
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

procedure TDDZL_BOMM.Excel2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if XTBWYL.active  then
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
        for   i:=0   to   XTBWYL.fieldCount-1   do
        begin
          eclApp.Cells(1,i+1):=XTBWYL.fields[i].FieldName;
        end;
        XTBWYL.First;
        j:=2;
        while   not   XTBWYL.Eof   do
        begin
          for   i:=0   to   XTBWYL.FieldCount-1   do
          begin
            eclApp.Cells(j,i+1):=XTBWYL.Fields[i].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
          XTBWYL.Next;
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



procedure TDDZL_BOMM.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  PC1.ActivePage:=TS1;
  ReadIni();
end;

procedure TDDZL_BOMM.FormDestroy(Sender: TObject);
begin
  DDZL_BOMM:=nil;
end;

procedure TDDZL_BOMM.DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if XXZl.FieldByName('SS').IsNull or XXZl.FieldByName('XX').IsNull then
  begin
    dbgrid1.canvas.font.color:=clred;
    // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TDDZL_BOMM.DetectMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

end;
//
procedure TDDZL_BOMM.Print_ShoeSpec();
var shoePic:string;
    i:integer;
begin
  if messagedlg('English version?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    if messagedlg('Not show Child materail?',mtinformation,[mbYes,mbNo],0)=mrYes then
      begin
        D_PSpecPrintss:=TD_PSpecPrintss.create(nil);
        //20150610 weston 增加修改
        D_PSpecPrintss.MemoTemp.DataSource:=DS1;
        D_PSpecPrintss.Titlememo.DataSource:=DS1;
        D_PSpecPrintss.QMatList.DataSource:=DS1;
        //20190424
        with D_PSpecPrintss.QMatList do
        begin
          active:=false;
          sql.Clear;
          SQL.Add('if object_id(''tempdb..#Material'') is not null');
          SQL.Add('begin');
          SQL.Add('drop table #Material');
          SQL.Add('end');
          SQL.Add('');
          SQL.Add('select zlzls2.ZLBH,zlzls2.XH,zlzls2. bwbh, zlzls2.clbh, zlzls2.mjbh,zlzls2.clsl,');
          SQL.Add('		zlzls2.usage, zlzls2.BWMCY, zlzls2.CLMCY, zlzls2.dwbh, zlzls2.LOSS,zlzls2.CQDH, zlzls2.JGYWSM,zlzls2.XieXing, zlzls2.Shehao,zlzls2.CCQQ, zlzls2.CCQZ');
          SQL.Add('into #Material');
          SQL.Add('from (');
          SQL.Add('SELECT zlzls2.ZLBH,ZLZLS2.XH,ZLZLS2.bwbh ,zlzls2.clbh AS clbh ,max(zlzls2.mjbh) AS mjbh ,');
          SQL.Add('              sum(zlzls2.clsl) AS clsl,(sum(zlzls2.clsl)/ddzl.pairs) AS USAGE,max(BWZL.ywsm) AS BWMCY ,');
          SQL.Add('              max(CLZL.ywpm) AS CLMCY ,max(CLZL.dwbh) AS dwbh,XXZLS.LOSS  ,CLZL.CQDH,XXZLS.JGYWSM,DDZL.XieXing ,DDZL.SheHao');
          SQL.Add('              ,XXZLS.CCQQ,XXZLS.CCQZ');
          SQL.Add('FROM DDZL_ZLZLS2 AS ZLZLS2');
          SQL.Add('LEFT JOIN BWZL AS BWZL ON ZLZLS2.BWBH = BWZL.bwdh ');
          SQL.Add('LEFT JOIN CLZL AS CLZL ON ZLZLS2.CLBH = CLZL.cldh ');
          SQL.Add('LEFT JOIN DDZL AS DDZL ON ZLZLS2.ZLBH = DDZL.ZLBH ');
          SQL.Add('LEFT JOIN XXZLS AS XXZLS ON DDZL.XIEXING = XXZLS.XIEXING');
          SQL.Add('         AND DDZL.SHEHAO = XXZLS.SHEHAO AND ZLZLS2.BWBH = XXZLS.BWBH --AND ZLZLS2.CLBH = XXZLS.CLBH');
          SQL.Add('LEFT join SHIP_XXZLS on SHIP_XXZLS.XieXing=DDZL.XieXing and SHIP_XXZLS.SheHao=DDZL.SheHao and ZLZLS2.BWBH=SHIP_XXZLS.BWBH');
          SQL.Add('where ZLZLS2.ZLBH=:ZLBH and ZLZLS2.MJBH=''ZZZZZZZZZZ''');
          SQL.Add('      and (SHIP_XXZLS.tyjh is null or SHIP_XXZLS.tyjh=''N'')');
          SQL.Add('GROUP BY ZLZLS2.XH,zlzls2.zlbh,zlzls2.bwbh,zlzls2.clbh,XXZLS.CLSL,CLZL.CQDH,XXZLS.LOSS,XXZLS.JGYWSM ,DDZL.XieXing ,DDZL.SheHao,XXZLS.CCQQ,XXZLS.CCQZ,ddzl.pairs');
          SQL.Add('union all');
          SQL.Add('Select zlzls2.ZLBH,zlzls2.xh,ZLZLS2.bwbh+''-'' as bwbh,zlzls2.clbh,max(zlzls2.mjbh) AS mjbh ,');
          SQL.Add('              sum(zlzls2.clsl) AS clsl,(sum(zlzls2.clsl)/ddzl.pairs) AS USAGE,''-----'' AS BWMCY ,');
          SQL.Add('              max(CLZL.ywpm) AS CLMCY ,max(CLZL.dwbh) AS dwbh,XXZLS.LOSS  ,CLZL.CQDH,XXZLS.JGYWSM,DDZL.XieXing ,DDZL.SheHao');
          SQL.Add('              ,XXZLS.CCQQ,XXZLS.CCQZ');
          SQL.Add('from DDZL_zlzls2 AS ZLZLS2 ');
          SQL.Add('');
          SQL.Add('LEFT JOIN BWZL AS BWZL ON ZLZLS2.BWBH = BWZL.bwdh ');
          SQL.Add('LEFT JOIN CLZL AS CLZL ON ZLZLS2.CLBH = CLZL.cldh ');
          SQL.Add('LEFT JOIN DDZL AS DDZL ON ZLZLS2.ZLBH = DDZL.ZLBH ');
          SQL.Add('LEFT JOIN XXZLS AS XXZLS ON DDZL.XIEXING = XXZLS.XIEXING ');
          SQL.Add('         AND DDZL.SHEHAO = XXZLS.SHEHAO AND ZLZLS2.BWBH = XXZLS.BWBH --AND ZLZLS2.CLBH = XXZLS.CLBH');
          SQL.Add('LEFT join SHIP_XXZLS on SHIP_XXZLS.XieXing=DDZL.XieXing and SHIP_XXZLS.SheHao=DDZL.SheHao and ZLZLS2.BWBH=SHIP_XXZLS.BWBH');
          SQL.Add('where ZLZLS2.ZLBH=:ZLBH and ZLZLS2.MJBH<>''ZZZZZZZZZZ''');
          SQL.Add('      and (SHIP_XXZLS.tyjh is null or SHIP_XXZLS.tyjh=''N'')');
          SQL.Add('GROUP BY ZLZLS2.XH,zlzls2.zlbh,zlzls2.bwbh,ZLZLS2.clbh,XXZLS.CLSL,CLZL.CQDH,XXZLS.LOSS,XXZLS.JGYWSM ,DDZL.XieXing ,DDZL.SheHao,XXZLS.CCQQ,XXZLS.CCQZ,ddzl.pairs');
          SQL.Add('union all');
          SQL.Add('select zlzls3.ZLBH1 as ZLBH,''ZZZ'' as XH, ''ZZZ'' as BWBH,substring(zlzls3.cldhz,2,10) as CLBH,max(substring(zlzls3.cldhz,2,10)) as MJBH, sum(zlzls3.tclyl)as CLSL,');
          SQL.Add('      (sum(zlzls3.tclyl)/DDZL.Pairs) as Usage,''OUTSOLE'' as BWMCY,max(CLZL.YWPM)as CLMCY,max(CLZL.DWBH)as DWBH,NULL as LOSS,ERP_CLZL.CQDH,'''' as JGYWSM,max(DDZL.XieXing) as XieXing,');
          SQL.Add('      max(DDZL.SheHao) as SheHao,'''' as CCQQ,'''' as CCQZ');
          SQL.Add('from '+main.LIY_DD+'.DBO.ZLZLS3 ZLZLS3');
          SQL.Add('left join '+main.LIY_DD+'.DBO.CLZL CLZL on CLZL.CLDH=ZLZLS3.cldhz');
          SQL.Add('left join DDZL on DDZL.DDBH=ZLZLS3.ZLBH1');
          SQL.Add('LEFT JOIN CLZL as ERP_CLZL ON zlzls3.cldhz = ''A''+ERP_CLZL.cldh');
          SQL.Add('where zlzls3.zlbh1=:ZLBH');
          SQL.Add('group by substring(zlzls3.cldhz,2,10),zlzls3.ZLBH1,DDZL.Pairs,ERP_CLZL.CQDH');
          SQL.Add('having sum(zlzls3.tclyl)<>0');
          SQL.Add('Union all');
          SQL.Add('SELECT ZLZLS2_YM.ZLBH,ZLZLS2_YM.XH,ZLZLS2_YM.bwbh ,ZLZLS2_YM.clbh AS clbh ,max(ZLZLS2_YM.mjbh) AS mjbh ,');
          SQL.Add('              sum(ZLZLS2_YM.clsl) AS clsl ,(sum(ZLZLS2_YM.clsl)/ddzl.pairs) AS USAGE,IsNull(max(BWZL.ywsm),''Print'') AS BWMCY ,');
          SQL.Add('              max(CLZL.ywpm) AS CLMCY ,max(CLZL.dwbh) AS dwbh,NULL as LOSS  ,CLZL.CQDH,'''' as JGYWSM,max(DDZL.XieXing) as XieXing,');
          SQL.Add('              max(DDZL.SheHao) as SheHao,'''' as CCQQ,'''' as CCQZ');
          SQL.Add(' from ZLZLS2_YM');
          SQL.Add(' LEFT JOIN BWZL AS BWZL ON ZLZLS2_YM.BWBH = BWZL.bwdh');
          SQL.Add(' LEFT JOIN CLZL AS CLZL ON ZLZLS2_YM.CLBH = CLZL.cldh');
          SQL.Add(' left join DDZL on DDZL.DDBH=ZLZLS2_YM.ZLBH');
          SQL.Add(' where ZLZLS2_YM.ZLBH=:ZLBH');
          SQL.Add(' GROUP BY ZLZLS2_YM.ZLBH,ZLZLS2_YM.XH,ZLZLS2_YM.bwbh ,ZLZLS2_YM.clbh,ddzl.pairs,CLZL.CQDH');
          SQL.Add(')zlzls2');
          SQL.Add('group by  zlzls2.ZLBH,zlzls2.XH,zlzls2.bwbh , zlzls2.clbh, zlzls2.mjbh,zlzls2.clsl,');
          SQL.Add('		zlzls2.usage, zlzls2.BWMCY, zlzls2.CLMCY, zlzls2.dwbh, zlzls2.LOSS,zlzls2.CQDH, zlzls2.JGYWSM,zlzls2.XieXing, zlzls2.Shehao,zlzls2.CCQQ, zlzls2.CCQZ');
          SQL.Add('ORDER BY zlzls2.XH,zlzls2.bwbh asc');
          SQL.Add('');
          SQL.Add('update #Material');
          SQL.Add('set CLMCY=CLMCY+JGYWSM');
          SQL.Add('where JGYWSM is not Null');
          SQL.Add('');
          SQL.Add('update #Material');
          SQL.Add('set CLMCY=CLMCY+''(''+CCQQ+''-''');
          SQL.Add('where CCQQ >'' ''');
          SQL.Add('');
          SQL.Add('update #Material');
          SQL.Add('set CLMCY=CLMCY+CCQZ+'')''');
          SQL.Add('where CCQZ >'' ''');
          SQL.Add('');
          SQL.Add(' select * from #Material');
          SQL.Add('order by BWBH');
          active:=true;
        end;
        D_PSpecPrintss.MemoOth.DataSource:=DS1;
        D_PSpecPrintss.TitleMemo.Active:=true;
        //
        D_PSpecPrintss.QRCompositeReport1.prepare;
        i:=D_PSpecPrintss.QuickRep2.QRPrinter.pagecount ;
        D_PSpecPrintss.PageN1.Caption:='/  '+inttostr(i);
        D_PSpecPrintss.PageN2.Caption:='/  '+inttostr(i);
        D_PSpecPrintss.PageN3.Caption:='/  '+inttostr(i);
        D_PSpecPrintss.Fac1.Caption:=D_PSpecPrintss.Fac1.Caption+main.Edit2.Text;
        D_PSpecPrintss.Fac2.Caption:=D_PSpecPrintss.Fac2.Caption+main.Edit2.Text;
        D_PSpecPrintss.Fac3.Caption:=D_PSpecPrintss.Fac3.Caption+main.Edit2.Text;
        try
          // 圖片加載不論是否成功都要打印
          shoePic:=D_PSpecPrintss.TitleMemo.fieldbyname('IMGName').AsString  ;
          if FileExists(shoePic)=true then
          begin
            D_PSpecPrintss.QRImage1.Picture.LoadFromFile(shoePic);
            D_PSpecPrintss.QRImage2.Picture.LoadFromFile(shoePic);
            D_PSpecPrintss.QRImage3.Picture.LoadFromFile(shoePic);
          end else
          begin
            shoePic:=StringReplace(shoePic,'H:',ShoePicPath, [rfReplaceAll, rfIgnoreCase]);
            if FileExists(shoePic)=true then
            begin
              D_PSpecPrintss.QRImage1.Picture.LoadFromFile(shoePic);
              D_PSpecPrintss.QRImage2.Picture.LoadFromFile(shoePic);
              D_PSpecPrintss.QRImage3.Picture.LoadFromFile(shoePic);
            end;
          end;
          //
          D_PSpecPrintss.QRCompositeReport1.Preview;
          D_PSpecPrintss.Close;
        except
          showmessage('No picture of article.');
          D_PSpecPrintss.QRCompositeReport1.Preview;
        end ;
      end
    else
      begin
        D_PSPecPrintss_SP:=TD_PSPecPrintss_SP.create(nil);
        //20150610 weston 增加修改
        D_PSPecPrintss_SP.MemoTemp.DataSource:=DS1;
        D_PSPecPrintss_SP.Titlememo.DataSource:=DS1;
        D_PSPecPrintss_SP.QMatList.DataSource:=DS1;
        //20190423
        with D_PSPecPrintss_SP.QMatList do
        begin
          active:=false;
          sql.Clear;
          SQL.Add('if object_id(''tempdb..#Material'') is not null');
          SQL.Add('begin   ');
          SQL.Add('drop table #Material');
          SQL.Add('end');
          SQL.Add('');
          SQL.Add('select zlzls2.XH,zlzls2. bwbh, zlzls2.clbh, zlzls2.mjbh,zlzls2.clsl,');
          SQL.Add('		zlzls2.usage, zlzls2.BWMCY, zlzls2.CLMCY, zlzls2.dwbh, zlzls2.LOSS,zlzls2.CQDH, zlzls2.JGYWSM,zlzls2.CCQQ, zlzls2.CCQZ');
          SQL.Add('into #Material');
          SQL.Add('from (');
          SQL.Add('SELECT ZLZLS2.XH,ZLZLS2.bwbh ,zlzls2.clbh AS clbh ,max(zlzls2.mjbh) AS mjbh ,');
          SQL.Add('              sum(zlzls2.clsl) AS clsl,(sum(zlzls2.clsl)/ddzl.pairs) AS USAGE,max(BWZL.ywsm) AS BWMCY ,');
          SQL.Add('              max(CLZL.ywpm) AS CLMCY ,max(CLZL.dwbh) AS dwbh,XXZLS.LOSS  ,CLZL.CQDH,XXZLS.JGYWSM');
          SQL.Add('              ,XXZLS.CCQQ,XXZLS.CCQZ');
          SQL.Add('FROM DDZL_ZLZLS2 AS ZLZLS2');
          SQL.Add('LEFT JOIN BWZL AS BWZL ON ZLZLS2.BWBH = BWZL.bwdh ');
          SQL.Add('LEFT JOIN CLZL AS CLZL ON ZLZLS2.CLBH = CLZL.cldh ');
          SQL.Add('LEFT JOIN DDZL AS DDZL ON ZLZLS2.ZLBH = DDZL.ZLBH ');
          SQL.Add('LEFT JOIN XXZLS AS XXZLS ON DDZL.XIEXING = XXZLS.XIEXING');
          SQL.Add('         AND DDZL.SHEHAO = XXZLS.SHEHAO AND ZLZLS2.BWBH = XXZLS.BWBH AND ZLZLS2.CLBH = XXZLS.CLBH');
          SQL.Add('LEFT join SHIP_XXZLS on SHIP_XXZLS.XieXing=DDZL.XieXing and SHIP_XXZLS.SheHao=DDZL.SheHao and ZLZLS2.BWBH=SHIP_XXZLS.BWBH');
          SQL.Add('where ZLZLS2.ZLBH=:ZLBH and ZLZLS2.MJBH=''ZZZZZZZZZZ''');
          SQL.Add('      and (SHIP_XXZLS.tyjh is null or SHIP_XXZLS.tyjh=''N'')');
          SQL.Add('GROUP BY ZLZLS2.XH,zlzls2.zlbh,zlzls2.bwbh,zlzls2.clbh,XXZLS.CLSL,CLZL.CQDH,XXZLS.LOSS,XXZLS.JGYWSM ,XXZLS.CCQQ,XXZLS.CCQZ,ddzl.pairs');
          SQL.Add('union all');
          SQL.Add('Select zlzls2.xh,ZLZLS2.bwbh+''-'' as bwbh,zlzls2.clbh,max(zlzls2.mjbh) AS mjbh ,');
          SQL.Add('              sum(zlzls2.clsl) AS clsl,(sum(zlzls2.clsl)/ddzl.pairs) AS USAGE,''-----'' AS BWMCY ,');
          SQL.Add('              max(CLZL.ywpm) AS CLMCY ,max(CLZL.dwbh) AS dwbh,XXZLS.LOSS  ,CLZL.CQDH,XXZLS.JGYWSM');
          SQL.Add('              ,XXZLS.CCQQ,XXZLS.CCQZ');
          SQL.Add('from DDZL_zlzls2 AS ZLZLS2');
          SQL.Add('LEFT JOIN BWZL AS BWZL ON ZLZLS2.BWBH = BWZL.bwdh ');
          SQL.Add('LEFT JOIN CLZL AS CLZL ON ZLZLS2.CLBH = CLZL.cldh ');
          SQL.Add('LEFT JOIN DDZL AS DDZL ON ZLZLS2.ZLBH = DDZL.ZLBH ');
          SQL.Add('LEFT JOIN XXZLS AS XXZLS ON DDZL.XIEXING = XXZLS.XIEXING ');
          SQL.Add('         AND DDZL.SHEHAO = XXZLS.SHEHAO AND ZLZLS2.BWBH = XXZLS.BWBH AND ZLZLS2.CLBH = XXZLS.CLBH');
          SQL.Add('LEFT join SHIP_XXZLS on SHIP_XXZLS.XieXing=DDZL.XieXing and SHIP_XXZLS.SheHao=DDZL.SheHao and ZLZLS2.BWBH=SHIP_XXZLS.BWBH');
          SQL.Add('where ZLZLS2.ZLBH=:ZLBH and ZLZLS2.MJBH<>''ZZZZZZZZZZ''');
          SQL.Add('      and (SHIP_XXZLS.tyjh is null or SHIP_XXZLS.tyjh=''N'')');
          SQL.Add('GROUP BY ZLZLS2.XH,zlzls2.zlbh,zlzls2.bwbh,ZLZLS2.clbh,XXZLS.CLSL,CLZL.CQDH,XXZLS.LOSS,XXZLS.JGYWSM ,XXZLS.CCQQ,XXZLS.CCQZ,ddzl.pairs');
          SQL.Add('union all');
          SQL.Add('select ''ZZZ'' as XH, ''ZZZ'' as BWBH,substring(zlzls3.cldhz,2,10) as CLBH,max(substring(zlzls3.cldhz,2,10)) as MJBH, sum(zlzls3.tclyl)as CLSL,');
          SQL.Add('      (sum(zlzls3.tclyl)/DDZL.Pairs) as Usage,''OUTSOLE'' as BWMCY,max(CLZL.YWPM)as CLMCY,max(CLZL.DWBH)as DWBH,NULL as LOSS,''''as CQDH,'''' as JGYWSM,');
          SQL.Add('      '''' as CCQQ,'''' as CCQZ');
          SQL.Add('from '+main.LIY_DD+'.DBO.ZLZLS3 ZLZLS3');
          SQL.Add('left join '+main.LIY_DD+'.DBO.CLZL CLZL ON ZLZLS3.cldhz = CLZL.cldh');
          SQL.Add('left join DDZL on DDZL.DDBH=ZLZLS3.ZLBH1');
          SQL.Add('where zlzls3.zlbh1=:ZLBH');
          SQL.Add('group by substring(zlzls3.cldhz,2,10),zlzls3.ZLBH1,DDZL.Pairs');
          SQL.Add('having sum(zlzls3.tclyl)<>0');
          SQL.Add('union all                 ');
          SQL.Add('SELECT ZLZLS2_YM.XH,ZLZLS2_YM.bwbh ,ZLZLS2_YM.clbh AS clbh ,max(ZLZLS2_YM.mjbh) AS mjbh ,');
          SQL.Add('              sum(ZLZLS2_YM.clsl) AS clsl ,(sum(ZLZLS2_YM.clsl)/ddzl.pairs) AS USAGE,IsNull(max(BWZL.ywsm),''Print'') AS BWMCY ,');
          SQL.Add('              max(CLZL.ywpm) AS CLMCY ,max(CLZL.dwbh) AS dwbh,NULL as LOSS  ,CLZL.CQDH,'''' as JGYWSM');
          SQL.Add('              ,'''' as CCQQ,'''' as CCQZ');
          SQL.Add(' from ZLZLS2_YM');
          SQL.Add(' LEFT JOIN BWZL AS BWZL ON ZLZLS2_YM.BWBH = BWZL.bwdh');
          SQL.Add(' LEFT JOIN CLZL AS CLZL ON ZLZLS2_YM.CLBH = CLZL.cldh');
          SQL.Add(' left join DDZL on DDZL.DDBH=ZLZLS2_YM.ZLBH');
          SQL.Add(' where ZLZLS2_YM.ZLBH=:ZLBH');
          SQL.Add(' GROUP BY ZLZLS2_YM.XH,ZLZLS2_YM.bwbh ,ZLZLS2_YM.clbh,ddzl.pairs,CLZL.CQDH');
          SQL.Add(')zlzls2');
          SQL.Add('group by  zlzls2.XH,zlzls2.bwbh , zlzls2.clbh, zlzls2.mjbh,zlzls2.clsl,');
          SQL.Add('		zlzls2.usage, zlzls2.BWMCY, zlzls2.CLMCY, zlzls2.dwbh, zlzls2.LOSS,zlzls2.CQDH, zlzls2.JGYWSM,zlzls2.CCQQ, zlzls2.CCQZ');
          SQL.Add('ORDER BY  zlzls2.bwbh asc');
          SQL.Add('');
          SQL.Add('update #Material');
          SQL.Add('set CLMCY=CLMCY+JGYWSM');
          SQL.Add('where JGYWSM is not Null');
          SQL.Add('');
          SQL.Add('update #Material');
          SQL.Add('set CLMCY=CLMCY+''(''+CCQQ+''-''');
          SQL.Add('where CCQQ >'' ''');
          SQL.Add('');
          SQL.Add('update #Material');
          SQL.Add('set CLMCY=CLMCY+CCQZ+'')''');
          SQL.Add('where CCQZ >'' ''');
          SQL.Add('');
          SQL.Add(' select * from #Material');
          SQL.Add('order by BWBH');
          active:=true;
        end;
        //
        D_PSPecPrintss_SP.MemoOth.DataSource:=DS1;
        D_PSPecPrintss_SP.TitleMemo.Active:=true;
        //
        D_PSPecPrintss_SP.QRCompositeReport1.prepare;
        i:=D_PSPecPrintss_SP.QuickRep2.QRPrinter.pagecount ;
        D_PSPecPrintss_SP.PageN1.Caption:='/  '+inttostr(i);
        D_PSPecPrintss_SP.PageN2.Caption:='/  '+inttostr(i);
        D_PSPecPrintss_SP.PageN3.Caption:='/  '+inttostr(i);
        D_PSPecPrintss_SP.Fac1.Caption:=D_PSPecPrintss_SP.Fac1.Caption+main.Edit2.Text;
        D_PSPecPrintss_SP.Fac2.Caption:=D_PSPecPrintss_SP.Fac2.Caption+main.Edit2.Text;
        D_PSPecPrintss_SP.Fac3.Caption:=D_PSPecPrintss_SP.Fac3.Caption+main.Edit2.Text;
        try
          // 圖片加載不論是否成功都要打印
          shoePic:=D_PSPecPrintss_SP.TitleMemo.fieldbyname('IMGName').AsString  ;
          if FileExists(shoePic)=true then
          begin
            D_PSPecPrintss_SP.QRImage1.Picture.LoadFromFile(shoePic);
            D_PSPecPrintss_SP.QRImage2.Picture.LoadFromFile(shoePic);
            D_PSPecPrintss_SP.QRImage3.Picture.LoadFromFile(shoePic);
          end else
          begin
            shoePic:=StringReplace(shoePic,'H:',ShoePicPath, [rfReplaceAll, rfIgnoreCase]);
            if FileExists(shoePic)=true then
            begin
              D_PSPecPrintss_SP.QRImage1.Picture.LoadFromFile(shoePic);
              D_PSPecPrintss_SP.QRImage2.Picture.LoadFromFile(shoePic);
              D_PSPecPrintss_SP.QRImage3.Picture.LoadFromFile(shoePic);
            end;
          end;
          //
          D_PSPecPrintss_SP.QRCompositeReport1.Preview;
          D_PSPecPrintss_SP.Close;
        except
          showmessage('No picture of article.');
          D_PSPecPrintss_SP.QRCompositeReport1.Preview;
         end ;
      end;
   end else
   begin
      //showmessage('A');
      D_PSpecPrintssTW:=TD_PSpecPrintssTW.create(nil);
      //20150610 weston 增加修改
      D_PSpecPrintssTW.MemoTemp.DataSource:=DS1;
      D_PSpecPrintssTW.Titlememo.DataSource:=DS1;
      D_PSpecPrintssTW.QMatList.DataSource:=DS1;
      D_PSpecPrintssTW.MemoOth.DataSource:=DS1;
      D_PSpecPrintssTW.TitleMemo.Active:=true;
      //
      D_PSpecPrintssTW.QRCompositeReport1.prepare;
      i:=D_PSpecPrintssTW.QuickRep2.QRPrinter.pagecount ;
      D_PSpecPrintssTW.PageN1.Caption:='/  '+inttostr(i);
      D_PSpecPrintssTW.PageN2.Caption:='/  '+inttostr(i);
      D_PSpecPrintssTW.PageN3.Caption:='/  '+inttostr(i);
      D_PSpecPrintssTW.Fac1.Caption:=D_PSpecPrintssTW.Fac1.Caption+main.Edit2.Text;
      D_PSpecPrintssTW.Fac2.Caption:=D_PSpecPrintssTW.Fac2.Caption+main.Edit2.Text;
      D_PSpecPrintssTW.Fac3.Caption:=D_PSpecPrintssTW.Fac3.Caption+main.Edit2.Text;
      try
        // 圖片加載不論是否成功都要打印
        shoePic:=D_PSpecPrintssTW.TitleMemo.fieldbyname('IMGName').AsString  ;
        if FileExists(shoePic)=true then
        begin
          D_PSpecPrintssTW.QRImage1.Picture.LoadFromFile(shoePic);
          D_PSpecPrintssTW.QRImage2.Picture.LoadFromFile(shoePic);
          D_PSpecPrintssTW.QRImage3.Picture.LoadFromFile(shoePic);
        end else
        begin
          shoePic:=StringReplace(shoePic,'H:',ShoePicPath, [rfReplaceAll, rfIgnoreCase]);
          if FileExists(shoePic)=true then
          begin
            D_PSpecPrintssTW.QRImage1.Picture.LoadFromFile(shoePic);
            D_PSpecPrintssTW.QRImage2.Picture.LoadFromFile(shoePic);
            D_PSpecPrintssTW.QRImage3.Picture.LoadFromFile(shoePic);
          end;
        end;
        D_PSpecPrintssTW.QRCompositeReport1.Preview;
        D_PSpecPrintssTW.Close;
      except
        showmessage('No picture of article.');
        D_PSpecPrintssTW.QRCompositeReport1.Preview;
      end;
   end;
end;
procedure TDDZL_BOMM.Print_OutsoleSpec();
begin
  R_PSepcRintss:=TR_PSepcRintss.Create(nil);
  R_PSepcRintss.Titlememo.DataSource:=DS1;
  R_PSepcRintss.TitleMemo.Active:=true;
  //
  R_PSepcRintss.QRCompositeReport1.prepare;
  R_PSepcRintss.QRCompositeReport1.Preview;
  R_PSepcRintss.Close;
end;
procedure TDDZL_BOMM.bbt5Click(Sender: TObject);
begin
  if XXZL.FieldByName('Flag').AsString='SHOE' then  Print_ShoeSpec();
  if XXZL.FieldByName('Flag').AsString='OUTSOLE' then  Print_OutsoleSpec();
end;

procedure TDDZL_BOMM.XXZLAfterOpen(DataSet: TDataSet);
begin
  if XXZL.RecordCount>0 then
     bbt5.Enabled:=true
  else
     bbt5.Enabled:=false;
end;

procedure TDDZL_BOMM.TitlememoAfterOpen(DataSet: TDataSet);
var a,b,c,d,e,f,g,Qty:string;
begin
  //表頭工具數據的准備＊＊
  f:= TitleMemo.fieldbyname('DDBH').value;
  with TempSQL do
  begin
      //計算訂單總數量
    active:=false;
    sql.clear;
    sql.add('select DDBH,sum(Quantity) as Qty from DDZLS where DDBH='+''''+f+''''+'group by DDBH');
    active:=true;
    Qty:=inttostr(TempSQL.fieldbyname('Qty').value);
    active:=false;
  end;
  // 取主表相關信息  備用
    a:=TitleMemo.fieldbyname('DDCC').value  ;
    b:=TitleMemo.fieldbyname('BOMCC').value;
    e:=TitleMemo.fieldbyname('XieXing').value;
    //取SKU資料與XXZLSVNS2比對判斷是否列印前包頭  edit by Gary 2014.03.18
    g:=TitleMemo.fieldbyname('Article').value;
    c:=a;
    d:=b;
     //找出所有國別尺寸的對應關係
    if a='K' then
      begin
        a:='XXZLS3.UK_Size as DDCC,';
        c:='UK';
      end;
    if a='J' then
    begin
      a:='XXZLS3.JPN_Size as DDCC,';
      c:='JPN';
    end;
    if a='E' then
    begin
      a:='XXZLS3.EUR_Size as DDCC,';
      c:='EUR';
    end;
    if a='F' then
    begin
      a:='XXZLS3.FRN_Size as DDCC,';
      c:='FRN';
    end;
    if a='M' then
    begin
      a:='XXZLS3.MX_Size as DDCC,';
      c:='MX';
    end;
    if a='U' then
    begin
      a:='XXZLS3.US_Size as DDCC,';
      c:='US';
    end;
    if a='O' then
    begin
      a:='XXZLS3.OTH_Size as DDCC,';
      C:='OTH';
    end;
    if b='K' then
      b:='XXZLS3.UK_Size as BOMCC';
      d:='UK';
    if b='J' then
    begin
      b:='XXZLS3.JPN_Size as BOMCC';
      d:='JPN';
    end;
    if b='E' then
    begin
      b:='XXZLS3.EUR_Size as BOMCC';
      d:='EUR';
    end;
    if b='F' then
    begin
      b:='XXZLS3.FRN_Size as BOMCC';
      d:='FRN';
    end;
    if b='M' then
    begin
      b:='XXZLS3.MX_Size as BOMCC';
      d:='MX';
    end;
    if b='U' then
    begin
      b:='XXZLS3.US_Size as BOMCC';
      d:='US';
    end;
    if b='O' then
    begin
      b:=' XXZLS3.OTH_Size as BOMCC';
      d:='OTH';
    end;
  with TempSQL do
  begin
    active:=false;
    sql.clear;  //  判斷臨時表是否存在,否則刪除
    sql.add('  if object_id(''tempdb..#XXCC'') is not null  ');
    sql.add('begin   drop table #XXCC end   ');
    sql.add('if object_id(''tempdb..#CC'') is not null  ');
    sql.add('  begin   drop table #CC  end  ');

    //找出表頭的所有對應數據
    sql.add('select DDZL.DDBH,'+a+b);
    sql.add('into #XXCC from  XXZLS3 ');
    sql.add('left join DDZL on DDZL.XieXing=XXZLS3.XieXing');
    sql.add('where DDZL.DDBH=');
    sql.add(''''+ f+'''');

    //訂單號碼明細
    sql.add('select 7 as NO,'+''''+'Quantity  '+''''+' as DDType,'+''''+Qty+' '+''''+' as SizeType,#XXCC.BOMCC,');
    sql.Add(' convert(varchar(5),DDZLS.Quantity) as DDCC into #CC from #XXCC ');
    sql.add('left join DDZLS on DDZLS.DDBH=#XXCC.DDBH and DDZLS.CC=#XXCC.DDCC');
    //訂單號碼數量
    sql.add('insert #CC  select 0 as NO, '+''''+'OrderSize'+''''+' as DDType,'+''''+c+''''+' as SizeType, #XXCC.BOMCC,#XXCC.DDCC from #XXCC ');
    //鞋型號碼
    sql.add('insert #CC  select 1 as NO, '+''''+'Article'    +''''+' as DDType,'+''''+d+''''+' as SizeType, #XXCC.BOMCC,#XXCC.BOMCC as DDCC from #XXCC');
    //楦頭號碼對應
    sql.add('insert #CC select  2 as NO,'+''''+'LAST'+''''+' as DDType,'+''''+'    '+''''+' as SizeType,XXGJS.XXCC as BOMCC,XXGJS.GJCC as DDCC');
    sql.add(' from XXGJS  where  XXGJS.GJLB='+''''+'100'+''''+'and XXGJS.XieXing='+''''+e+'''');
    //大底號碼對應
    sql.add('insert #CC select  3 as NO,'+''''+'OUTSOLE'+''''+'as DDType,'+''''+'    '+''''+' as SizeType,XXGJS.XXCC as BOMCC,XXGJS.GJCC as DDCC');
    sql.add(' from XXGJS  where XXGJS.GJLB='+''''+'101'+''''+'and XXGJS.XieXing='+''''+e+'''');
    //中底號碼對應
    sql.add('insert #CC select  4 as NO,'+''''+'WEDGE'+''''+'as DDType,'+''''+'    '+''''+' as SizeType,XXGJS.XXCC as BOMCC,XXGJS.GJCC as DDCC');
    sql.add(' from XXGJS  where  XXGJS.GJLB='+''''+'102'+''''+'and XXGJS.XieXing='+''''+e+'''');
    //斬刀號碼對應
    sql.add('insert #CC select  5 as NO,'+''''+'CUT DIE'+''''+'as DDType,'+''''+'    '+''''+' as SizeType,XXGJS.XXCC as BOMCC,XXGJS.GJCC as DDCC');
    sql.add(' from XXGJS  where  XXGJS.GJLB='+''''+'200'+''''+'and XXGJS.XieXing='+''''+e+'''');
    //前包頭對應
    sql.add('insert #CC select  6 as NO,'+''''+'TOE CAP'+''''+'as DDType,'+''''+'    '+''''+' as SizeType,XXGJS.XXCC as BOMCC,XXGJS.GJCC as DDCC');
    sql.add('from XXGJS');
    sql.add('left join XXZLSVNS2 on xxgjs.XieXing = XXZLSVNS2.XieXing');
    sql.add('where  XXZLSVNS2.Article='+''''+g+''' and XXGJS.GJLB='+''''+'280'+''''+'and XXGJS.XieXing='+''''+e+'''');
    //sql.add('select * from #CC ');
    //specprint.memo1.Text:=sql.Text;
    //funcobj.WriteErrorLog(sql.Text);
    execsql;
    //active:=true;
  end;
  //做交叉表
  with TempSQL do
  begin
    Active:=false;
    SQL.Clear;
    sql.add('select BOMCC  from #CC where DDType=''Quantity'' order by BOMCC' );
    active:=true;
  end;
  TempSQL.first;
  with  GJTable do   //交叉主表　
  begin
    active:=false;
    sql.clear;
    sql.add('select NO,DDType,SizeType');
    while not TempSQL.eof do
    begin
        a:=TempSQL.fieldbyname('BOMCC').asstring;
        sql.add(',max(case when BOMCC='''+a+'''');
        sql.add('and DDCC<>''0'' then DDCC else '''' end ) as '''+a+'''');
        TempSQL.Next;
    end;
    sql.add(' from #CC');
    sql.add(' group by NO,DDType,SizeType');
    sql.add('order by NO  ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  //
end;
procedure TDDZL_BOMM.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
 begin
  if XXZLS.active  then
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
        for   i:=0   to   XXZLS.fieldCount-1   do
        begin
          eclApp.Cells(1,i+1):=XXZLS.fields[i].FieldName;
        end;

        XXZLS.First;
        j:=2;
        while   not   XXZLS.Eof   do
        begin
          for   i:=0   to   XXZLS.FieldCount-1   do
          begin
            eclApp.Cells(j,i+1):=XXZLS.Fields[i].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
          XXZLS.Next;
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

procedure TDDZL_BOMM.bbt7Click(Sender: TObject);
var  eclApp,WorkBook:olevariant;
     i,j,k:integer;
     CLBH:string;
begin
   if XXZL.FieldByName('Flag').AsString='OUTSOLE' then
   begin
     Showmessage('Outsole Spec not support');
     Exit;
   end;
   Titlememo.Open;
   with QMatList do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add(' SELECT ZLZLS2.bwbh ,zlzls2.clbh AS clbh, ');
     SQL.Add(' sum(zlzls2.clsl) AS clsl,ROUND((sum(zlzls2.clsl)/ddzl.pairs),4) AS USAGE,max(BWZL.ywsm) AS BWMCY , ');
     SQL.Add(' max(CLZL.ywpm) AS CLMCY,max(CLZL.dwbh) AS dwbh,XXZLS.LOSS  ,CLZL.CQDH');
     SQL.Add(' FROM DDZL_ZLZLS2 AS ZLZLS2');
     SQL.Add(' LEFT JOIN BWZL AS BWZL ON ZLZLS2.BWBH = BWZL.bwdh ');
     SQL.Add(' LEFT JOIN CLZL AS CLZL ON ZLZLS2.CLBH = CLZL.cldh ');
     SQL.Add(' LEFT JOIN DDZL AS DDZL ON ZLZLS2.ZLBH = DDZL.ZLBH ');
     SQL.Add(' LEFT JOIN XXZLS AS XXZLS ON DDZL.XIEXING = XXZLS.XIEXING ');
     SQL.Add('           AND DDZL.SHEHAO = XXZLS.SHEHAO AND ZLZLS2.BWBH = XXZLS.BWBH ');
     SQL.Add(' left join SHIP_XXZLS on SHIP_XXZLS.XieXing=DDZL.XieXing and SHIP_XXZLS.SheHao=DDZL.SheHao and ZLZLS2.BWBH=SHIP_XXZLS.BWBH ');
     SQL.Add(' where ZLZLS2.ZLBH='+''''+XXZL.fieldbyname('ZLBH').AsString+'''');
     SQL.Add(' and (SHIP_XXZLS.tyjh is null or SHIP_XXZLS.tyjh=''N'')');
     SQL.Add(' GROUP BY zlzls2.zlbh,zlzls2.bwbh,zlzls2.clbh,XXZLS.CLSL,CLZL.CQDH,XXZLS.LOSS,ddzl.pairs ');
     SQL.Add(' ORDER BY zlzls2.zlbh, zlzls2.bwbh ASC ');
     Active:=true;
   end;
   with TempSQL do
   begin
     active:=false;
     sql.clear;
     sql.add('select DDBH,sum(Quantity) as Qty from DDZLS where DDBH='+''''+XXZL.fieldbyname('ZLBH').AsString+'''');
     sql.add('group by DDBH');
     active:=true;
   end;
  //
  if FileExists(AppDir+'Additional\Shipping_N34.xls')=false  then
  begin
     if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Shipping_N34.xls'),Pchar(AppDir+'Additional\Shipping_N34.xls'),false);
  end;
  if FileExists(AppDir+'Additional\Shipping_N34.xls') then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      eclApp.WorkBooks.Open(AppDir+'Additional\Shipping_N34.xls');
      eclApp.WorkSheets[1].Activate;//第一頁為主
      //抬頭資訊
      eclApp.Cells(3,1):='ORDER#: '+Titlememo.FieldByName('ZLBH').asstring;//訂單資訊
      eclApp.Cells(4,1):='PO#: '+Titlememo.FieldByName('KHPO').asstring;// KHPO
      eclApp.Cells(6,1):='DEST: '+Titlememo.FieldByName('YWSM').asstring;//國別
      //
      eclApp.Cells(3,8):='ARTNAME: '+Titlememo.FieldByName('XieMing').asstring;
      eclApp.Cells(4,8):='ARTICLE: '+XXZL.FieldByName('Article').asstring;
      eclApp.Cells(5,8):='COLOR: '+XXZL.FieldByName('XieXing').asstring+' '+XXZL.FieldByName('SheHao').asstring;
      eclApp.Cells(6,8):='COLOR DESC: '+Titlememo.FieldByName('YSSM').asstring;
      //
      eclApp.Cells(3,22):='GAC: '+Titlememo.FieldByName('ShipDate').asstring;
      eclApp.Cells(4,22):='STA SIZE: '+Titlememo.FieldByName('BZCC').asstring;
      eclApp.Cells(5,22):='LAST: '+Titlememo.FieldByName('XTMH').asstring;
      eclApp.Cells(6,22):='CUT DIE: '+Titlememo.FieldByName('DAOMH').asstring;
      // Size Run
      for i:=0 to Gjtable.RecordCount-1 do
      begin
        eclApp.Cells(7+i,1):=Gjtable.FieldByName('DDType').AsString;
        if Gjtable.FieldByName('DDType').AsString='Quantity' then
        begin
          eclApp.Cells(7+i,2):=TempSQL.FieldByName('Qty').AsString;
        end;
        for j:=0 to Gjtable.FieldCount-1-3 do
          eclApp.Cells(7+i,4+j):=Gjtable.Fields[j+3].AsString;
        Gjtable.Next;
      end;
      for i:=0 to QMatList.RecordCount-1 do
      begin
        eclApp.Cells(15+i,1):=QMatList.FieldByName('BWBH').AsString;
        eclApp.Cells(15+i,2):=QMatList.FieldByName('BWMCY').AsString;
        eclApp.Cells(15+i,6):=QMatList.FieldByName('CLBH').AsString;
        eclApp.Cells(15+i,8):=QMatList.FieldByName('CLMCY').AsString;
        eclApp.Cells(15+i,23):=QMatList.FieldByName('DWBH').AsString;
        eclApp.Cells(15+i,24):=QMatList.FieldByName('LOSS').AsString;
        eclApp.Cells(15+i,26):=QMatList.FieldByName('USAGE').AsString;
        eclApp.Cells(15+i,28):=QMatList.FieldByName('CLSL').AsString;
        QMatList.Next;
      end;
      showmessage('Succeed');
      Titlememo.close;
      Gjtable.Active:=false;
      QMatList.Active:=false;
      TempSQL.Active:=false;
      eclApp.Visible:=True;
    except
        on   F:Exception   do
          showmessage(F.Message);
    end;
    //
  end;

end;

end.
