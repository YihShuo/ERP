unit BShoeZLZL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, comobj, ExtCtrls, Grids, DBGrids;

type
  TBShoeZLZL = class(TForm)
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
    TempSQL: TQuery;
    Gjtable: TQuery;
    Panel1: TPanel;
    Article: TEdit;
    Label1: TLabel;
    Button2: TButton;
    Button1: TButton;
    XXZL: TQuery;
    DBGrid1: TDBGrid;
    XXZLDS: TDataSource;
    XXZLXieXing: TStringField;
    XXZLSheHao: TStringField;
    XXZLArticle: TStringField;
    XXZLS: TQuery;
    CheckR2: TCheckBox;
    CheckR3: TCheckBox;
    procedure TitlememoAfterOpen(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    AppDir:String;
    RubberGSBH:array of String;
    SQLGSBH:string;
    { Private declarations }
    procedure ExportSalesFormatData();
    procedure GenerateMaterialList();
  public
    { Public declarations }
  end;

var
  BShoeZLZL: TBShoeZLZL;

implementation
  uses SpecPrint1,FunUnit, main1;
{$R *.dfm}

//產生SizeRun
procedure TBShoeZLZL.TitlememoAfterOpen(DataSet: TDataSet);
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
    sql.add('  if object_id('+''''+'tempdb..#XXCC'+''''+') is not null  ');
    sql.add('begin   drop table #XXCC end   ');
    sql.add('if object_id('+''''+'tempdb..#CC'+''''+') is not null  ');
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
    execsql;
    //active:=true;
  end;
  //做交叉表
  with TempSQL do      //循環依據
  begin
    Active:=false;
    SQL.Clear;
    sql.add('select BOMCC  from #CC where DDType='+''''+'Quantity'+''''+'order by BOMCC' );
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
        sql.add(',max(case when BOMCC='+''''+a+'''');
        sql.add('and DDCC<>'+''''+'0'+''''+' then DDCC else'+''''+''+''''+' end ) as '+''''+a+'''');
        TempSQL.Next;
      end;
    sql.add(' from #CC');
    sql.add(' group by NO,DDType,SizeType');
    sql.add('order by NO  ');
    active:=true;
  end;

end;
//產生材料列表
procedure TBShoeZLZL.GenerateMaterialList();
var SQL:String;
begin
  with XXZLS do
  begin
     Active:=false;
     SQL.Clear;
     SQL.Add(' select  XXZLS.BWBH,BWZL.ywsm as BWYM,XXZLS.CLBH,CLZL.YWPM,CLZL.DWBH,XXZLS.CLSL*'+SpecPrint.SpecMas.FieldByName('Qty').AsString+' as CLSL from XXZLS ');
     SQL.Add(' left join CLZL on XXZLS.CLBH=CLZL.CLDH ');
     SQL.Add(' LEFT JOIN BWZL ON XXZLS.BWBH = BWZL.bwdh  ');
     SQL.Add(' where XXZLS.XieXing='''+XXZL.fieldByName('XieXing').AsString+'''  and XXZLS.SHEHAO='''+XXZL.fieldByName('SheHao').AsString+''' and XXZLS.CLSL>0 and XXZLS.CLSL is not NULL');
     SQL.Add(' union all ');
     SQL.Add(' select ZLZLS2.BWBH,BWZL.ywsm as BWYM,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,ZLZLS2.CLSL ');
     SQL.Add(' from ZLZLS2 ');
     SQL.Add(' left join CLZL on ZLZLS2.CLBH=CLZL.CLDH ');
     SQL.Add(' LEFT JOIN BWZL ON ZLZLS2.BWBH = BWZL.bwdh  ');
     SQL.Add(' where ZLZLS2.ZLBH='''+SpecPrint.SpecMas.FieldByName('ZLBH').AsString+''' ');
     Active:=true;
  end;

end;

//
procedure TBShoeZLZL.Button1Click(Sender: TObject);
begin
  if XXZL.Active=true then
  begin
    if XXZL.RecordCount>0 then
    begin
      TitleMemo.Active:=true;
      GenerateMaterialList();
      ExportSalesFormatData();
    end;
  end else
  begin
    Showmessage('Please Select orginal B Shoe Article!');
  end;
end;
//匯出業務制令B XLS
procedure TBShoeZLZL.ExportSalesFormatData();
var  eclApp,WorkBook:olevariant;
     i,j,k:integer;
     CLBH:string;
begin
   //
   if SQLGSBH<>'' then
   begin
     with TempSQL do
     begin
       active:=false;
       sql.Clear;
       sql.Add('select CLZL.CLDH,CLZL.YWPM,CLZL.ZWPM,Sum(CLZLSL.clyl*XXZLS.TKG/XXZLS.TotKgs) as FinKgs, CLZL.cgdwbh as DWBH');
       sql.Add('from (select XXZLS.*,Case when XXZLS.XH=''A'' then CLZL_TKG.A');
       sql.Add('                          when XXZLS.XH=''B'' then CLZL_TKG.B');
       sql.Add('                          when XXZLS.XH=''C'' then CLZL_TKG.C');
       sql.Add('                          when XXZLS.XH=''D'' then CLZL_TKG.D');
       sql.Add('                          when XXZLS.XH=''E'' then CLZL_TKG.E');
       sql.Add('                          when XXZLS.XH=''F'' then CLZL_TKG.F');
       sql.Add('                          when XXZLS.XH=''G'' then CLZL_TKG.G');
       sql.Add('                          when XXZLS.XH=''H'' then CLZL_TKG.H');
       sql.Add('                          when XXZLS.XH=''I'' then CLZL_TKG.I');
       sql.Add('                          when XXZLS.XH=''J'' then CLZL_TKG.J');
       sql.Add('                          when XXZLS.XH=''K'' then CLZL_TKG.K');
       sql.Add('                          when XXZLS.XH=''L'' then CLZL_TKG.L');
       sql.Add('                          when XXZLS.XH=''M'' then CLZL_TKG.M');
       sql.Add('                          when XXZLS.XH=''N'' then CLZL_TKG.N');
       sql.Add('                          when XXZLS.XH=''O'' then CLZL_TKG.O end as TKG,KCLZL.TotKgs');
       sql.Add('      from '+main.LIY_DD+'.dbo.XXZLS XXZLS');
       sql.Add('      left join (select XieXing,SheHao,CQDH,Sum(IsNull(G01,0)*DDZLS.Quantity)/1000  as A,');
       sql.Add('                        Sum(IsNull(G02,0)*DDZLS.Quantity)/1000   as B,');
       sql.Add('                        Sum(IsNull(G03,0)*DDZLS.Quantity)/1000   as C,');
       sql.Add('                        Sum(IsNull(G04,0)*DDZLS.Quantity)/1000   as D,');
       sql.Add('                        Sum(IsNull(G05,0)*DDZLS.Quantity)/1000   as E,');
       sql.Add('                        Sum(IsNull(G06,0)*DDZLS.Quantity)/1000   as F,');
       sql.Add('                        Sum(IsNull(G07,0)*DDZLS.Quantity)/1000   as G,');
       sql.Add('                        Sum(IsNull(G08,0)*DDZLS.Quantity)/1000   as H,');
       sql.Add('                        Sum(IsNull(G09,0)*DDZLS.Quantity)/1000   as I,');
       sql.Add('                        Sum(IsNull(G10,0)*DDZLS.Quantity)/1000   as J,');
       sql.Add('                        Sum(IsNull(G11,0)*DDZLS.Quantity)/1000   as K,');
       sql.Add('                        Sum(IsNull(G12,0)*DDZLS.Quantity)/1000   as L,');
       sql.Add('                        Sum(IsNull(G13,0)*DDZLS.Quantity)/1000   as M,');
       sql.Add('                        Sum(IsNull(G14,0)*DDZLS.Quantity)/1000   as N,');
       sql.Add('                        Sum(IsNull(G15,0)*DDZLS.Quantity)/1000   as O');
       sql.Add('                 from '+main.LIY_DD+'.dbo.XXZLS1 XXZLS1');
       sql.Add('                 left join DDZLS on DDZLS.CC=XXZLS1.CC and DDZLS.DDBH='''+SpecPrint.SpecMas.FieldByName('ZLBH').AsString+'''');
       sql.Add('                 where XieXing='''+XXZL.fieldByName('XieXing').AsString+''' and SheHao='''+XXZL.fieldByName('SheHao').AsString+'''');
       //
       sql.Add('                 and CQDH in '+SQLGSBH);
       sql.Add('                 Group by XieXing,SheHao,CQDH)CLZL_TKG');
       sql.Add('      on CLZL_TKG.XieXing=XXZLS.XieXing and CLZL_TKG.SheHao=XXZLS.SheHao and CLZL_TKG.CQDH=XXZLS.CQDH');
       sql.Add('      left join '+main.LIY_DD+'.dbo.CLZL KCLZL on KCLZL.CLDH=XXZLS.CLDH');
       sql.Add('      where XXZLS.XieXing='''+XXZL.fieldByName('XieXing').AsString+''' and XXZLS.SheHao='''+XXZL.fieldByName('SheHao').AsString+'''');
       sql.Add('            and XXZLS.CQDH in '+SQLGSBH);
       sql.Add('      and IsNull(XXZLS.CLDH,'''')<>'''') XXZLS ');
       sql.Add('left join '+main.LIY_DD+'.dbo.CLZLSL CLZLSL on  CLZLSL.CLDH=XXZLS.CLDH');
       sql.Add('left join '+main.LIY_DD+'.dbo.CLZL CLZL on CLZLSL.cldhz=CLZL.CLDH');
       sql.Add('Group by CLZL.CLDH,CLZL.YWPM,CLZL.ZWPM,CLZL.cgdwbh');
       //funcobj.WriteErrorLog(sql.Text);
       active:=true;
     end;
    //
    if FileExists(AppDir+'Additional\SampleTracking.xls')=false  then
    begin
       if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
       CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\SalesB_ShoeFormat.xls'),Pchar(AppDir+'Additional\SalesB_ShoeFormat.xls'),false);
    end;
    if FileExists(AppDir+'Additional\SalesB_ShoeFormat.xls') then
    begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\SalesB_ShoeFormat.xls');
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
          for j:=0 to Gjtable.FieldCount-1-3 do
            eclApp.Cells(7+i,4+j):=Gjtable.Fields[j+3].AsString;
          Gjtable.Next;
        end;
        //材料列表
        for i:=0 to XXZLS.RecordCount-1 do
        begin
          eclApp.Cells(13+i,1):=XXZLS.FieldByName('BWBH').AsString;
          eclApp.Cells(13+i,2):=XXZLS.FieldByName('BWYM').AsString;
          eclApp.Cells(13+i,6):=XXZLS.FieldByName('CLBH').AsString;
          eclApp.Cells(13+i,8):=XXZLS.FieldByName('YWPM').AsString;
          eclApp.Cells(13+i,23):=XXZLS.FieldByName('DWBH').AsString;
          eclApp.Cells(13+i,26):=XXZLS.FieldByName('CLSL').AsString;
          eclApp.Cells(13+i,28):='0.000';
          XXZLS.Next;
        end;
        //
        for k:=XXZLS.RecordCount to TempSQL.RecordCount-1+XXZLS.RecordCount do
        begin
          CLBH:=TempSQL.FieldByName('CLDH').AsString;
          //
          eclApp.Cells(13+k,2):=SQLGSBH;
          {
          if (checkR2.Checked and checkR3.Checked) then
             eclApp.Cells(13+k,2):='R2/R3'
          else
           begin
            if checkR2.Checked then
               eclApp.Cells(13+k,2):='R2' ;
            if checkR3.Checked then
               eclApp.Cells(13+k,2):='R3' ;
           end;
           }
          eclApp.Cells(13+k,6):=Copy(CLBH,2,length(CLBH)-1);
          eclApp.Cells(13+k,8):=TempSQL.FieldByName('YWPM').AsString;
          eclApp.Cells(13+k,23):=TempSQL.FieldByName('DWBH').AsString;
          eclApp.Cells(13+k,26):=TempSQL.FieldByName('FinKgs').AsString;
          TempSQL.Next;
        end;
        //
        showmessage('Succeed');
        eclApp.Visible:=True;
      except
          on   F:Exception   do
            showmessage(F.Message);
      end;
      //
    end;
  end;
  //
end;

procedure TBShoeZLZL.FormCreate(Sender: TObject);
var i:integer;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  //底廠
  with TempSQL do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select GSBH from (');
    SQL.Add('Select Bgszl.GSDH as GSBH,Bgszl.DFL,Bgszl.SFL,Bgszl.TGSBH,Bgszl.GXLB');
    SQL.Add('       ,KCCK.CKBH,KCCK.DFL as KDFL ');
    SQL.Add('from Bgszl');
    SQL.Add('left join  KCCK on Bgszl.GSDH=KCCK.GSBH');
    SQL.Add('where IsNull(tybh,'''')<>''Y''');
    SQL.Add(' ) BGSZL');
    SQL.Add('where 1=1 and SFL=''RB'' and GSBH is not null ');
    SQL.Add('   and DFL in (select DFL from Bgszl where GSDH='''+main.Edit2.Text+''')');
    SQL.Add('Group by GSBH');
    Active:=true;
    setlength(RubberGSBH,RecordCount);
    for i:=0 to RecordCount-1 do
    begin
      RubberGSBH[i]:=FieldByName('GSBH').AsString;
      SQLGSBH:=SQLGSBH+''''+FieldByName('GSBH').AsString+''',';
      Next;
    end;
    Active:=false;
    if Length(SQLGSBH)>0 then SQLGSBH:='('+Copy(SQLGSBH,1,length(SQLGSBH)-1)+')';
  end;
end;

procedure TBShoeZLZL.Button2Click(Sender: TObject);
begin
  if Article.Text='' then
  begin
    Showmessage('Please input Article!');
  end else
  begin
     With XXZL do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select XieXing,SheHao,Article from  XXZL ');
       SQL.Add(' where Article like ''%'+Article.Text+'%'' ');
       Active:=true;
     end;
  end;
end;

procedure TBShoeZLZL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
