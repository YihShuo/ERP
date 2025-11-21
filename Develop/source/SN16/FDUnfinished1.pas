unit FDUnfinished1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, ComCtrls, StdCtrls, ExtCtrls,comobj,
  Dateutils,ehlibBDE, GridsEh, DBGridEh, DBCtrls, TeeProcs, TeEngine, Chart,
  TeeFunci, Series, DbChart, Mask, Menus,ShellAPI,DBGridEhImpExp, jpeg,
  Buttons;

type
  TFDUnfinished = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Query2: TQuery;
    PageControl1: TPageControl;
    TS_Purchaser: TTabSheet;
    DBGridEh8: TDBGridEh;
    DS_FD: TDataSource;
    Qry_FD: TQuery;
    Qry_FDNoETD: TIntegerField;
    Splitter4: TSplitter;
    PageControl3: TPageControl;
    TS_NoETD: TTabSheet;
    TS_NoPrice: TTabSheet;
    TS_NoETA: TTabSheet;
    TS_NoPurchase: TTabSheet;
    DBGridEh9: TDBGridEh;
    DBGridEh10: TDBGridEh;
    DBGridEh11: TDBGridEh;
    DBGridEh12: TDBGridEh;
    TS_Empty: TTabSheet;
    Qry_FD_NOFill: TQuery;
    DS_FD_NOFill: TDataSource;
    Qry_FD_PJM: TQuery;
    DS_Purchaser_NoPrice: TDataSource;
    Qry_FD_FIT: TQuery;
    DS_Purchaser_NoETA: TDataSource;
    Qry_FD_ERP: TQuery;
    DS_Purchaser_NoPurchase: TDataSource;
    Qry_FD_NOFillZSDH: TStringField;
    Qry_FD_NOFillzsjc: TStringField;
    Qry_FD_NOFillCLBH: TStringField;
    Qry_FD_NOFillYWPM: TStringField;
    Qry_FD_NOFillDWBH: TStringField;
    Qry_FD_NOFillqty: TCurrencyField;
    Qry_FD_NOFillCGDate: TDateTimeField;
    Qry_FD_NOFillCGNO: TStringField;
    Qry_FD_FITZSDH: TStringField;
    Qry_FD_FITzsjc: TStringField;
    Qry_FD_FITCLBH: TStringField;
    Qry_FD_FITYWPM: TStringField;
    Qry_FD_FITDWBH: TStringField;
    Qry_FD_FITqty: TCurrencyField;
    Qry_FD_FITCGDate: TDateTimeField;
    Qry_FD_FITCGNO: TStringField;
    Qry_FD_FITETD: TDateTimeField;
    Qry_FD_ERPZSDH: TStringField;
    Qry_FD_ERPzsjc: TStringField;
    Qry_FD_ERPclbh: TStringField;
    Qry_FD_ERPYWPM: TStringField;
    Qry_FD_ERPKFJD: TStringField;
    Qry_FD_ERPArticle: TStringField;
    Qry_FD_ERPFD: TStringField;
    Qry_FD_FITINVOICE: TStringField;
    Qry_FD_NOFillSTAGE: TStringField;
    Qry_FD_FITSTAGE: TStringField;
    Pop_FD: TPopupMenu;
    Excel1: TMenuItem;
    ckbsel: TCheckBox;
    SaveDialog1: TSaveDialog;
    Pop_Purchaser_NoETD: TPopupMenu;
    MenuPop_Purchaser_NoETD: TMenuItem;
    Pop_Purchaser_NoETA: TPopupMenu;
    MenuPop_Purchaser_NoETA: TMenuItem;
    Pop_Purchaser_NoPurchase: TPopupMenu;
    MenuPop_Purchaser_NoPurchase: TMenuItem;
    Qry_FD_ERPJiJie: TStringField;
    Qry_FD_PJMZSDH: TStringField;
    Qry_FD_PJMzsjc: TStringField;
    Qry_FD_PJMCLBH: TStringField;
    Qry_FD_PJMYWPM: TStringField;
    Qry_FD_PJMDWBH: TStringField;
    Qry_FD_PJMqty: TCurrencyField;
    Qry_FD_PJMCGDate: TDateTimeField;
    Qry_FD_PJMCGNO: TStringField;
    Qry_FD_PJMSTAGE: TStringField;
    Qry_FD_ERPcsbh: TStringField;
    Shape1: TShape;
    Label1: TLabel;
    Edit_Season: TEdit;
    Image1: TImage;
    TS_NoLT: TTabSheet;
    DBGrid1: TDBGridEh;
    Qry_FD_PUR: TQuery;
    Qry_FD_PURSEASON: TStringField;
    Qry_FD_PURCLBH: TStringField;
    Qry_FD_PURYWPM: TStringField;
    Qry_FD_PURDWBH: TStringField;
    Qry_FD_PURZSYWJC: TStringField;
    Qry_FD_PURSampleLeadTime: TIntegerField;
    Qry_FD_PURProdLeadTime: TIntegerField;
    Qry_FD_PURREMARK: TStringField;
    Qry_FD_PURZSBH: TStringField;
    DS_Purchaser_NoMOQ: TDataSource;
    Qry_FD_PURLocation: TStringField;
    Label6: TLabel;
    Qry_FD_ERPypzsjc: TStringField;
    Qry_FDFD: TStringField;
    Qry_FDPJM: TIntegerField;
    Qry_FDERP: TIntegerField;
    Qry_FDSuggestion: TIntegerField;
    Qry_FDALL: TIntegerField;
    Qry_FDFIT: TIntegerField;
    Qry_FDFDMIS: TIntegerField;
    Qry_FDPurMistake: TIntegerField;
    Qry_FDRename: TIntegerField;
   // Button4: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh8CellClick(Column: TColumnEh);
    procedure Excel1Click(Sender: TObject);
    procedure MenuPop_Purchaser_NoETDClick(Sender: TObject);
    procedure MenuPop_Purchaser_NoETAClick(Sender: TObject);
    procedure MenuPop_Purchaser_NoPurchaseClick(Sender: TObject);
    procedure PageControl1DrawTab(Control: TCustomTabControl;
      TabIndex: Integer; const Rect: TRect; Active: Boolean);
//    procedure Query1AfterScroll(DataSet: TDataSet);
 //   procedure FormDestroy(Sender: TObject);
  //  procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDUnfinished: TFDUnfinished;
  NDate:TDate;
  ayear,amonth:string;

implementation

uses main1;

{$R *.dfm}

procedure TFDUnfinished.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TFDUnfinished.FormCreate(Sender: TObject);
begin
with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    sql.Clear;
    active:=false;
  end;
  Button1Click(nil);
  {if  (main.edit1.text='ERIC') OR (main.edit1.text='GLENN') OR (main.edit1.text='00060') then
     Button4.Enabled:=true;   }
//DTP1.Date:=startofthemonth(Ndate)  ;
//DTP1.Date:=Ndate;
//DTP2.Date:=Ndate+3;
end;

procedure TFDUnfinished.Button1Click(Sender: TObject);
var
   year,month,day:word;
begin

Qry_FD_NOFill.Active:=false ;
Qry_FD_PJM.Active:=false ;
Qry_FD_FIT.Active:=false ;
Qry_FD_ERP.Active:=false ;
Qry_FD_PUR.Active:=false ;

//第一頁 Purchaser
 with Qry_FD do
  begin
    active:=false;
    sql.clear;
    sql.add('select  FD.FD ');
    sql.add('        ,isnull(AL.AL,0) as AL ');
    sql.add('        ,isnull(A.NOReason,0) as NOReason ');
    sql.add('        ,isnull(B.PJM,0) as PJM ');
    sql.add('        ,isnull(C.ERP,0) as ERP ');
    sql.add('        ,isnull(D.Suggestion,0) as Suggestion ');
    sql.add('        ,isnull(E.FIT,0) as FIT ');
    sql.add('        ,isnull(F.FDMIS,0) as FDMIS ');
    sql.add('        ,isnull(G.PurMistake,0) as PurMistake ');
    sql.add('        ,isnull(H.Rename,0) as Rename ');
    sql.add('    from (select KFXXZL.FD from KFXXZL ');
    sql.add('          WHERE KFXXZL.FD is not null  ');
    sql.add('                AND LEFT(KFXXZL.ARTICLE,4)<>'''+Edit_Season.Text+'''');
    sql.add('                AND KFXXZL.Jijie='''+Edit_Season.Text+'''');
    sql.add('          group by KFXXZL.FD ) FD ');

    sql.add('    left join ( ');
          //不在樣品單上卻有下採購單的材料
          sql.Add(' select xxzlkf.FD,COUNT(cgzlss.clbh) AS AL');
          sql.Add(' from cgzlss');
          sql.Add(' left join cgzls on cgzls.cgno=cgzlss.cgno and cgzls.clbh=cgzlss.clbh');
          sql.Add(' left join cgzl on cgzl.cgno=cgzlss.cgno');
          sql.Add(' left join kfxxzl on kfxxzl.article=cgzlss.zlbh');
          sql.add(' left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
          sql.Add(' left join MaterialChangeMEMO on MaterialChangeMEMO.ARTICLE=cgzlss.zlbh and MaterialChangeMEMO.CLBH=cgzlss.clbh and MaterialChangeMEMO.Stage=cgzlss.stage  ');
          sql.Add(' where left(cgzlss.clbh,1)<>''V''  and cgzlss.qty>0 and cgzlss.Stage<>''SEE'' and cgzlss.Stage<>''FES'' ');
//          sql.Add('       and  not (cgzlss.Stage=''PSE'' and left(cgzlss.clbh,3)=''J03'' ) ');
//          sql.Add('       and  not (cgzlss.Stage=''PSE'' and not exists (select ypzl.kfjd from ypzl where ypzl.kfjd=cgzlss.stage and ypzl.article=cgzlss.zlbh)  ) ');
          sql.Add('       and  not (cgzlss.Stage=''SM2'' and not exists (select ypzl.kfjd from ypzl where ypzl.kfjd=cgzlss.stage and ypzl.article=cgzlss.zlbh) )');
          sql.Add('       and  not (cgzlss.Stage=''PSE'' and not exists (select ypzl.kfjd from ypzl where ypzl.kfjd=cgzlss.stage and ypzl.article=cgzlss.zlbh) )');
          sql.Add('       and  not (cgzlss.Stage=''MCS'' and not exists (select ypzl.kfjd from ypzl where ypzl.kfjd=cgzlss.stage and ypzl.article=cgzlss.zlbh)  )');
          sql.Add('       and kfxxzl.jijie= '''+Edit_Season.Text+'''');
          sql.Add('       and left(cgzlss.zlbh,4)<> '''+Edit_Season.Text+'''');   //要避開LookSee的Article ,Ex: SS12SEE
          sql.Add('       and not exists (');
          sql.Add('                 select * from ypzls ');
          sql.Add('                 left join ypzl on ypzl.ypdh=ypzls.ypdh');
          sql.Add('                 where ypzl.kfjd=cgzlss.stage');
          sql.Add('                       and ypzl.article=cgzlss.zlbh');
          sql.Add('                       and ypzls.clbh=cgzlss.clbh)');
          sql.Add('       and not exists (');
          sql.Add('                 select * from ypzls');
          sql.Add('                 INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh');
          sql.Add('                 left join ypzl on ypzl.ypdh=ypzls.ypdh');
          sql.Add('                 where ypzl.kfjd=cgzlss.stage');
          sql.Add('                       and ypzl.article=cgzlss.zlbh');
          sql.Add('                       and CLZHZL.CLDH1=cgzlss.clbh)');
    sql.add('             GROUP BY xxzlkf.FD ');
    sql.add('              ) AL on AL.FD = FD.FD ');
    sql.add('    left join ( ');
          //不在樣品單上卻有下採購單的材料
          sql.Add(' select xxzlkf.FD,COUNT(cgzlss.clbh) AS NOReason');
          sql.Add(' from cgzlss');
          sql.Add(' left join cgzls on cgzls.cgno=cgzlss.cgno and cgzls.clbh=cgzlss.clbh');
          sql.Add(' left join cgzl on cgzl.cgno=cgzlss.cgno');
          sql.Add(' left join kfxxzl on kfxxzl.article=cgzlss.zlbh');
          sql.add(' left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
          sql.Add(' left join MaterialChangeMEMO on MaterialChangeMEMO.ARTICLE=cgzlss.zlbh and MaterialChangeMEMO.CLBH=cgzlss.clbh and MaterialChangeMEMO.Stage=cgzlss.stage  ');
          sql.Add(' where (MaterialChangeMEMO.Responsibility is null or MaterialChangeMEMO.Responsibility='''') and left(cgzlss.clbh,1)<>''V''  and cgzlss.qty>0 and cgzlss.Stage<>''SEE'' and cgzlss.Stage<>''FES'' ');
//          sql.Add('       and  not (cgzlss.Stage=''PSE'' and left(cgzlss.clbh,3)=''J03'' ) ');
//          sql.Add('       and  not (cgzlss.Stage=''PSE'' and not exists (select ypzl.kfjd from ypzl where ypzl.kfjd=cgzlss.stage and ypzl.article=cgzlss.zlbh)  ) ');
          sql.Add('       and  not (cgzlss.Stage=''SM2'' and not exists (select ypzl.kfjd from ypzl where ypzl.kfjd=cgzlss.stage and ypzl.article=cgzlss.zlbh) )');
          sql.Add('       and  not (cgzlss.Stage=''PSE'' and not exists (select ypzl.kfjd from ypzl where ypzl.kfjd=cgzlss.stage and ypzl.article=cgzlss.zlbh) )');
          sql.Add('       and  not (cgzlss.Stage=''MCS'' and not exists (select ypzl.kfjd from ypzl where ypzl.kfjd=cgzlss.stage and ypzl.article=cgzlss.zlbh)  )');

          sql.Add('       and kfxxzl.jijie= '''+Edit_Season.Text+'''');
          sql.Add('       and left(cgzlss.zlbh,4)<> '''+Edit_Season.Text+'''');   //要避開LookSee的Article ,Ex: SS12SEE
          sql.Add('       and not exists (');
          sql.Add('                 select * from ypzls ');
          sql.Add('                 left join ypzl on ypzl.ypdh=ypzls.ypdh');
          sql.Add('                 where ypzl.kfjd=cgzlss.stage');
          sql.Add('                       and ypzl.article=cgzlss.zlbh');
          sql.Add('                       and ypzls.clbh=cgzlss.clbh)');
          sql.Add('       and not exists (');
          sql.Add('                 select * from ypzls');
          sql.Add('                 INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh');
          sql.Add('                 left join ypzl on ypzl.ypdh=ypzls.ypdh');
          sql.Add('                 where ypzl.kfjd=cgzlss.stage');
          sql.Add('                       and ypzl.article=cgzlss.zlbh');
          sql.Add('                       and CLZHZL.CLDH1=cgzlss.clbh)');
    sql.add('             GROUP BY xxzlkf.FD ');
    sql.add('              ) A on A.FD = FD.FD ');
    sql.add('    left join ( select xxzlkf.FD,count(*) as PJM from MaterialChangeMEMO ');
    sql.add('                left join kfxxzl on kfxxzl.article=MaterialChangeMEMO.Article ');
    sql.add('                left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao ');
    sql.add('                where  kfxxzl.jijie= '''+Edit_Season.Text+'''');
    sql.add('                       AND MaterialChangeMEMO.Responsibility=''PJM Request'' ');
    sql.add('                GROUP BY xxzlkf.FD  ');
    sql.add('              ) B on B.FD = FD.FD ');
    sql.add('    left join ( select xxzlkf.FD,count(*) as ERP from MaterialChangeMEMO ');
    sql.add('                left join kfxxzl on kfxxzl.article=MaterialChangeMEMO.Article ');
    sql.add('                left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao ');
    sql.add('                where  kfxxzl.jijie= '''+Edit_Season.Text+'''');
    sql.add('                       AND MaterialChangeMEMO.Responsibility=''ERP Mistake'' ');
    sql.add('                GROUP BY xxzlkf.FD  ');
    sql.add('              ) C on C.FD = FD.FD ');
    sql.add('    left join ( select xxzlkf.FD,count(*) as Suggestion from MaterialChangeMEMO ');
    sql.add('                left join kfxxzl on kfxxzl.article=MaterialChangeMEMO.Article ');
    sql.add('                left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao ');
    sql.add('                where  kfxxzl.jijie= '''+Edit_Season.Text+'''');
    sql.add('                       AND MaterialChangeMEMO.Responsibility=''FD Suggestion'' ');
    sql.add('                GROUP BY xxzlkf.FD  ');
    sql.add('              ) D on D.FD = FD.FD ');
    sql.add('    left join ( select xxzlkf.FD,count(*) as FIT from MaterialChangeMEMO ');
    sql.add('                left join kfxxzl on kfxxzl.article=MaterialChangeMEMO.Article ');
    sql.add('                left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao ');
    sql.add('                where  kfxxzl.jijie= '''+Edit_Season.Text+'''');
    sql.add('                       AND MaterialChangeMEMO.Responsibility=''Fit/Wear Request'' ');
    sql.add('                GROUP BY xxzlkf.FD  ');
    sql.add('              ) E on E.FD = FD.FD ');
    sql.add('    left join ( select xxzlkf.FD,count(*) as FDMIS from MaterialChangeMEMO ');
    sql.add('                left join kfxxzl on kfxxzl.article=MaterialChangeMEMO.Article ');
    sql.add('                left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao ');
    sql.add('                where  kfxxzl.jijie= '''+Edit_Season.Text+'''');
    sql.add('                       AND MaterialChangeMEMO.Responsibility=''FD Mistake'' ');
    sql.add('                GROUP BY xxzlkf.FD  ');
    sql.add('              ) F on F.FD = FD.FD ');
    sql.add('    left join ( select xxzlkf.FD,count(*) as PurMistake from MaterialChangeMEMO ');
    sql.add('                left join kfxxzl on kfxxzl.article=MaterialChangeMEMO.Article ');
    sql.add('                left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao ');
    sql.add('                where  kfxxzl.jijie= '''+Edit_Season.Text+'''');
    sql.add('                       AND MaterialChangeMEMO.Responsibility=''Purchase Mistake'' ');
    sql.add('                GROUP BY xxzlkf.FD  ');
    sql.add('              ) G on G.FD = FD.FD ');
    sql.add('    left join ( select xxzlkf.FD,count(*) as Rename from MaterialChangeMEMO ');
    sql.add('                left join kfxxzl on kfxxzl.article=MaterialChangeMEMO.Article ');
    sql.add('                left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao ');
    sql.add('                where  kfxxzl.jijie= '''+Edit_Season.Text+'''');
    sql.add('                       AND MaterialChangeMEMO.Responsibility=''Mat Rename'' ');
    sql.add('                GROUP BY xxzlkf.FD  ');
    sql.add('              ) H on H.FD = FD.FD ');

//    sql.add('       WHERE XXZLKF.FD is not null  ');
//    sql.add('             AND KFXXZL.Jijie='''+Edit_Season.Text+'''');
//    sql.add('       group by XXZLKF.FD,AL.AL,A.NOReason ,B.PJM,C.ERP,D.Suggestion,E.FIT,F.FDMIS,G.PurMistake,H.Rename  ');
    sql.add('order by A.NOReason ');

    Active := True;
  end;

  //Qry_Purchaser_NOPrice.Active:=True ;
  //Qry_Purchaser_NOETD.Active:=True ;
  //Qry_Purchaser_NOETA.Active:=True ;
  //Qry_Purchaser_NOPurchase.Active:=false ;
  {
 with Qry_Purchaser_NOPurchase do
  begin
    active:=false;
    sql.clear;
    sql.add('   select ZSZL.ZSDH,ZSZL.zsjc,ypzls.clbh,CLZL.YWPM,ypzl.KFJD,kfxxzl.Article,xxzlkf.FD,kfxxzl.JiJie,ypzls.csbh,zszlyp.Zsywjc as ypzsjc from ypzls   ');
    sql.add('   left join ypzl on ypzl.ypdh=ypzls.ypdh ');
    sql.add('   left join (select Zsdh_TW,Max(ZSZL.ZSDH) as ZSDH from zszl where SamplePurchaser is not null and SamplePurchaser<>'''' group by Zsdh_TW) zszlSample on zszlSample.Zsdh_TW=ypzls.csbh ');
    sql.add('   left join zszl on zszl.ZSDH=zszlSample.ZSDH ');
    sql.add('   left join zszl zszlyp on zszlyp.ZSDH=ypzls.csbh ');
    sql.add('   left join clzl on clzl.cldh=ypzls.clbh ');
    sql.add('   left join zszlfilter on zszlfilter.zsdh=ypzls.csbh ');
    sql.add('   left join clzlfilter on clzlfilter.cldh=ypzls.clbh ');
    sql.add('   left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
    sql.add('   left join xxzlkf on xxzlkf.xiexing=kfxxzl.xiexing and xxzlkf.shehao=kfxxzl.shehao ');
    sql.add('   left join (select ZLBH,CLBH,QTY from cgkcuse ');
    sql.add('              where cgkcuse.GSBH=''R&D'' ');
    sql.add('              ) da on ypzls.ypdh=da.zlbh AND ypzls.CLBH=da.CLBH ');
    sql.add('   where da.qty is null and not exists(select cgno from CGZLSS where CGZLSS.ZLBH=kfxxzl.article and CGZLSS.Stage=ypzl.KFJD and CGZLSS.clbh=ypzls.clbh ) ');
    sql.add('         and kfxxzl.Jijie ='+''''+ Edit_Season.Text+''''   );
    sql.add('         and (ypzl.KFJD=''CR1'' or ypzl.KFJD=''CR2'' or ypzl.KFJD=''SMS'' or ypzl.KFJD=''SMU'' ) ');
    sql.add('         and zszlfilter.zsdh is null ');
    sql.add('         and clzlfilter.cldh is null ');
    sql.add('         and ypzls.clbh<> ''O040000031''');
    sql.add('         and clzl.clzmlb = ''N'' ');
    sql.add('         and isnull(ZSZL.SamplePurchaser,'''')=:SamplePurchaser ');
    sql.add('         group by ZSZL.ZSDH,ZSZL.zsjc,ypzls.clbh,CLZL.YWPM,ypzl.KFJD,kfxxzl.Article,xxzlkf.FD,kfxxzl.JiJie,ypzls.csbh ,zszlyp.Zsywjc ');
    sql.add('   union all ');
    sql.add('   select ZSZL.ZSDH,ZSZL.zsjc,CLZHZL.CLDH1 AS CLBH,CLZL.YWPM,ypzl.KFJD,kfxxzl.Article,xxzlkf.FD,kfxxzl.JiJie,CLZHZL.ZSDH as csbh ,zszlyp.Zsywjc as ypzsjc from ypzls ');
    sql.add('   INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh ');
    sql.add('   left join ypzl on ypzl.ypdh=ypzls.ypdh ');
    sql.add('   left join (select Zsdh_TW,Max(ZSZL.ZSDH) as ZSDH from zszl where SamplePurchaser is not null and SamplePurchaser<>'''' group by Zsdh_TW) zszlSample on zszlSample.Zsdh_TW=CLZHZL.ZSDH ');
    sql.add('   left join zszl on zszl.ZSDH=zszlSample.ZSDH ');
    sql.add('   left join zszl zszlyp on zszlyp.ZSDH=CLZHZL.ZSDH ');
    sql.add('   left join clzl on clzl.cldh=CLZHZL.CLDH1 ');
    sql.add('   left join zszlfilter on zszlfilter.zsdh=ypzls.csbh ');
    sql.add('   left join clzlfilter on clzlfilter.cldh=CLZHZL.CLDH1 ');
    sql.add('   left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
    sql.add('   left join xxzlkf on xxzlkf.xiexing=kfxxzl.xiexing and xxzlkf.shehao=kfxxzl.shehao ');
    sql.add('   left join (select ZLBH,CLBH,QTY from cgkcuse ');
    sql.add('              where cgkcuse.GSBH=''R&D'' ');
    sql.add('              ) da on ypzls.ypdh=da.zlbh AND CLZHZL.CLDH1=da.CLBH ');
    sql.add('         where da.qty is null                     ');
    sql.add('         and kfxxzl.Jijie ='+''''+ Edit_Season.Text+''''   );
    sql.add('         and (ypzl.KFJD=''CR1'' or ypzl.KFJD=''CR2'' or ypzl.KFJD=''SMS'' or ypzl.KFJD=''SMU'' ) ');
    sql.add('         and not exists (select ypzls.ypdh from ypzls ');
    sql.add('                        left join ypzl on ypzl.ypdh=ypzls.ypdh ');
    sql.add('                        left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
    sql.add('                        where 1=1 ');
    sql.add('                           and kfxxzl.Jijie ='+''''+ Edit_Season.Text+''''   );
    sql.add('                           AND YPZLS.CLBH=CLZHZL.CLDH1 ');
    sql.add('                         ) ');
    sql.add('       and not exists(select cgno from CGZLSS where CGZLSS.ZLBH=kfxxzl.article and CGZLSS.Stage=ypzl.KFJD and CGZLSS.clbh=CLZHZL.CLDH1 ) ');
    sql.add('       and CLZHZL.syl > 0 ');
    sql.add('       and zszlfilter.zsdh is null ');
    sql.add('       and clzlfilter.cldh is null ');
    sql.add('       and clzl.clzmlb = ''N'' ');
    sql.add('       and isnull(ZSZL.SamplePurchaser,'''')=:SamplePurchaser ');
    sql.add('       group by ZSZL.ZSDH,ZSZL.zsjc,CLZHZL.CLDH1 ,CLZL.YWPM,ypzl.KFJD,kfxxzl.Article,xxzlkf.FD,kfxxzl.JiJie,CLZHZL.ZSDH ,zszlyp.Zsywjc');
    //Active := True;
  end;
 }
// Qry_Purchaser_NOMOQ.Active:=false ;
{
 with Qry_Purchaser_NOMOQ do
  begin
    active:=false;
    sql.clear;
    sql.add('select CG.SEASON,CG.CLBH,CG.ZSBH,CLZL.YWPM,CLZL.DWBH,CG.ZSYWJC, ');
    sql.add('       MaterialMOQ.SampleLeadTime,MaterialMOQ.ProdLeadTime,');
    sql.add('       MaterialMOQ.REMARK,MaterialMOQ.Location');
    sql.add('from ( select CGZL.SEASON,CGZLS.CLBH,CGZl.ZSBH,ZSZL.ZSYWJC from CGZLS ');
    sql.add('       left join CGZL on CGZl.CGNO=CGZLS.CGNO  ');
    sql.Add('       left join zszl on zszl.zsdh=CGZL.ZSBH ');
    sql.add('       where LEFT(CGZLS.CLBH,1)<>''V'' ');
    sql.add('                AND CGZL.CGLX=''6'' and CGZLS.Qty>0  ');
    sql.add('                AND CGZL.SEASON='+''''+Edit_Season.Text+'''');
    sql.add('                and ZSZL.SamplePurchaser=:SamplePurchaser  ');
    sql.add('        group by CGZL.SEASON,CGZLS.CLBH,CGZl.ZSBH,ZSZL.ZSYWJC ) CG  ');
    sql.add('left join CLZL on CLZl.CLDH=CG.CLBH ');
    sql.add('left join MaterialMOQ  on CG.CLBH=MaterialMOQ.CLBH and CG.ZSBH=MaterialMOQ.ZSBH and CG.SEASON=MaterialMOQ.SEASON ');
    sql.add('where ( MaterialMOQ.ProdLeadTime is null  ');
    sql.add('         or MaterialMOQ.Location is null  ) ');
    //Active := True;
  end;
}
end;

procedure TFDUnfinished.FormDestroy(Sender: TObject);
begin
  FDUnfinished:=nil;
end;

procedure TFDUnfinished.DBGridEh8CellClick(Column: TColumnEh);
begin
{
 if  Column.FieldName='NoETD' then
     PageControl3.ActivePageIndex:=1 ;
 if  Column.FieldName='NoPrice' then
     PageControl3.ActivePageIndex:=2 ;
 if  Column.FieldName='NoETA' then
     PageControl3.ActivePageIndex:=3 ;
 if  Column.FieldName='NoPurchase' then
     PageControl3.ActivePageIndex:=4 ;
 if  Column.FieldName='NoMOQ' then
     PageControl3.ActivePageIndex:=5 ;
 if  (Column.FieldName='SamplePurchaser') or (Column.FieldName='SamplePurchaser_Name') then
     PageControl3.ActivePageIndex:=0 ;
}
end;

procedure TFDUnfinished.Excel1Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
 begin
tdbgh := DBGridEh8  ;

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
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,not ckbsel.Checked);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;

end;

procedure TFDUnfinished.MenuPop_Purchaser_NoETDClick(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
 begin
tdbgh := DBGridEh9  ;

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
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,not ckbsel.Checked);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;

end;

procedure TFDUnfinished.MenuPop_Purchaser_NoETAClick(
  Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
 begin
tdbgh := DBGridEh11  ;

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
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,not ckbsel.Checked);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;


end;

procedure TFDUnfinished.MenuPop_Purchaser_NoPurchaseClick(
  Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
 begin
tdbgh := DBGridEh12  ;

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
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,not ckbsel.Checked);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;

end;

procedure TFDUnfinished.PageControl1DrawTab(
  Control: TCustomTabControl; TabIndex: Integer; const Rect: TRect;
  Active: Boolean);
var   
      TmpRect:   TRect;   
      c: TCanvas;
begin

      with   PageControl1.Canvas   do
      begin
          Brush.Color   :=   clSkyBlue;   
          Font.Color   :=   clBlack;
          FillRect(Rect);   
          TmpRect   :=   Rect;
          OffsetRect(TmpRect,   0,   3);
//          DrawText(Handle,   PChar(PageControl2.Pages[TabIndex].Caption),   -1,   TmpRect,   DT_CENTER   or   DT_VCENTER);
      end;

    c := PageControl1.Canvas;

    case TabIndex of
    0:begin
        c.Brush.Color := clBtnFace; // 底色
        c.Font.Color := clBlack; // 字色
        end;
    1:begin
        c.Brush.Color := clOlive; // 底色
        c.Font.Color := clWhite; // 字色
        end;
    2:begin
        c.Brush.Color := clMaroon;
        c.Font.Color := clWhite;
        end;
    3:begin
        c.Brush.Color := clTeal;
        c.Font.Color := clWhite;
        end;
    4:begin
        c.Brush.Color := clInactiveCaption;
        c.Font.Color := clWhite;
        end;
    5:begin
        c.Brush.Color :=clFuchsia;
        c.Font.Color := clBlack;
        end;

    end;
    c.FillRect(Rect);
    c.TextOut(Rect.Left + 3, Rect.Top +2, PageControl1.Pages[TabIndex].Caption);


end;

end.
