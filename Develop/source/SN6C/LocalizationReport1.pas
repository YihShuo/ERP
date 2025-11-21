unit LocalizationReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, ComCtrls, StdCtrls, DBCtrls, Grids, DBGrids, Mask,
  Buttons, ExtCtrls, GridsEh, DBGridEh,comobj, Menus, iniFiles;

type
  TLocalizationReport = class(TForm)
    startcfm: TQuery;
    QryIMAGE: TQuery;
    QryIMAGEArticle: TStringField;
    QryIMAGEDEVCODE: TStringField;
    QryIMAGEFD: TStringField;
    QryIMAGExiexing: TStringField;
    QryIMAGEshehao: TStringField;
    IMAGE: TDataSource;
    Panel11: TPanel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label221: TLabel;
    Label272: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ComboBox2: TComboBox;
    DBGridEh2: TDBGridEh;
    Button1: TButton;
    Label105: TLabel;
    Label106: TLabel;
    ptVN: TLabel;
    qtyVN: TLabel;
    QryIMAGEpt: TFloatField;
    QryIMAGEptR1: TFloatField;
    QryIMAGEptR2: TFloatField;
    QryIMAGEptCFM: TFloatField;
    QryIMAGEYPDH: TStringField;
    Label1: TLabel;
    ComboBox3: TComboBox;
    Button2: TButton;
    QryIMAGEjijie: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure QryIMAGEAfterOpen(DataSet: TDataSet);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LocalizationReport: TLocalizationReport;

implementation

uses main1;

{$R *.dfm}

procedure TLocalizationReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TLocalizationReport.FormDestroy(Sender: TObject);
begin
  LocalizationReport:=nil;
end;

procedure TLocalizationReport.FormCreate(Sender: TObject);
begin
  with startcfm do
  begin
     active:=false;
     sql.Clear;
     sql.add('select jijie from kfxxzl');
     SQL.add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH');
     sql.add('where FD is not null and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');
     SQL.add('and right(left(jijie,2),2) between ''16'' and ''50'' ');
     SQL.Add('AND LEN(jijie) < 4 ');
     sql.add('group by jijie');
     sql.add('order by jijie desc');
     active:=true;
     combobox1.items.clear;
     while not eof do
     begin
       combobox1.items.add(fieldbyname('jijie').asstring );
       next;
     end;
  end;
  combobox1.ItemIndex:=0;
  combobox2.ItemIndex:=0;
  combobox3.ItemIndex:=0;
end;

procedure TLocalizationReport.Button1Click(Sender: TObject);
begin
  with qryimage do
  begin
    Active := false;
    SQL.Clear;
    
    //CFM
    SQL.Add('IF OBJECT_ID(''tempdb..#ptVNCFM'') IS NOT NULL ');
    SQL.Add('BEGIN DROP TABLE #ptVNCFM END ');
    
    SQL.Add('select CFM.XieXing, CFM.SheHao, YPZL.YPDH, pt INTO #ptVNCFM from CFM ');
    SQL.Add('left join kfxxzl on CFM.xiexing=kfxxzl.xiexing and CFM.shehao=kfxxzl.shehao ');
    SQL.Add('left join xxzl on CFM.xiexing=xxzl.xiexing and CFM.shehao=xxzl.shehao ');
    SQL.Add('left join ypzl on CFM.xiexing=ypzl.xiexing and CFM.shehao=ypzl.shehao ');
    SQL.Add('left join xxzlkf on CFM.xiexing=xxzlkf.xiexing and CFM.shehao=xxzlkf.shehao ');
    SQL.Add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH ');
    SQL.Add('left join (select YPDH, case when isnull(count(cqdh),0)<>0 then ROUND(CONVERT(FLOAT,sum(dem))/CONVERT(FLOAT,count(cqdh))*100, 1) else 0 end as pt from ( ');
    SQL.Add('             select YPDH,CQDH, case when cqdh=''VN'' then 1 else 0 end as dem from ( ');
    SQL.Add('               select ypzls.YPDH,ypzls.BWBH ,ypzls.CLBH ,clzl.CQDH from ypzls ');
    SQL.Add('               LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
    SQL.Add('               LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
    SQL.Add('               LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh ');
    SQL.Add('               LEFT JOIN zszl_dev ON zszl_dev.zsdh = zszl.zsdh and zszl_dev.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('               union all ');
    SQL.Add('               select ypzls.YPDH,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH ,clzl.CQDH from ypzls ');
    SQL.Add('               Left join clzhzl ON ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('               left join clzhzl_dev ON clzhzl.cldh = clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('               LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
    SQL.Add('               LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('               LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('               LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
    SQL.Add('               LEFT JOIN zszl_dev zszl_devV ON zszl_devV.zsdh = zszl.zsdh and zszl_devV.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('               WHERE CLZHZL.SYL>0 ');
    SQL.Add('               union all ');
    SQL.Add('               Select clzhzl2.YPDH,clzhzl2.Relation+''1'' as Relation ,clzhzl.CLDH1 as CLBH,clzl.CQDH from ( ');
    SQL.Add('                 SELECT ypzls.YPDH,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH ,clzl.CQDH from ypzls ');
    SQL.Add('                 inner join clzhzl ON ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('                 LEFT JOIN clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('                 LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
    SQL.Add('                 LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('                 LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('                 LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
    SQL.Add('                 LEFT JOIN zszl_dev zszl_devV ON zszl_devV.zsdh = zszl.zsdh and zszl_devV.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('                 WHERE CLZHZL.SYL>0 and clzl.clzmlb=''Y'' ) clzhzl2 ');
    SQL.Add('               inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
    SQL.Add('               left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('               left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('               LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('               LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ) YPZLS ');
    SQL.Add('             ) PT group by YPDH ');
    SQL.Add('           ) YPZLS on ypzl.ypdh=ypzls.ypdh ');
    SQL.Add('where ypzl.ypdh LIKE ''LAI%'' and kfxxzl.devcode <>'''' ');
    SQL.add('      and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('      and (xxzlkf.dropped <>''1'' or xxzlkf.dropped is null) ');
    SQL.Add('      and (xxzlkf.transfer <>''1'' or xxzlkf.transfer is null) ');
    SQL.Add('      and kfxxzl.xieming not like ''%NULLIFY%'' and kfxxzl.xieming not like ''%NULIFY%'' ');
    SQL.Add('      and ypzl.kfjd = ''CFM'' ');
    if combobox1.Text <> '' then
      SQL.add('    and kfxxzl.jijie like '''+'%'+combobox1.Text+'%'+''' ');
    if combobox2.Text <> '' then
      SQL.add('    and kfxxzl.devtype like '''+'%'+combobox2.Text+'%'+''' ');
    if edit1.Text <> '' then
      SQL.add('    and kfxxzl.devcode like '''+'%'+edit1.Text+'%'+''' ');
    if edit2.Text <> '' then
      SQL.add('    and kfxxzl.Article like '''+'%'+edit2.Text+'%'+''' ');
    if edit3.Text <> '' then
      SQL.add('    and ypzl.ypdh like '''+'%'+edit3.Text+'%'+''' ');

    //R1
    SQL.Add('IF OBJECT_ID(''tempdb..#ptVNR1'') IS NOT NULL ');
    SQL.Add('BEGIN DROP TABLE #ptVNR1 END ');

    SQL.Add('select ypzl.ypdh, R1Sample.xiexing,R1Sample.shehao,pt INTO #ptVNR1 from R1Sample ');
    SQL.Add('left join kfxxzl on R1Sample.xiexing=kfxxzl.xiexing and R1Sample.shehao=kfxxzl.shehao ');
    SQL.Add('left join xxzlkf on R1Sample.xiexing=xxzlkf.xiexing and R1Sample.shehao=xxzlkf.shehao ');
    SQL.Add('left join Fdgroups on Fdgroups.fdname=kfxxzl.FD ');
    SQL.Add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH ');
    SQL.Add('left join ypzl on ypzl.xiexing=R1Sample.xiexing and ypzl.shehao=R1Sample.shehao ');
    SQL.Add('left join (select YPDH, case when isnull(count(cqdh),0)<>0 then ROUND(CONVERT(FLOAT,sum(dem))/CONVERT(FLOAT,count(cqdh))*100, 1) else 0 end as pt from ( ');
    SQL.Add('             select YPDH,CQDH, case when cqdh=''VN'' then 1 else 0 end as dem from ( ');
    SQL.Add('               select ypzls.YPDH,ypzls.BWBH ,ypzls.CLBH ,clzl.CQDH from ypzls ');
    SQL.Add('               LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
    SQL.Add('               LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
    SQL.Add('               LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh ');
    SQL.Add('               LEFT JOIN zszl_dev ON zszl_dev.zsdh = zszl.zsdh and zszl_dev.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('               union all ');
    SQL.Add('               select ypzls.YPDH,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH ,clzl.CQDH from ypzls ');
    SQL.Add('               Left join clzhzl ON ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('               left join clzhzl_dev ON clzhzl.cldh = clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('               LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
    SQL.Add('               LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('               LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('               LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
    SQL.Add('               LEFT JOIN zszl_dev zszl_devV ON zszl_devV.zsdh = zszl.zsdh and zszl_devV.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('               WHERE CLZHZL.SYL>0 ');
    SQL.Add('               union all ');
    SQL.Add('               Select clzhzl2.YPDH,clzhzl2.Relation+''1'' as Relation ,clzhzl.CLDH1 as CLBH,clzl.CQDH from ( ');
    SQL.Add('                 SELECT ypzls.YPDH,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH ,clzl.CQDH from ypzls ');
    SQL.Add('                 inner join clzhzl ON ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('                 LEFT JOIN clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('                 LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
    SQL.Add('                 LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('                 LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('                 LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
    SQL.Add('                 LEFT JOIN zszl_dev zszl_devV ON zszl_devV.zsdh = zszl.zsdh and zszl_devV.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('                 WHERE CLZHZL.SYL>0 and clzl.clzmlb=''Y'' ) clzhzl2 ');
    SQL.Add('               inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
    SQL.Add('               left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('               left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('               LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('               LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ) YPZLS ');
    SQL.Add('             ) PT group by YPDH ');
    SQL.Add('           ) YPZLS on ypzl.ypdh=ypzls.ypdh ');
    SQL.Add('where ypzl.ypdh LIKE ''LAI%'' and kfxxzl.devcode <>'''' ');
    SQL.add('      and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('      and (xxzlkf.dropped <>''1'' or xxzlkf.dropped is null) ');
    SQL.Add('      and (xxzlkf.transfer <>''1'' or xxzlkf.transfer is null) ');
    SQL.Add('      and kfxxzl.xieming not like ''%NULLIFY%'' and kfxxzl.xieming not like ''%NULIFY%'' ');
    SQL.Add('      and ypzl.kfjd = ''CR1'' ');
    if combobox1.Text <> '' then
      SQL.add('    and kfxxzl.jijie like '''+'%'+combobox1.Text+'%'+''' ');
    if combobox2.Text <> '' then
      SQL.add('    and kfxxzl.devtype like '''+'%'+combobox2.Text+'%'+''' ');
    if edit1.Text <> '' then
      SQL.add('    and kfxxzl.devcode like '''+'%'+edit1.Text+'%'+''' ');
    if edit2.Text <> '' then
      SQL.add('    and kfxxzl.Article like '''+'%'+edit2.Text+'%'+''' ');
    if edit3.Text <> '' then
      SQL.add('    and ypzl.ypdh like '''+'%'+edit3.Text+'%'+''' ');
    SQL.Add('group by ypzl.ypdh,R1Sample.xiexing,R1Sample.shehao,pt ');

    //R2
    SQL.Add('IF OBJECT_ID(''tempdb..#ptVNR2'') IS NOT NULL ');
    SQL.Add('BEGIN DROP TABLE #ptVNR2 END ');

    SQL.Add('select ypzl.ypdh, R2Sample.xiexing,R2Sample.shehao,pt INTO #ptVNR2 from R2Sample ');
    SQL.Add('left join kfxxzl on R2Sample.xiexing=kfxxzl.xiexing and R2Sample.shehao=kfxxzl.shehao ');
    SQL.Add('left join xxzlkf on R2Sample.xiexing=xxzlkf.xiexing and R2Sample.shehao=xxzlkf.shehao ');
    SQL.Add('left join Fdgroups on Fdgroups.fdname=kfxxzl.FD ');
    SQL.Add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH ');
    SQL.Add('left join ypzl on ypzl.xiexing=R2Sample.xiexing and ypzl.shehao=R2Sample.shehao ');
    SQL.Add('left join (select YPDH, case when isnull(count(cqdh),0)<>0 then ROUND(CONVERT(FLOAT,sum(dem))/CONVERT(FLOAT,count(cqdh))*100, 1) else 0 end as pt from ( ');
    SQL.Add('             select YPDH,CQDH, case when cqdh=''VN'' then 1 else 0 end as dem from ( ');
    SQL.Add('               select ypzls.YPDH,ypzls.BWBH ,ypzls.CLBH ,clzl.CQDH from ypzls ');
    SQL.Add('               LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
    SQL.Add('               LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
    SQL.Add('               LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh ');
    SQL.Add('               LEFT JOIN zszl_dev ON zszl_dev.zsdh = zszl.zsdh and zszl_dev.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('               union all ');
    SQL.Add('               select ypzls.YPDH,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH ,clzl.CQDH from ypzls ');
    SQL.Add('               Left join clzhzl ON ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('               left join clzhzl_dev ON clzhzl.cldh = clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('               LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
    SQL.Add('               LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('               LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('               LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
    SQL.Add('               LEFT JOIN zszl_dev zszl_devV ON zszl_devV.zsdh = zszl.zsdh and zszl_devV.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('               WHERE CLZHZL.SYL>0 ');
    SQL.Add('               union all ');
    SQL.Add('               Select clzhzl2.YPDH,clzhzl2.Relation+''1'' as Relation ,clzhzl.CLDH1 as CLBH,clzl.CQDH from ( ');
    SQL.Add('                 SELECT ypzls.YPDH,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH ,clzl.CQDH from ypzls ');
    SQL.Add('                 inner join clzhzl ON ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('                 LEFT JOIN clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('                 LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
    SQL.Add('                 LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('                 LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('                 LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
    SQL.Add('                 LEFT JOIN zszl_dev zszl_devV ON zszl_devV.zsdh = zszl.zsdh and zszl_devV.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('                 WHERE CLZHZL.SYL>0 and clzl.clzmlb=''Y'' ) clzhzl2 ');
    SQL.Add('               inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
    SQL.Add('               left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('               left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('               LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('               LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ) YPZLS ');
    SQL.Add('             ) PT group by YPDH ');
    SQL.Add('           ) YPZLS on ypzl.ypdh=ypzls.ypdh ');
    SQL.Add('where ypzl.ypdh LIKE ''LAI%'' and kfxxzl.devcode <>'''' ');
    SQL.add('      and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('      and (xxzlkf.dropped <>''1'' or xxzlkf.dropped is null) ');
    SQL.Add('      and (xxzlkf.transfer <>''1'' or xxzlkf.transfer is null) ');
    SQL.Add('      and kfxxzl.xieming not like ''%NULLIFY%'' and kfxxzl.xieming not like ''%NULIFY%'' ');
    SQL.Add('      and ypzl.kfjd = ''CR2'' ');
    if combobox1.Text <> '' then
      SQL.add('    and kfxxzl.jijie like '''+'%'+combobox1.Text+'%'+''' ');
    if combobox2.Text <> '' then
      SQL.add('    and kfxxzl.devtype like '''+'%'+combobox2.Text+'%'+''' ');
    if edit1.Text <> '' then
      SQL.add('    and kfxxzl.devcode like '''+'%'+edit1.Text+'%'+''' ');
    if edit2.Text <> '' then
      SQL.add('    and kfxxzl.Article like '''+'%'+edit2.Text+'%'+''' ');
    if edit3.Text <> '' then
      SQL.add('    and ypzl.ypdh like '''+'%'+edit3.Text+'%'+''' ');
    SQL.Add('group by ypzl.ypdh,R2Sample.xiexing,R2Sample.shehao,pt ');
    //funcobj.WriteErrorLog(sql.Text);
    ExecSQL;
    SQL.Clear;

    //query
    SQL.add('select KFXXZL.Article,KFXXZL.DEVCODE,KFXXZL.FD,ypzl.ypdh,ypzls.pt,R1.pt ptR1,R2.pt ptR2,CFM.pt ptCFM,KFXXZL.Xiexing,KFXXZL.Shehao,kfxxzl.jijie ');
    SQL.add('from kfxxzl ');
    SQL.add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH ');
    sql.add('left join xxzlkf on xxzlkf.xiexing=kfxxzl.xiexing and xxzlkf.shehao=kfxxzl.shehao ');
    sql.add('left join ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kfxxzl.shehao ');
    SQL.Add('left join (select YPDH, case when isnull(count(cqdh),0)<>0 then ROUND(CONVERT(FLOAT,sum(dem))/CONVERT(FLOAT,count(cqdh))*100, 1) else 0 end as pt from ( ');
    SQL.Add('             select YPDH,CQDH, case when cqdh=''VN'' then 1 else 0 end as dem from ( ');
    SQL.Add('               select ypzls.YPDH,ypzls.BWBH ,ypzls.CLBH ,clzl.CQDH from ypzls ');
    SQL.Add('               LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
    SQL.Add('               LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
    SQL.Add('               LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh ');
    SQL.Add('               LEFT JOIN zszl_dev ON zszl_dev.zsdh = zszl.zsdh and zszl_dev.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('               union all ');
    SQL.Add('               select ypzls.YPDH,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH ,clzl.CQDH from ypzls ');
    SQL.Add('               Left join clzhzl ON ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('               left join clzhzl_dev ON clzhzl.cldh = clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('               LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
    SQL.Add('               LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('               LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('               LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
    SQL.Add('               LEFT JOIN zszl_dev zszl_devV ON zszl_devV.zsdh = zszl.zsdh and zszl_devV.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('               WHERE CLZHZL.SYL>0 ');
    SQL.Add('               union all ');
    SQL.Add('               Select clzhzl2.YPDH,clzhzl2.Relation+''1'' as Relation ,clzhzl.CLDH1 as CLBH,clzl.CQDH from ( ');
    SQL.Add('                 SELECT ypzls.YPDH,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH ,clzl.CQDH from ypzls ');
    SQL.Add('                 inner join clzhzl ON ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('                 LEFT JOIN clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('                 LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
    SQL.Add('                 LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('                 LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('                 LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
    SQL.Add('                 LEFT JOIN zszl_dev zszl_devV ON zszl_devV.zsdh = zszl.zsdh and zszl_devV.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('                 WHERE CLZHZL.SYL>0 and clzl.clzmlb=''Y'' ) clzhzl2 ');
    SQL.Add('               inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
    SQL.Add('               left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('               left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('               LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('               LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ) YPZLS ');
    SQL.Add('             ) PT group by YPDH ');
    SQL.Add('           ) YPZLS on ypzl.ypdh=ypzls.ypdh ');
    sql.add('left join #ptVNR1 R1 on R1.YPDH=ypzl.ypdh AND R1.XieXing=kfxxzl.XieXing and R1.SheHao=kfxxzl.SheHao ');
    sql.add('left join #ptVNR2 R2 on R2.YPDH=ypzl.ypdh AND R2.XieXing=kfxxzl.XieXing and R2.SheHao=kfxxzl.SheHao ');
    sql.add('left join #ptVNCFM CFM on CFM.YPDH=ypzl.ypdh AND CFM.XieXing=kfxxzl.XieXing and CFM.SheHao=kfxxzl.SheHao ');
    SQL.Add('where ypzl.ypdh LIKE ''LAI%'' and kfxxzl.devcode <>'''' and len(kfxxzl.shehao) < 3 ');
    SQL.add('      and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('      and (xxzlkf.dropped <>''1'' or xxzlkf.dropped is null) ');
    SQL.Add('      and (xxzlkf.transfer <>''1'' or xxzlkf.transfer is null) ');
    SQL.Add('      and kfxxzl.xieming not like ''%NULLIFY%'' and kfxxzl.xieming not like ''%NULIFY%'' ');
    if combobox3.Text <> '' then
      SQL.add('    and ypzl.kfjd = '''+combobox3.Text+''' ')
    else
    SQL.Add('      and ypzl.kfjd in (''CR1'',''CR2'',''CFM'') ');
    if combobox1.Text <> '' then
      SQL.add('    and kfxxzl.jijie like '''+'%'+combobox1.Text+'%'+''' ');
    if combobox2.Text <> '' then
      SQL.add('    and kfxxzl.devtype like '''+'%'+combobox2.Text+'%'+''' ');
    if edit1.Text <> '' then
      SQL.add('    and kfxxzl.devcode like '''+'%'+edit1.Text+'%'+''' ');
    if edit2.Text <> '' then
      SQL.add('    and kfxxzl.Article like '''+'%'+edit2.Text+'%'+''' ');
    if edit3.Text <> '' then
      SQL.add('    and ypzl.ypdh like '''+'%'+edit3.Text+'%'+''' ');
    SQL.add('group by KFXXZL.Article,KFXXZL.DEVCODE,KFXXZL.FD,ypzl.ypdh,ypzls.pt,R1.pt,R2.pt,CFM.pt,KFXXZL.Xiexing,KFXXZL.Shehao,kfxxzl.jijie');
    SQL.add('ORDER BY KFXXZL.Article,KFXXZL.DEVCODE,ypzl.ypdh');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TLocalizationReport.QryIMAGEAfterOpen(DataSet: TDataSet);
  var s:integer;
begin
  s:=0;
  qryimage.First;
  while not qryimage.Eof do
  begin
    if qryimage.FieldByName('pt').Value>=80 then
      inc(s);
    qryimage.Next;
  end;
  if CurrToStr(DBGridEh2.Columns[1].Footers[0].SumValue) <> '0' then
    qtyVN.Caption:=IntToStr(s)+'/'+CurrToStr(DBGridEh2.Columns[1].Footers[0].SumValue)
  else qtyVN.Caption:='N/A';
  if CurrToStr(DBGridEh2.Columns[1].Footers[0].SumValue) <> '0' then
    ptVN.Caption:=FormatFloat('##.00', s*100/StrToInt(CurrToStr(DBGridEh2.Columns[1].Footers[0].SumValue)))+' %'
  else ptVN.Caption:='N/A';
  qryimage.First;
end;

procedure TLocalizationReport.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if qryimage.FieldByName('pt').Value>=80 then
  begin
    DBGridEh2.canvas.Brush.Color:=clBtnFace;
    DBGridEh2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;

  if qryimage.FieldByName('pt').Value<80 then
  begin
     DBGridEh2.canvas.Brush.Color:=cllime;
     DBGridEh2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

procedure TLocalizationReport.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  qryimage.active  then
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
      eclApp.Cells(1,1):='NO';
      eclApp.Cells(1,2):='Article';
      eclApp.Cells(1,3):='SR';
      eclApp.Cells(1,4):='Season';
      eclApp.Cells(1,5):='Sample No';
      eclApp.Cells(1,6):='FD';
      eclApp.Cells(1,7):='R1';
      eclApp.Cells(1,8):='R2';
      eclApp.Cells(1,9):='CFM';
      qryimage.First;
      j:=2;
      while   not   qryimage.Eof   do
      begin
        eclApp.Cells(j,1):=IntToStr(j-1);
        for   i:=1   to  qryimage.fieldcount-3  do
        begin
          eclApp.Cells(j,i+1):=qryimage.Fields[i-1].Value;
        end;
        qryimage.Next;
        inc(j);
      end;
      eclApp.Cells(j,1):='Localization (VN>=80%): '+qtyVN.Caption;
      eclApp.Cells(j+1,1):='Localization (VN>=80%) %: '+ptVN.Caption;
      eclapp.columns.autofit;
      showmessage('Succeed');
      eclApp.Visible:=True;
    except
    on   F:Exception   do
      showmessage(F.Message);
    end;
  end;
end;

end.
