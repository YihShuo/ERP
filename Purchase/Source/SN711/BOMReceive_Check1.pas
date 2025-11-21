unit BOMReceive_Check1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, DBTables, StdCtrls, ExtCtrls,comobj,
  ComCtrls, GridsEh, DBGridEh, Menus, OleServer, ExcelXP,DBGridEhImpExp, ShellAPI, Zlib,
  Buttons, Mask, DBCtrls;

type
  TBOMReceive_Check = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Qry_Cal: TQuery;
    pgc1: TPageControl;
    TS2: TTabSheet;
    TS3: TTabSheet;
    Qry_Article: TQuery;
    DS_Article: TDataSource;
    DS_Wrong: TDataSource;
    Qry_Wrong: TQuery;
    qry3: TQuery;
    ExcelApplication1: TExcelApplication;
    DBGridEh2: TDBGridEh;
    DS_ALL: TDataSource;
    Qry_ALL: TQuery;
    SaveDialog1: TSaveDialog;
    qry4: TQuery;
    OpenDialog1: TOpenDialog;
    Splitter2: TSplitter;
    Label1: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit_Season: TEdit;
    Edit_Stage: TEdit;
    Edit_FD: TEdit;
    Edit_Article: TEdit;
    Edit_Team: TEdit;
    Edit_Merge: TEdit;
    Qry_ALLReceiveNO: TStringField;
    Qry_ALLFileNO: TStringField;
    Qry_ALLFD: TStringField;
    Qry_ALLSeason: TStringField;
    Qry_ALLStage: TStringField;
    Qry_ALLMergeNO: TStringField;
    Qry_ALLRemark: TStringField;
    Qry_ALLReceiveDate: TDateTimeField;
    Qry_ALLUSERDate: TDateTimeField;
    Qry_ALLUSERID: TStringField;
    Qry_ALLteam: TStringField;
    Qry_ALLArticle: TStringField;
    Qry_ALLRevArticle: TStringField;
    Qry_ALLPairs: TCurrencyField;
    Qry_ALLRemark1: TStringField;
    Pop_all: TPopupMenu;
    Excel1: TMenuItem;
    Panel2: TPanel;
    Panel3: TPanel;
    Qry_WrongReceiveNO: TStringField;
    Qry_WrongFileNO: TStringField;
    Qry_WrongFD: TStringField;
    Qry_WrongSeason: TStringField;
    Qry_WrongStage: TStringField;
    Qry_WrongReceiveDate: TDateTimeField;
    Qry_WrongArticle: TStringField;
    Qry_WrongRevArticle: TStringField;
    Qry_WrongJIJIE: TStringField;
    Panel4: TPanel;
    DBGridEh1: TDBGridEh;
    Splitter1: TSplitter;
    DBGridEh3: TDBGridEh;
    DS_WrongS: TDataSource;
    Qry_WrongS: TQuery;
    Qry_WrongSarticle: TStringField;
    Qry_WrongSKFJD: TStringField;
    Qry_ArticleFD: TStringField;
    Qry_ArticleSeason: TStringField;
    Qry_ArticleStage: TStringField;
    Qry_ArticleArticle: TStringField;
    Qry_ArticleAll_ReceiveDate: TStringField;
    Panel5: TPanel;
    DBGridEh4: TDBGridEh;
    Splitter3: TSplitter;
    DS_ArticleS: TDataSource;
    Qry_ArticleS: TQuery;
    Qry_ArticleSReceiveDate: TDateTimeField;
    Qry_ArticleSPairs: TCurrencyField;
    Qry_ArticleSRemark: TStringField;
    Qry_ArticleSRemark1: TStringField;
    DBGridEh5: TDBGridEh;
    Qry_ArticleRev_Cnt: TIntegerField;
    Pop_Article: TPopupMenu;
    MenuItem1: TMenuItem;
    Pop_Wrong: TPopupMenu;
    MenuItem2: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgrdh4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Excel1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BOMReceive_Check: TBOMReceive_Check;
  dbg2 : boolean;
  NDate:TDate;
implementation

uses main1;

{$R *.dfm}

procedure TBOMReceive_Check.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TBOMReceive_Check.Button1Click(Sender: TObject);
begin

//第一頁 All Data
with Qry_ALL do
  begin
    active:=false;
    sql.Clear;    
    sql.add('select BOMReceive.ReceiveNO ');
    sql.add('       ,FileNO ');
    sql.add('       ,FD ');
    sql.add('       ,Season ');
    sql.add('       ,Stage ');
    sql.add('       ,MergeNO ');
    sql.add('       ,Remark ');
    sql.add('       ,ReceiveDate ');
    sql.add('       ,BOMReceiveS.USERDate ');
    sql.add('       ,BOMReceiveS.USERID ');
    sql.add('       ,team ');
    sql.add('       ,BOMReceiveS.Article ');
    sql.add('       ,BOMReceiveS.RevArticle ');
    sql.add('       ,BOMReceiveS.Pairs ');
    sql.add('       ,BOMReceiveS.Remark1 ');
    sql.add('from BOMReceive');
    sql.add('left join BOMReceiveS on BOMReceiveS.ReceiveNO=BOMReceive.ReceiveNO ');
    sql.add('where 1=1 ');

    if Edit_Season.Text<>'' then
       sql.add('   and Season like '''+Edit_Season.Text+'%'+'''');
    if Edit_Stage.Text<>'' then
       sql.add('   and Stage like '''+Edit_Stage.Text+'%'+'''');
    if Edit_FD.Text<>'' then
       sql.add('   and FD like '''+Edit_FD.Text+'%'+'''');
    if Edit_Merge.Text<>'' then
       sql.add('   and MergeNO like '''+Edit_Merge.Text+'%'+'''');
    if Edit_Team.Text<>'' then
       sql.add('   and Team like '''+Edit_Team.Text+'%'+'''');

    sql.add('   and (Article like '''+Edit_Article.Text+'%'+'''');
    sql.add('   or  RevArticle like '''+Edit_Article.Text+'%'+''''+')');
    sql.add('order by BOMReceive.ReceiveNO ');
    active:=true;
  end;

 //第二頁 wrong article
 Qry_WrongS.Active:=false;
 with Qry_Wrong do
   begin
    active:=false;
    sql.Clear;
    sql.add('select BOMReceive.ReceiveNO ');
    sql.add('       ,BOMReceive.FileNO ');
    sql.add('       ,BOMReceive.FD ');
    sql.add('       ,BOMReceive.Season ');
    sql.add('       ,BOMReceive.Stage ');
    sql.add('       ,BOMReceive.ReceiveDate ');
    sql.add('       ,BOMReceiveS.Article ');
    sql.add('       ,BOMReceiveS.RevArticle ');
    sql.add('       ,KFXXZL.JIJIE');
    sql.add('from BOMReceiveS ');
    sql.add('left join BOMReceive on BOMReceiveS.ReceiveNO=BOMReceive.ReceiveNO ');
    sql.add('left join YPZL on YPZL.KFJD=BOMReceive.Stage and YPZL.article=BOMReceiveS.Article');
    sql.add('LEFT JOIN KFXXZL ON KFXXZL.ARTICLE=BOMReceiveS.ARTICLE');
    sql.add('where YPZL.YPDH is null ');
    sql.add('      and BOMReceive.ReceiveDate>''2011/12/1'' ');
    sql.add('      and RevArticle is null ');
    active:=true;
   end;
 Qry_WrongS.Active:=true;

 //第二頁 Article
Qry_ArticleS.Active:=false;
with Qry_Article do
  begin
    active:=false;
    sql.Clear;    //產生 Article 的暫存檔
    sql.add('      if object_id(''tempdb..#BOMReceive_Check'') is not null    ');
    sql.add('         begin drop table #BOMReceive_Check end                 ');
    sql.add(' SELECT FD ');
    sql.add('       ,Season ');
    sql.add('       ,Stage ');
    sql.add('       ,Article ');
    sql.add('       into #BOMReceive_Check');
    sql.add(' FROM BOMReceive ');
    sql.add(' Left join BOMReceiveS on BOMReceiveS.ReceiveNO=BOMReceive.ReceiveNO ');
    sql.add(' WHERE 1=1   ');
    if Edit_Season.Text<>'' then
       sql.add('   and Season like '''+Edit_Season.Text+'%'+'''');
    if Edit_Stage.Text<>'' then
       sql.add('   and Stage like '''+Edit_Stage.Text+'%'+'''');
    if Edit_FD.Text<>'' then
       sql.add('   and FD like '''+Edit_FD.Text+'%'+'''');
    if Edit_Merge.Text<>'' then
       sql.add('   and MergeNO like '''+Edit_Merge.Text+'%'+'''');
    if Edit_Team.Text<>'' then
       sql.add('   and Team like '''+Edit_Team.Text+'%'+'''');
    sql.add('   and (Article like '''+Edit_Article.Text+'%'+'''');
    sql.add('   or  RevArticle like '''+Edit_Article.Text+'%'+''''+')');
    sql.add('Group by Season,FD,Article,Stage ');
//    sql.add('Order by Season,FD,Article,Stage ');


    sql.add('      if object_id(''tempdb..#BOMReceive_Date'') is not null    ');
    sql.add('         begin drop table #BOMReceive_Date end                 ');
    sql.add(' SELECT #BOMReceive_Check.Season,#BOMReceive_Check.Stage,#BOMReceive_Check.Article   ');
    sql.add('        ,ISNULL((SELECT convert(char(12),ReceiveDate,111)+'',''  FROM  ');
    sql.add('                   (select BOMReceive.ReceiveDate ');
    sql.add('                           ,BOMReceive.Stage ');
    sql.add('                           ,BOMReceiveS.Article ');
    sql.add('                    from BOMReceiveS,BOMReceive ');
    sql.add('                    where BOMReceiveS.ReceiveNO=BOMReceive.ReceiveNO ');
    sql.add('                    group by Stage,Article,ReceiveDate,BOMReceiveS.ReceiveNO');
    sql.add('                   ) SS   ');
    sql.add('                 WHERE ss.Article=#BOMReceive_Check.Article and ss.Stage=#BOMReceive_Check.Stage ');
    sql.add('                 FOR XML PATH('''')   ');
    sql.add('                 ),'''') as all_ReceiveDate  into #BOMReceive_Date   ');
    sql.add('   FROM #BOMReceive_Check ');
    sql.add('   WHERE 1=1   ');


      sql.add(' SELECT #BOMReceive_Check.FD ');
      sql.add('       ,#BOMReceive_Check.Season ');
      sql.add('       ,#BOMReceive_Check.Stage ');
      sql.add('       ,#BOMReceive_Check.Article ');
      sql.add('       ,CAST(#BOMReceive_Date.all_ReceiveDate AS char(200)) as All_ReceiveDate');
      sql.add('       ,(select count(*) from BOMReceiveS,BOMReceive ');
      sql.add('         where BOMReceiveS.ReceiveNO=BOMReceive.ReceiveNO ');
      sql.add('               and BOMReceiveS.Article=#BOMReceive_Check.Article ');
      sql.add('               and BOMReceive.Stage=#BOMReceive_Check.Stage ) as Rev_Cnt ');
      sql.add(' FROM #BOMReceive_Check ');
      sql.add(' left join #BOMReceive_Date on #BOMReceive_Date.Article=#BOMReceive_Check.Article and #BOMReceive_Date.Stage=#BOMReceive_Check.Stage ');
      {
      sql.add(' left join (select R11.article,R11.Stage,Min(R11.ReceiveDate) ReceiveDate from  ');
      sql.add('               (select article,Stage,ReceiveDate from BOMReceive ');
      sql.add('                Left join BOMReceiveS on BOMReceiveS.ReceiveNO=BOMReceive.ReceiveNO   ');
      sql.add('                WHERE article is not null ');
      sql.add('                ) R11                    ');
      sql.add('                GROUP by R11.article,R11.Stage              ');
      sql.add('             ) R1 ON R1.article=#BOMReceive_Check.article AND  R1.Stage=#BOMReceive_Check.Stage  ');
      sql.add(' left join (select R21.article,R21.Stage,MIN(R21.ReceiveDate) ReceiveDate from  ');
      sql.add('               (select article,Stage,ReceiveDate from BOMReceive ');
      sql.add('                Left join BOMReceiveS on BOMReceiveS.ReceiveNO=BOMReceive.ReceiveNO   ');
      sql.add('                WHERE article is not null ');
      sql.add('                ) R21                    ');
      sql.add('                WHERE NOT EXISTS (   ');
      sql.add('                                  SELECT R22.article FROM ');
      sql.add('                                   (   ');
      sql.add('                                     select R23.article,R23.Stage,MIN(R23.ReceiveDate) ReceiveDate from  ');
      sql.add('                                      (select article,Stage,ReceiveDate from BOMReceive ');
      sql.add('                                       Left join BOMReceiveS on BOMReceiveS.ReceiveNO=BOMReceive.ReceiveNO   ');
      sql.add('                                       WHERE article is not null ');
      sql.add('                                      ) R23                    ');
      sql.add('                                     GROUP by R23.article, R23.Stage        ');
      sql.add('                                   ) R22 WHERE R22.article=R21.article AND R22.Stage=R21.Stage AND R22.ReceiveDate=R21.ReceiveDate ');
      sql.add('                                 )      ');
      sql.add('                GROUP by R21.article,R21.Stage              ');
      sql.add('             ) R2 ON  R2.article=#BOMReceive_Check.article AND  R2.Stage=#BOMReceive_Check.Stage              ');
      sql.add(' left join (select R31.article,R31.Stage,MIN(R31.ReceiveDate) ReceiveDate from  ');
      sql.add('               (select article,Stage,ReceiveDate from BOMReceive ');
      sql.add('                Left join BOMReceiveS on BOMReceiveS.ReceiveNO=BOMReceive.ReceiveNO   ');
      sql.add('                WHERE article is not null ');
      sql.add('                ) R31                    ');
      sql.add('                WHERE NOT EXISTS (   ');
      sql.add('                                  SELECT R32.article FROM ');
      sql.add('                                   (   ');
      sql.add('                                     select R33.article,R33.Stage,MIN(R33.ReceiveDate) ReceiveDate from  ');
      sql.add('                                      (select article,Stage,ReceiveDate from BOMReceive ');
      sql.add('                                       Left join BOMReceiveS on BOMReceiveS.ReceiveNO=BOMReceive.ReceiveNO   ');
      sql.add('                                       WHERE article is not null ');
      sql.add('                                      ) R33                    ');
      sql.add('                                      WHERE NOT EXISTS    ');
      sql.add('                                           (SELECT R34.article FROM ');
      sql.add('                                                (select R35.article,R35.Stage,MIN(R35.ReceiveDate) ReceiveDate from  ');
      sql.add('                                                     (select article,Stage,ReceiveDate from BOMReceive ');
      sql.add('                                                      Left join BOMReceiveS on BOMReceiveS.ReceiveNO=BOMReceive.ReceiveNO   ');
      sql.add('                                                      WHERE article is not null ');
      sql.add('                                                      ) R35                    ');
      sql.add('                                                      GROUP by R35.article,R35.Stage              ');
      sql.add('                                                ) R34 WHERE R34.article=R33.article AND  R34.Stage=R33.Stage  AND R34.ReceiveDate=R33.ReceiveDate          ');
      sql.add('                                            )      ');
      sql.add('                                     GROUP by R33.article,R33.Stage              ');
      sql.add('                                   ) R32 WHERE R32.article=R31.article AND  R32.Stage=R31.Stage  AND R32.ReceiveDate=R31.ReceiveDate          ');
      sql.add('                                 )      ');
      sql.add('                 AND NOT EXISTS (   ');
      sql.add('                                  SELECT RR32.article FROM ');
      sql.add('                                   (   ');
      sql.add('                                     select RR33.article,RR33.Stage,MIN(RR33.ReceiveDate) ReceiveDate from  ');
      sql.add('                                      (select article,Stage,ReceiveDate from BOMReceive ');
      sql.add('                                       Left join BOMReceiveS on BOMReceiveS.ReceiveNO=BOMReceive.ReceiveNO   ');
      sql.add('                                       WHERE article is not null ');
      sql.add('                                      ) RR33                    ');
      sql.add('                                     GROUP by RR33.article,RR33.Stage              ');
      sql.add('                                   ) RR32 WHERE RR32.article=R31.article AND  RR32.Stage=R31.Stage AND RR32.ReceiveDate=R31.ReceiveDate           ');
      sql.add('                                 )      ');
      sql.add('                GROUP by R31.article,R31.Stage              ');
      sql.add('             ) R3 ON  R3.article=#BOMReceive_Check.article AND R3.Stage=#BOMReceive_Check.Stage  ');

      sql.add(' left join (select R41.article,R41.Stage,MIN(R41.ReceiveDate) ReceiveDate from  ');
      sql.add('               (select article,Stage,ReceiveDate from BOMReceive ');
      sql.add('                Left join BOMReceiveS on BOMReceiveS.ReceiveNO=BOMReceive.ReceiveNO   ');
      sql.add('                WHERE article is not null ');
      sql.add('                ) R41                    ');
      sql.add('                where NOT EXISTS (   ');
      sql.add('                                  SELECT R432.article FROM ');
      sql.add('                                   (   ');
      sql.add('                                    select R431.article,R431.Stage,MIN(R431.ReceiveDate) ReceiveDate from  ');
      sql.add('                                        (select article,Stage,ReceiveDate from BOMReceive ');
      sql.add('                                         Left join BOMReceiveS on BOMReceiveS.ReceiveNO=BOMReceive.ReceiveNO   ');
      sql.add('                                         WHERE article is not null ');
      sql.add('                                         ) R431                    ');
      sql.add('                                    WHERE NOT EXISTS (   ');
      sql.add('                                                      SELECT R432.article FROM ');
      sql.add('                                                       (   ');
      sql.add('                                                         select R433.article,R433.Stage,MIN(R433.ReceiveDate) ReceiveDate from  ');
      sql.add('                                                            (select article,Stage,ReceiveDate from BOMReceive ');
      sql.add('                                                             Left join BOMReceiveS on BOMReceiveS.ReceiveNO=BOMReceive.ReceiveNO   ');
      sql.add('                                                             WHERE article is not null ');
      sql.add('                                                             ) R433                    ');
      sql.add('                                                         WHERE NOT EXISTS    ');
      sql.add('                                                              (SELECT R434.article FROM ');
      sql.add('                                                                  (select R435.article,R435.Stage,MIN(R435.ReceiveDate) ReceiveDate from  ');
      sql.add('                                                                       (select article,Stage,ReceiveDate from BOMReceive ');
      sql.add('                                                                         Left join BOMReceiveS on BOMReceiveS.ReceiveNO=BOMReceive.ReceiveNO   ');
      sql.add('                                                                         WHERE article is not null ');
      sql.add('                                                                        ) R435                    ');
      sql.add('                                                                     GROUP by R435.article,R435.Stage              ');
      sql.add('                                                                   ) R434 WHERE R434.article=R433.article AND  R434.Stage=R433.Stage  AND R434.ReceiveDate=R433.ReceiveDate          ');
      sql.add('                                                               )      ');
      sql.add('                                                         GROUP by R433.article,R433.Stage              ');
      sql.add('                                                      ) R432 WHERE R432.article=R431.article AND  R432.Stage=R431.Stage  AND R432.ReceiveDate=R431.ReceiveDate          ');
      sql.add('                                                    )      ');
      sql.add('                                           AND NOT EXISTS (   ');
      sql.add('                                                   SELECT RR432.article FROM ');
      sql.add('                                                     (   ');
      sql.add('                                                       select RR433.article,RR433.Stage,MIN(RR433.ReceiveDate) ReceiveDate from  ');
      sql.add('                                                        (select article,Stage,ReceiveDate from BOMReceive ');
      sql.add('                                                         Left join BOMReceiveS on BOMReceiveS.ReceiveNO=BOMReceive.ReceiveNO   ');
      sql.add('                                                         WHERE article is not null ');
      sql.add('                                                         ) RR433                    ');
      sql.add('                                                       GROUP by RR433.article,RR433.Stage              ');
      sql.add('                                                     ) RR432 WHERE RR432.article=R431.article AND  RR432.Stage=R431.Stage AND RR432.ReceiveDate=R431.ReceiveDate           ');
      sql.add('                                                   )      ');
      sql.add('                                    GROUP by R431.article,R431.Stage              ');

      sql.add('                                   ) R432 WHERE R432.article=R41.article AND  R432.Stage=R41.Stage AND R432.ReceiveDate=R41.ReceiveDate           ');
      sql.add('                                 )      ');
      sql.add('                and NOT EXISTS (   ');
      sql.add('                                  SELECT R42.article FROM ');
      sql.add('                                   (   ');
      sql.add('                                     select R43.article,R43.Stage,MIN(R43.ReceiveDate) ReceiveDate from  ');
      sql.add('                                      (select article,Stage,ReceiveDate from BOMReceive ');
      sql.add('                                       Left join BOMReceiveS on BOMReceiveS.ReceiveNO=BOMReceive.ReceiveNO   ');
      sql.add('                                       WHERE article is not null ');
      sql.add('                                      ) R43                    ');
      sql.add('                                      WHERE NOT EXISTS    ');
      sql.add('                                           (SELECT R44.article FROM ');
      sql.add('                                                (select R45.article,R45.Stage,MIN(R45.ReceiveDate) ReceiveDate from  ');
      sql.add('                                                     (select article,Stage,ReceiveDate from BOMReceive ');
      sql.add('                                                      Left join BOMReceiveS on BOMReceiveS.ReceiveNO=BOMReceive.ReceiveNO   ');
      sql.add('                                                      WHERE article is not null ');
      sql.add('                                                      ) R45                    ');
      sql.add('                                                      GROUP by R45.article,R45.Stage              ');
      sql.add('                                                ) R44 WHERE R44.article=R43.article AND  R44.Stage=R43.Stage  AND R44.ReceiveDate=R43.ReceiveDate          ');
      sql.add('                                            )      ');
      sql.add('                                     GROUP by R43.article,R43.Stage              ');
      sql.add('                                   ) R42 WHERE R42.article=R41.article AND  R42.Stage=R41.Stage  AND R42.ReceiveDate=R41.ReceiveDate          ');
      sql.add('                                 )      ');
      sql.add('                 AND NOT EXISTS (   ');
      sql.add('                                  SELECT RR42.article FROM ');
      sql.add('                                   (   ');
      sql.add('                                     select RR43.article,RR43.Stage,MIN(RR43.ReceiveDate) ReceiveDate from  ');
      sql.add('                                      (select article,Stage,ReceiveDate from BOMReceive ');
      sql.add('                                       Left join BOMReceiveS on BOMReceiveS.ReceiveNO=BOMReceive.ReceiveNO   ');
      sql.add('                                       WHERE article is not null ');
      sql.add('                                      ) RR43                    ');
      sql.add('                                     GROUP by RR43.article,RR43.Stage              ');
      sql.add('                                   ) RR42 WHERE RR42.article=R41.article AND  RR42.Stage=R41.Stage AND RR42.ReceiveDate=R41.ReceiveDate           ');
      sql.add('                                 )      ');
      sql.add('                GROUP by R41.article,R41.Stage              ');
      sql.add('             ) R4 ON  R4.article=#BOMReceive_Check.article AND R4.Stage=#BOMReceive_Check.Stage  ');
      }
      sql.add('Order by #BOMReceive_Check.Season,#BOMReceive_Check.FD,#BOMReceive_Check.Article,#BOMReceive_Check.Stage ');

    active:=true;
  end;
Qry_ArticleS.Active:=true;

end;

procedure TBOMReceive_Check.FormDestroy(Sender: TObject);
begin
  BOMReceive_Check:=nil;
end;

procedure TBOMReceive_Check.FormCreate(Sender: TObject);
begin
// DTP2.Datetime:=Now();
// DTP1.Datetime:=Now()-30;
{
pgc1.ActivePageIndex:=1;
with qry4 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
}

end;

procedure TBOMReceive_Check.dbgrdh4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

//  if   qry_article.Fieldbyname('srtype').AsString ='2'   then //代表有買,但已不使用
//       dbgrdh4.canvas.font.color:=clRed;
//  dbgrdh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TBOMReceive_Check.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

//  if   Query1.Fieldbyname('fail').value = true   then //代表Fail
//       DBGrid1.canvas.font.color:=clRed;
//  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TBOMReceive_Check.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

  if (column.FieldName='Article') and (Qry_Wrong.Fieldbyname('JIJIE').AsString ='') then
     BEGIN
       DBGridEh1.Canvas.Font.Color := clred ;
     END;
  if (column.FieldName='Season') and (Qry_Wrong.Fieldbyname('JIJIE').AsString <> Qry_Wrong.Fieldbyname('Season').AsString )and (Qry_Wrong.Fieldbyname('JIJIE').AsString <>'') then
     BEGIN
       DBGridEh1.Canvas.Font.Color := clred ;
     END;
  if (column.FieldName='Stage') and (Qry_Wrong.Fieldbyname('JIJIE').AsString=Qry_Wrong.Fieldbyname('Season').AsString ) then
     BEGIN
       DBGridEh1.Canvas.Font.Color := clred ;
     END;


  DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);


//  if   Qry2.Fieldbyname('srtype').AsString ='2'   then //代表沒買的母件
//       DBGridEh1.canvas.font.color:=clblue;
//  if   Qry2.Fieldbyname('srtype').AsString ='3'   then //代表沒買的子件
//       DBGridEh1.canvas.font.color:=clFuchsia;
//  if   Qry2.Fieldbyname('srtype').AsString ='4'   then //代表沒買的其他件
//       DBGridEh1.canvas.font.color:=clAqua;
//  if   Qry2.Fieldbyname('fail').value = true   then //代表Fail
//       DBGridEh1.canvas.font.color:=clRed;
//  DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure CompressIt(var CompressedStream: TMemoryStream; const CompressionLevel: TCompressionLevel);

// 參數是傳遞的流和壓縮方式

var

   SourceStream: TCompressionStream;

   DestStream: TMemoryStream;

   Count: int64; //注意，此處修改了,原來是int

begin

   //獲得流的原始尺寸

   Count := CompressedStream.Size;

   DestStream := TMemoryStream.Create;

   SourceStream := TCompressionStream.Create(CompressionLevel, DestStream);

   try

      //SourceStream中保存著原始的流

      CompressedStream.SaveToStream(SourceStream);

      //將原始流進行壓縮， DestStream中保存著壓縮後的流

      SourceStream.Free;

      CompressedStream.Clear;

      //寫入原始圖像的尺寸

      CompressedStream.WriteBuffer(Count, SizeOf(Count));

      //寫入經過壓縮的流

      CompressedStream.CopyFrom(DestStream, 0);

   finally

      DestStream.Free;

   end;

end;

procedure UnCompressit(const CompressedStream: TMemoryStream; var UnCompressedStream: TMemoryStream);

//參數 壓縮過的流，解壓後的流

var

   SourceStream: TDecompressionStream;

   DestStream: TMemoryStream;

   Buffer: PChar;

   Count: int64;

begin

   //從被壓縮的圖像流中讀出原始的尺寸

   CompressedStream.ReadBuffer(Count, SizeOf(Count));

   //根據尺寸大小為將要讀入的原始流分配內存塊

   GetMem(Buffer, Count);

   DestStream := TMemoryStream.Create;

   SourceStream := TDecompressionStream.Create(CompressedStream);

   try

      //將被壓縮的流解壓縮，然後存入 Buffer內存塊中

      SourceStream.ReadBuffer(Buffer^, Count);

      //將原始流保存至 DestStream流中

      DestStream.WriteBuffer(Buffer^, Count);

      DestStream.Position := 0; //復位流指針

//      DestStream.Position := length(VER_INFO);

      //從 DestStream流中載入圖像流

      UnCompressedStream.LoadFromStream(DestStream);

   finally

      FreeMem(Buffer);

      DestStream.Free;

   end;

end;


procedure TBOMReceive_Check.Excel1Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
begin
  tdbgh := DBGridEh2;
  if (tdbgh is TDBGridEh) then
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,true);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;

end;

procedure TBOMReceive_Check.MenuItem1Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
begin
  tdbgh := DBGridEh4;
  if (tdbgh is TDBGridEh) then
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,true);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;

end;

procedure TBOMReceive_Check.MenuItem2Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
begin
  tdbgh := DBGridEh1;
  if (tdbgh is TDBGridEh) then
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,true);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;
end;

end.
