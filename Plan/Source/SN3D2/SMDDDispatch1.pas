unit SMDDDispatch1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, GridsEh, DBGridEh, DB, DBTables,
  DBCtrls, Buttons, Comobj, PrnDBGeh, PrViewEh, Printers;

type
  TSMDDDispatch = class(TForm)
    Panel4: TPanel;
    Label8: TLabel;
    DDBHEdit: TEdit;
    CheckBox1: TCheckBox;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    Button1: TButton;
    Label1: TLabel;
    BDepEdit: TEdit;
    SMDDQry: TQuery;
    DS1: TDataSource;
    SMDDQryYSBH: TStringField;
    SMDDQryARTICLE: TStringField;
    SMDDQryDDGB: TStringField;
    SMDDQryPairs: TIntegerField;
    SMDDQryYSSM: TStringField;
    SMDDQryDAOMH: TStringField;
    SMDDQryXTMH: TStringField;
    SMDDQryID: TStringField;
    SMDDQryDepName: TStringField;
    SMDDQryPlanDate: TDateTimeField;
    DDZLSQry: TQuery;
    DS2: TDataSource;
    Qtemp: TQuery;
    SMDDQryXieXing: TStringField;
    SMDDQrySheHao: TStringField;
    Button2: TButton;
    SMDDSQry: TQuery;
    DS3: TDataSource;
    Button3: TButton;
    BitBtn1: TBitBtn;
    Label13: TLabel;
    GXLBCombo: TComboBox;
    SMDDQryBUYNO: TStringField;
    PrintDBGridEh1: TPrintDBGridEh;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    Splitter1: TSplitter;
    Panel1: TPanel;
    DBGridEh2: TDBGridEh;
    Panel2: TPanel;
    Splitter2: TSplitter;
    Panel3: TPanel;
    Splitter3: TSplitter;
    DBGridEh1: TDBGridEh;
    DBGridEh3: TDBGridEh;
    Panel6: TPanel;
    Label6: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Label5: TLabel;
    DBText4: TDBText;
    Label7: TLabel;
    DBText5: TDBText;
    Label9: TLabel;
    DBText6: TDBText;
    Label10: TLabel;
    DBText7: TDBText;
    Label11: TLabel;
    DBText8: TDBText;
    Label12: TLabel;
    DBText9: TDBText;
    DBGridEh4: TDBGridEh;
    SMDDListQry: TQuery;
    DS4: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SMDDQryAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure PrintDBGridEh1BeforePrint(Sender: TObject);
  private
    AppDir:String;
    IsShowDetail:boolean;
    { Private declarations }
    procedure ShowSizeRun();
    procedure ShowCycleRun();
    //
    procedure ExportExcel_Order();
    procedure ExportExcel_List();
  public
    { Public declarations }
  end;

var
  SMDDDispatch: TSMDDDispatch;

implementation
  uses main1, SMDDDispatch_DepID1, SMDDDispatch_print1, FunUnit;
{$R *.dfm}

procedure TSMDDDispatch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TSMDDDispatch.FormDestroy(Sender: TObject);
begin
  SMDDDispatch:=nil;
end;



procedure TSMDDDispatch.ShowSizeRun();
var i:integer;
begin
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('if object_id(''tempdb..#XXCC'') is not null  ');
    SQL.Add('begin   drop table #XXCC end   ');
    SQL.Add('if object_id(''tempdb..#CC'') is not null  ');
    SQL.Add('  begin   drop table #CC  end  ');
    SQL.Add('select DDZL.DDBH,XXZLS3.US_Size as DDCC,XXZLS3.US_Size as BOMCC');
    SQL.Add('into #XXCC from  DDZLS,XXZLS3,DDZL where DDZL.DDBH=DDZLS.DDBH and DDZLS.CC=XXZLS3.US_Size and DDZL.XieXing=XXZLS3.XieXing and DDZL.DDBH='''+SMDDQry.FieldByName('YSBH').AsString+'''  ');
    SQL.Add('select 1 as NO,''Quantity  '' as DDType,'''+SMDDQry.FieldByName('Pairs').AsString+''' as SizeType,#XXCC.BOMCC, convert(varchar(6),DDZLS.Quantity) as DDCC ');
    SQL.Add('into #CC from #XXCC left join DDZLS on DDZLS.DDBH=#XXCC.DDBH and DDZLS.CC=#XXCC.DDCC');
    SQL.Add('');
    SQL.Add('insert #CC  select 0 as NO, ''OrderSize'' as DDType,''US'' as SizeType, #XXCC.BOMCC,#XXCC.DDCC from #XXCC ');
    SQL.Add('insert #CC select  2 as NO,''LastSize'' as DDType,''    '' as SizeType,XXGJS.XXCC as BOMCC,XXGJS.GJCC as DDCC');
    SQL.Add(' from XXGJS  where  XXGJS.GJLB=''100''and XXGJS.XieXing='''+SMDDQry.FieldByName('XieXing').AsString+''' ');
    //楦頭輪次表
    SQL.Add('insert #CC');
    SQL.Add('SELECT 3 as NO, A.XTMH as DDType,''    '' as SizeType,A.XXCC as BOMCC,Max(ISNULL(A.Qty,0)+IsNull(A1.Qty,0)+IsNull(A2.Qty,0)+IsNull(A3.Qty,0)) as  DDCC');
    SQL.Add('FROM( ');
    SQL.Add('  Select SMDD.YSBH,SMDD.DDBH,SMDDS.XXCC, SMDD.XH as Seq,SMDDS.Qty,XXZL.XTMH from SMDDS ');
    SQL.Add('  left join SMDD on SMDD.DDBH=SMDDS.DDBH and SMDD.GXLB='''+GXLBCombo.Text+'''  ');
    SQL.Add('  left join DDZL on DDZL.DDBH=SMDD.YSBH');
    SQL.Add('  left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.Shehao=DDZL.SheHao');
    SQL.Add('  where 1=1  and SMDD.DDBH like '''+SMDDQry.FieldByName('YSBH').AsString+'%''   ');
    if CheckBox1.Checked=true then
    begin
      SQL.add(' and  convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between ');
      SQL.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    SQL.Add('  ) A');
    SQL.Add('LEFT JOIN (  ');
    SQL.Add('  select * from (');
    SQL.Add('  Select SMDD.YSBH,SMDD.DDBH,SMDDS.XXCC, SMDD.XH-1 as Seq,SMDDS.Qty,XXZL.XTMH from SMDDS ');
    SQL.Add('  left join SMDD on SMDD.DDBH=SMDDS.DDBH and SMDD.GXLB='''+GXLBCombo.Text+'''  ');
    SQL.Add('  left join DDZL on DDZL.DDBH=SMDD.YSBH');
    SQL.Add('  left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.Shehao=DDZL.SheHao');
    SQL.Add('  where 1=1  and SMDD.DDBH like '''+SMDDQry.FieldByName('YSBH').AsString+'%''    ');
    if CheckBox1.Checked=true then
    begin
      SQL.add(' and  convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between ');
      SQL.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    SQL.Add('  ) SMDDS where Seq>0 ) A1  on A1.YSBH=A.YSBH and A1.XXCC=A.XXCC and A1.Seq=A.Seq');
    SQL.Add('LEFT JOIN (  ');
    SQL.Add('  select * from (');
    SQL.Add('  Select SMDD.YSBH,SMDD.DDBH,SMDDS.XXCC, SMDD.XH-2 as Seq,SMDDS.Qty,XXZL.XTMH from SMDDS ');
    SQL.Add('  left join SMDD on SMDD.DDBH=SMDDS.DDBH and SMDD.GXLB='''+GXLBCombo.Text+'''  ');
    SQL.Add('  left join DDZL on DDZL.DDBH=SMDD.YSBH');
    SQL.Add('  left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.Shehao=DDZL.SheHao');
    SQL.Add('  where 1=1  and SMDD.DDBH like '''+SMDDQry.FieldByName('YSBH').AsString+'%''    ');
    if CheckBox1.Checked=true then
    begin
      SQL.add(' and  convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between ');
      SQL.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    SQL.Add('   ) SMDDS where Seq>0 ) A2  on A2.YSBH=A.YSBH and A2.XXCC=A.XXCC and A2.Seq=A.Seq');
    SQL.Add('LEFT JOIN (  ');
    SQL.Add('  select * from (');
    SQL.Add('  Select SMDD.YSBH,SMDD.DDBH,SMDDS.XXCC, SMDD.XH-3 as Seq,SMDDS.Qty,XXZL.XTMH from SMDDS ');
    SQL.Add('  left join SMDD on SMDD.DDBH=SMDDS.DDBH and SMDD.GXLB='''+GXLBCombo.Text+'''  ');
    SQL.Add('  left join DDZL on DDZL.DDBH=SMDD.YSBH');
    SQL.Add('  left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.Shehao=DDZL.SheHao');
    SQL.Add('  where 1=1  and  SMDD.DDBH like '''+SMDDQry.FieldByName('YSBH').AsString+'%''    ');
    if CheckBox1.Checked=true then
    begin
      SQL.add(' and  convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between ');
      SQL.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    SQL.Add('  ) SMDDS where Seq>0 ) A3  on A3.YSBH=A.YSBH and A3.XXCC=A.XXCC and A3.Seq=A.Seq');
    SQL.Add('GROUP BY A.XTMH,A.XXCC');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
  end;
  //
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    sql.add('select BOMCC  from #CC where DDType=''Quantity'' order by BOMCC' );
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  //
  with DDZLSQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.add('select NO,DDType,SizeType');
    while not Qtemp.Eof do
    begin
        SQL.add(',max(case when BOMCC='''+Qtemp.fieldbyname('BOMCC').AsString+''' ');
        SQL.add('and DDCC<>''0'' then DDCC else '''' end ) as '''+Qtemp.fieldbyname('BOMCC').AsString+''' ');
        Qtemp.Next;
    end;
    SQL.add(' from #CC');
    SQL.add(' group by NO,DDType,SizeType');
    SQL.add('order by NO  ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  Qtemp.Active:=false;
  //
  DBGrideh3.Columns[0].Visible:=false;
  DBGrideh3.Columns[1].Width:=70;
  DBGrideh3.Columns[2].Width:=50;
  for i:=3 to DDZLSQry.FieldCount-1 do
  begin
    DBGridEh3.Columns[i].Width:=35;
  end;
end;

procedure TSMDDDispatch.ShowCycleRun();
var i:integer;
begin
  //
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    sql.add('select BOMCC as XXCC from #CC where DDType=''Quantity'' order by BOMCC' );
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  //
  with SMDDSQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select SMDD.DepName,SMDD.PlanDate,SMDD.DDBH');
    SQL.Add(' ,Sum(Qty) as ''Total'' ');
    Qtemp.First;
    while not Qtemp.Eof do
    begin
      SQL.add(' ,max(case when XXCC='''+Qtemp.fieldbyname('XXCC').AsString+''' then Qty else null end) as '''+Qtemp.fieldbyname('XXCC').AsString+''' ');
      Qtemp.Next;
    end;

    SQL.Add('from (');
    SQL.Add('Select SMDD.*,BDepartment.DepName from ( ');
    SQL.Add('Select Convert(Varchar,RIGHT(1000+SMDD.XH,3)) as DDBH,SMDD.DepNO,SMDD.PlanDate,SMDDS.XXCC,SMDDS.Qty ');
    SQL.Add('from SMDD,SMDDS');
    SQL.Add('where  SMDD.YSBH='''+SMDDQry.FieldByName('YSBH').AsString+''' and SMDD.GXLB='''+GXLBCombo.Text+''' and SMDDS.DDBH=SMDD.DDBH');
    if CheckBox1.Checked=true then
    begin
      SQL.add(' and  convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between ');
      SQL.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    SQL.Add(') SMDD left join BDepartment on BDepartment.ID=SMDD.DepNO ');
    SQL.Add(') SMDD');
    SQL.Add('Group by SMDD.DepName,SMDD.PlanDate,SMDD.DDBH');
    SQL.Add('Union all ');
    SQL.Add('Select null as DepName, null as PlanDate,''Total'' as DDBH ');
    SQL.Add(' ,Sum(Qty) as ''Total'' ');
    Qtemp.First;
    while not Qtemp.Eof do
    begin
      SQL.add(' ,Sum(case when XXCC='''+Qtemp.fieldbyname('XXCC').AsString+''' then Qty else null end) as '''+Qtemp.fieldbyname('XXCC').AsString+''' ');
      Qtemp.Next;
    end;
    SQL.Add('from (');
    SQL.Add('Select Convert(Varchar,RIGHT(1000+SMDD.XH,3)) as DDBH,SMDDS.XXCC,SMDDS.Qty ');
    SQL.Add('from SMDD,SMDDS');
    SQL.Add('where  SMDD.YSBH='''+SMDDQry.FieldByName('YSBH').AsString+''' and SMDD.GXLB='''+GXLBCombo.Text+''' and SMDDS.DDBH=SMDD.DDBH');
    if CheckBox1.Checked=true then
    begin
      SQL.add(' and  convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between ');
      SQL.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    SQL.Add(') SMDD');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  Qtemp.Active:=false;
  //
  DBGrideh1.Columns[0].Width:=100;
  DBGrideh1.Columns[1].Width:=50;
  TDatefield(SMDDSQry.Fields[1]).displayformat:='MM/dd' ;
  DBGrideh1.Columns[2].Width:=50;
  for i:=3 to SMDDSQry.FieldCount-1 do
  begin
    DBGridEh1.Columns[i].Width:=35;
  end;

end;
procedure TSMDDDispatch.Button1Click(Sender: TObject);
var i:integer;
begin
  //
  if PC1.ActivePageIndex=0 then
  begin
    IsShowDetail:=false;
    with SMDDQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select SMDD.YSBH,SMDD.PlanDate,DDZL.XieXing,DDZL.SheHao,DDZL.ARTICLE,DDZL.DDGB,DDZL.Pairs,DDZL.BUYNO,XXZL.YSSM,XXZL.DAOMH,XXZL.XTMH,BDepartment.ID,BDepartment.DepName ');
      SQL.Add('from (Select YSBH as YSBH,Min(DepNO) as DepNo,Min(PlanDate) as PlanDate ');
      SQL.Add('      from SMDD ');
      SQL.Add('	  left join BDepartment on BDepartment.ID=SMDD.DepNO');
      SQL.Add('	  where SMDD.GXLB='''+GXLBCombo.Text+''' and SMDD.DDBH like '''+DDBHEdit.Text+'%'' ');
      if CheckBox1.Checked=true then
      begin
        SQL.add(' and  convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between ');
        SQL.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
      end;
      if BDepEdit.Text<>'' then
      SQL.Add('   and BDepartment.DepName like ''%'+BDepEdit.Text+'%'' ');
      SQL.Add('	  Group by YSBH');
      SQL.Add('     ) SMDD ');
      SQL.Add('left join DDZL on DDZL.DDBH=SMDD.YSBH');
      SQL.Add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
      SQL.Add('left join BDepartment on BDepartment.ID=SMDD.DepNO');
      //
      Active:=true;
      //Active:=true;
    end;
    IsShowDetail:=true;
    ShowSizeRun();
    ShowCycleRun();
  end else
  begin
    with SMDDListQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('');
    end;

    if ((DDBHEdit.Text='') and (CheckBox1.Checked=false)) then
    begin
      Showmessage('Pls select PlanDate or Order first.');
      abort;
    end;
    with Qtemp do
    begin
      active:=false;
      sql.Clear;
      sql.add('select distinct ZLZLS.ZLCC,SMDDS.XXCC from SMDDS  ');
      sql.add('left join SMDD on SMDD.DDBH=SMDDS.DDBH ');
      sql.add('left join ZLZLS on ZLZLS.ZLBH=SMDD.YSBH and ZLZLS.XXCC=SMDDS.XXCC');
      sql.Add('left join BDepartment on BDepartment.id = smdd.depno');
      SQL.Add('where SMDD.GXLB='''+GXLBCombo.Text+''' and SMDD.DDBH like '''+DDBHEdit.Text+'%'' ');
      if CheckBox1.Checked=true then
      begin
        SQL.add(' and  convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between ');
        SQL.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
      end;
      if BDepEdit.Text<>'' then
      SQL.Add('   and BDepartment.DepName like ''%'+BDepEdit.Text+'%'' ');
      sql.add('order by  SMDDS.XXCC DESC');
      active:=true;
    end;

    with SMDDListQry do
    begin
      Qtemp.first;
      active:=false;
      sql.Clear;
      sql.add('select SMDD.DDBH as OrderNo,SMDD.Article,XXZL.DAOMH as CutDie,SMDD.PlanDate,SMDD.Qty as Qty');
      while not Qtemp.Eof do
      begin
        sql.add(',Max(case  when SMDDS.XXCC='+''''+Qtemp.fieldbyname('XXCC').value+'''');
        sql.add(' then SMDDS.Qty else null end) as '''+Qtemp.fieldbyname('XXCC').value+''' ');
        Qtemp.Next;
      end;
      Qtemp.Active:=false;
      sql.add('from SMDDS ');
      sql.add('left join SMDD on SMDD.DDBH=SMDDS.DDBH ');
      sql.add('left join DDZL on SMDD.YSBH=DDZL.DDBH ');
      sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZL.Shehao=XXZL.SheHao ');
      sql.Add('left join BDepartment on BDepartment.id = SMdd.depno');
      SQL.Add('where SMDD.GXLB='''+GXLBCombo.Text+''' and SMDD.DDBH like '''+DDBHEdit.Text+'%'' ');
      if CheckBox1.Checked=true then
      begin
        SQL.add(' and  convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between ');
        SQL.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
      end;
      if BDepEdit.Text<>'' then
      SQL.Add('   and BDepartment.DepName like ''%'+BDepEdit.Text+'%'' ');
      sql.add('group by SMDD.DDBH,SMDD.Article,XXZL.DAOMH,SMDD.PlanDate,SMDD.Qty ');
      sql.add('order by SMDD.PlanDate, SMDD.DDBH ');
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
    end;
    DBGrideh4.columns[0].width:=100;
    DBGrideh4.columns[0].font.size:=10;
    DBGrideh4.columns[0].Alignment:=taCenter;
    DBGrideh4.columns[1].width:=100;
    DBGrideh4.columns[1].font.size:=8;
    DBGrideh4.columns[1].Alignment:=taCenter;
    DBGrideh4.columns[2].width:=100;
    DBGrideh4.columns[2].font.size:=8;
    DBGrideh4.columns[2].Alignment:=taCenter;
    DBGrideh4.columns[3].width:=40;
    DBGrideh4.columns[3].font.size:=8;
    DBGrideh4.columns[3].Alignment:=taCenter;
    TDatefield(SMDDListQry.Fields[3]).displayformat:='MM/dd' ;
    DBGrideh4.columns[4].width:=45;
    DBGrideh4.columns[4].title.caption:='Size';
    DBGrideh4.columns[4].Alignment:=taCenter;
    DBGrideh4.columns[4].footer.valuetype:=fvtsum;
    Tfloatfield(SMDDListQry.Fields[4]).displayformat:='##,#0' ;
    DBGrideh4.columns[0].footer.valuetype:=fvtcount;
    for i:=5 to SMDDListQry.fieldcount-1 do
    begin
      DBGrideh4.columns[i].width:=35;
      DBGrideh4.columns[i].Alignment:=taCenter;
      DBGrideh4.columns[i].footer.valuetype:=fvtsum;
      Tfloatfield(SMDDListQry.Fields[i]).displayformat:='##,#0' ;
    end;
  end;
  //
end;

procedure TSMDDDispatch.SMDDQryAfterScroll(DataSet: TDataSet);
begin
  if IsShowDetail=true then
  begin
    ShowSizeRun();
    ShowCycleRun();
  end;
end;

procedure TSMDDDispatch.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  DTP1.Date:=Date()-7;
  DTP2.Date:=Date();
end;

procedure TSMDDDispatch.BitBtn1Click(Sender: TObject);
begin
  SMDDDispatch_DepID:=TSMDDDispatch_DepID.Create(self);
  SMDDDispatch_DepID.Show();
end;
//
procedure TSMDDDispatch.ExportExcel_Order();
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
var i,j:integer;
    eclApp,WorkBook:olevariant;
begin
   if SMDDQry.Active=false then Exit;
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Plan_SN3D2.xls'),Pchar(AppDir+'Additional\Plan_SN3D2.xls'),false);
   if FileExists(AppDir+'Additional\Plan_SN3D2.xls') then
   begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
        eclApp.DisplayAlerts := False;
        eclApp.WorkBooks.Open(AppDir+'Additional\Plan_SN3D2.xls');
        eclApp.Cells(2,4):=SMDDQry.FieldByName('YSBH').AsString;
        eclApp.Cells(2,8):=SMDDQry.FieldByName('Article').AsString;
        eclApp.Cells(2,13):=SMDDQry.FieldByName('Article').AsString;
        eclApp.Cells(2,20):=SMDDQry.FieldByName('BuyNo').AsString;
        //
        eclApp.Cells(3,4):=SMDDQry.FieldByName('DAOMH').AsString;
        eclApp.Cells(3,8):=SMDDQry.FieldByName('XTMH').AsString;
        eclApp.Cells(3,13):=SMDDQry.FieldByName('DDGB').AsString;
        eclApp.Cells(3,20):=SMDDQry.FieldByName('YSSM').AsString;
        //尺碼
        DDZLSQry.First;
        for i:=0 to DDZLSQry.RecordCount-1 do
        begin
          for j:=2 to DDZLSQry.FieldCount-1 do
          begin
           eclApp.Cells(4+i,9+j-2):=DDZLSQry.Fields[j].Value;
          end;
          DDZLSQry.Next;
        end;
        //迴轉筆數
        for i:=1 to SMDDSQry.RecordCount-1 do
        begin
          eclApp.Rows[9].Copy;
          eclApp.Rows[9].Insert;
        end;
        eclApp.cutCopyMode:=0;
        //迴轉尺碼
        for i:=3 to SMDDSQry.FieldCount-1 do
        begin
          eclApp.Cells(8,9+i-3):=SMDDSQry.Fields[i].FieldName;
        end;
        //迴轉資料
        SMDDSQry.First;
        for i:=0 to SMDDSQry.RecordCount-1 do
        begin
          eclApp.Cells(9+i,2):=SMDDSQry.FieldByName('DepName').AsString;
          eclApp.Cells(9+i,5):=SMDDSQry.FieldByName('PlanDate').AsString;
          eclApp.Cells(9+i,6):=SMDDSQry.FieldByName('DDBH').AsString;
          for j:=3 to SMDDSQry.FieldCount-1 do
          begin
           eclApp.Cells(9+i,9+j-3):=SMDDSQry.Fields[j].Value;
          end;
          SMDDSQry.Next;
        end;
        //
        Showmessage('Succeed.');
        eclApp.Visible:=True;
      except
       on   F:Exception   do
       showmessage(F.Message);
      end;
   end;
end;
//
procedure TSMDDDispatch.ExportExcel_List();
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if SMDDListQry.Active then
  begin
    if SMDDListQry.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;
  //
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  //
  try
    WorkBook:=eclApp.workbooks.Add;
    for   i:=1   to   SMDDListQry.fieldcount   do
    begin
      eclApp.Cells(1,i):=SMDDListQry.fields[i-1].FieldName;
    end;
    SMDDListQry.First;
    j:=2;
    while   not  SMDDListQry.Eof   do
    begin
      for   i:=1   to   SMDDListQry.fieldcount   do
      begin
        eclApp.Cells(j,i):=SMDDListQry.Fields[i-1].Value;
      end;
      SMDDListQry.Next;
      Inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;
//
procedure TSMDDDispatch.Button2Click(Sender: TObject);
begin
  if PC1.ActivePageIndex=0 then
  begin
    ExportExcel_Order();
  end else  if PC1.ActivePageIndex=1 then
  begin
    ExportExcel_List();
  end;
end;

procedure TSMDDDispatch.Button3Click(Sender: TObject);
begin
  if PC1.ActivePageIndex=0 then
  begin
    SMDDDispatch_print:=TSMDDDispatch_print.Create(nil);
    SMDDDispatch_print.Quickrep1.prepare;
    SMDDDispatch_print.quickrep1.preview;
    SMDDDispatch_print.Free
  end else  if PC1.ActivePageIndex=1 then
  begin
    PrinterPreview.Orientation:= poLandscape;
    printDBGrideh1.Preview;
  end;
end;

procedure TSMDDDispatch.PrintDBGridEh1BeforePrint(Sender: TObject);
begin
  PrintDBGridEh1.SetSubstitutes(['%[TDep]',BDepEdit.Text+'          '+formatdatetime('yyyy/MM/dd',DTP1.Date)+'~~~'+formatdatetime('yyyy/MM/dd',DTP2.Date)]);
end;

end.
