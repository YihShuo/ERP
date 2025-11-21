unit ForeCast_Purchase_Compare1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DBTables, DB, StdCtrls, ComCtrls, GridsEh, DBGridEh,
  Buttons, ExtCtrls,comobj;

type
  TForeCast_Purchase_Compare = class(TForm)
    Panel1: TPanel;
    BB1: TBitBtn;
    BB7: TBitBtn;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    edSeason: TEdit;
    EdMaterial: TEdit;
    Query1: TQuery;
    DS1: TDataSource;
    Button2: TButton;
    cbSeason: TComboBox;
    Query1Material_NO: TStringField;
    Query1Material_Desc: TStringField;
    Query1Season: TStringField;
    Query1SR: TStringField;
    Query1Forecast_Leadtime: TIntegerField;
    Query1Purchase_Qty: TCurrencyField;
    Query1ForeCast_Qty: TFloatField;
    Query1Different_Qty: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ForeCast_Purchase_Compare: TForeCast_Purchase_Compare;

implementation

uses main1;

{$R *.dfm}

procedure TForeCast_Purchase_Compare.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TForeCast_Purchase_Compare.FormDestroy(Sender: TObject);
begin
  ForeCast_Purchase_Compare:=nil;
end;

procedure TForeCast_Purchase_Compare.BB1Click(Sender: TObject);
begin
  Panel2.Visible := true;
end;

procedure TForeCast_Purchase_Compare.Button1Click(Sender: TObject);
Var Season,Year1,Month1 : String;
begin
  if trim(EdSeason.Text) = '' then
    exit;
  Season := trim(EdSeason.Text)+CBSeason.Text;
  if CBSeason.Text <> 'H' then
    Year1 := '20'+inttostr(strtoint(trim(EdSeason.Text))-1)
  else
    Year1 := '20'+trim(EdSeason.Text);
  Month1 := '3';
  if CBSeason.Text = 'S' then
    Month1 := '6'
  else if CBSeason.Text = 'U' then
    Month1 := '9'
  else if CBSeason.Text = 'F' then
    Month1 := '12';

  With Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('  select CGZL.CLBH as Material_NO,CGZL.ywpm as Material_Desc,CGZL.season as Season,CGZL.SKU as SR,CGZL.Forecast_Leadtime,CGZL.Qty as Purchase_Qty,isnull(ddzl.total,0) as ForeCast_Qty,(CGZL.Qty-isnull(ddzl.total,0)) as Different_Qty from ( ');
    SQL.Add('  select cgzlsS.CLBH,substring(ddzl.buyno,8,3) as season,kfxxzl.DEVCODE as SKU,clzl.ywpm,sum(CGZLSS.Qty) as Qty,Forecast_Leadtime from cgzlsS ');
    SQL.Add('  left join CGZL on CGZL.CGNO = CGZLSS.CGNO ');
    SQL.Add('  left join ddzl on ddzl.DDBH = CGZLSS.ZLBH ');
    SQL.Add('  left join clzl on cgzlss.CLBH = clzl.cldh ');
    SQL.Add('  left join kfxxzl on kfxxzl.XieXing = ddzl.XieXing and kfxxzl.SheHao = ddzl.SheHao ');
    SQL.Add('  left join ( ');
    SQL.Add('    Select Season, CLBH, ProdLeadTime, Forecast_Leadtime, Location from ( ');
    SQL.Add('      Select A.Season, A.CLBH, A.ProdMOQ, A.ProdLeadTime, A.Forecast_Leadtime, A.Location from ( ');
    SQL.Add('        select Season, CLBH, ProdMOQ, ProdLeadTime, Forecast_Leadtime, Location, ROW_NUMBER() over (PARTITION BY CLBH ORDER BY Substring(Season,1,2) DESC, USERDATE desc) as rn from ( ');
    SQL.Add('          Select Season, IsNull(CLZL_LS.JHDH, MaterialMOQ.CLBH) as CLBH, ProdMOQ, ProdLeadTime, Forecast_Leadtime, Location, MaterialMOQ.USERDATE from MaterialMOQ with (nolock) ');
    SQL.Add('          left join CLZL_LS with (nolock) on CLZL_LS.CLDH = MaterialMOQ.CLBH and IsNull(CLZL_LS.JHDH, '''') <> '''' ');
    SQL.Add('        ) AS MaterialMOQ ');
    SQL.Add('      ) A where A.rn=1 ');
    SQL.Add('    ) AS MatMOQ ');
    SQL.Add('  ) AS m on m.CLBH = cgzlsS.clbh ');
    SQL.Add('  where Stage = ''Mass'' ');
    SQL.Add('  and ZSDH not like ''JNG%'' ');
    SQL.Add('  and substring(ddzl.buyno,8,3) = '''+Season+''' ');
    SQL.Add('  and cgzlsS.CLBH like '''+EdMaterial.Text+'%'' ');
    SQL.Add('  group by cgzlsS.CLBH,substring(ddzl.buyno,8,3),kfxxzl.DEVCODE,clzl.ywpm,Forecast_Leadtime ');
    SQL.Add('  ) CGZL ');
    SQL.Add('  left join ');
    SQL.Add('  ( ');
    SQL.Add('  select ywpm,devcode,clbh,Forecast_Leadtime,sum(total) as total from ');
    SQL.Add('  ( ');
    SQL.Add('  select max(ypcc) as ypcc,clzl.clzmlb,year,clzl.ywpm,clzl.dwbh,month,jijie,type,article,devcode,a.clbh,Forecast_Leadtime,pairs,sum(total) as cscl,pairs*sum(total) as total,csbh,zsywjc,a.userdate,'' '' as Stage,cldhflex  from( ');
    SQL.Add('  select ypzl.ypcc,ypzls.bwbh,xxzl.article,FC_import.year,FC_import.month,FC_import.jijie,FC_import.type, ');
    SQL.Add('  FC_import.devcode,ypzls.clbh,FC_import.total as pairs,ypzls.Costing_CLSL as total,ypzls.csbh,zszl.zsywjc,FC_import.userdate ');
    SQL.Add('  from FC_import ');
    SQL.Add('  left join kfxxzl on kfxxzl.devcode=fc_import.devcode  and kfxxzl.ARTICLE=FC_Import.ARTICLE ');
    SQL.Add('  left join xxzl on xxzl.xiexing=kfxxzl.xiexing and xxzl.shehao=kfxxzl.shehao ');
    SQL.Add('  left join ( select * from (select size.*,ypzl.ypdh,row_number() over(PARTITION by size.article ORDER BY size.article desc) as score from (select max(ypcc) as ypcc, ');
    SQL.Add('  xiexing+shehao as article,kfjd,xiexing,shehao from ypzl where kfjd=''CFM'' ');
    SQL.Add('  and ypzl.ProductionLocation=''LYN'' ');
    SQL.Add('  group by xiexing+shehao,kfjd,xiexing,shehao) size ');
    SQL.Add('             left join (select * from ypzl where kfjd=''CFM'' ');
    SQL.Add('  and ypzl.ProductionLocation=''LYN'' ');
    SQL.Add('  and SUBSTRING(ypzl.ypdh,4,1)=''K'' ');
    SQL.Add('  ) ypzl on size.xiexing = ypzl.xiexing and size.shehao = ypzl.shehao and size.ypcc = ypzl.ypcc)ypzl where score=1 ');
    SQL.Add('             ) ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kfxxzl.shehao ');
    SQL.Add('  left join ypzls on ypzls.ypdh=ypzl.ypdh ');
    SQL.Add('  left join zszl on zszl.zsdh=ypzls.csbh ');
    SQL.Add('  where ypzls.clbh is not null ');
    SQL.Add('  and FC_import.year='''+Year1+''' ');
    SQL.Add('  and FC_import.month='''+Month1+''' ');
    SQL.Add('  and FC_import.type=''STIM'' ');
    SQL.Add('  and ypzl.kfjd=''CFM'' ');
    SQL.Add('  and ypzls.clbh like '''+EdMaterial.Text+'%'' ');
    SQL.Add('  group by ypzl.ypcc,ypzls.bwbh,xxzl.article,ypzls.Costing_CLSL,FC_import.year,FC_import.month,FC_import.jijie,FC_import.type,FC_import.article,FC_import.devcode,ypzls.clbh,FC_import.total ,ypzls.csbh,zszl.zsywjc,FC_import.userdate ');
    SQL.Add('  union ');
    SQL.Add('  select ypzl.ypcc,ypzls.bwbh,xxzl.article,FC_import.year,FC_import.month,FC_import.jijie,FC_import.type, ');
    SQL.Add('  FC_import.devcode,clzhzl.cldh1,FC_import.total as pairs,ypzls.Costing_CLSL*clzhzl.syl as total,clzhzl.zsdh,zszl.zsywjc,FC_import.userdate ');
    SQL.Add('  FROM FC_import ');
    SQL.Add('  left join kfxxzl on kfxxzl.devcode=fc_import.devcode and kfxxzl.ARTICLE=FC_Import.ARTICLE ');
    SQL.Add('  left join xxzl on xxzl.xiexing=kfxxzl.xiexing and xxzl.shehao=kfxxzl.shehao ');
    SQL.Add('  left join ( select * from (select size.*,ypzl.ypdh,row_number() over(PARTITION by size.article ORDER BY size.article desc) as score from (select max(ypcc) as ypcc, ');
    SQL.Add('  article,kfjd,xiexing,shehao from ypzl where kfjd=''CFM'' ');
    SQL.Add('  and ypzl.ProductionLocation=''LYN'' ');
    SQL.Add('  group by article,kfjd,xiexing,shehao) size ');
    SQL.Add('             left join (select * from ypzl where kfjd=''CFM'' ');
    SQL.Add('  and ypzl.ProductionLocation=''LYN'' ');
    SQL.Add('  and SUBSTRING(ypzl.ypdh,4,1)=''K'' ');
    SQL.Add('  ) ypzl on size.xiexing = ypzl.xiexing and size.shehao = ypzl.shehao and size.ypcc = ypzl.ypcc)ypzl where score=1 ');
    SQL.Add('             ) ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kfxxzl.shehao ');
    SQL.Add('  left join ypzls on ypzls.ypdh=ypzl.ypdh ');
    SQL.Add('  inner join clzhzl on clzhzl.cldh=ypzls.clbh ');
    SQL.Add('  LEFT JOIN BWZL  ON ypzls.BWBH = BWZL.bwdh ');
    SQL.Add('  LEFT JOIN CLZL   ON clzhzl.cldh1 = CLZL.cldh ');
    SQL.Add('  LEFT JOIN LBZLS ON SUBSTRING(ypzls.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05'' ');
    SQL.Add('  LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh ');
    SQL.Add('  where  ypzls.clbh is not null ');
    SQL.Add('  and FC_import.year='''+Year1+''' ');
    SQL.Add('  and FC_import.month='''+Month1+''' ');
    SQL.Add('  and FC_import.type=''STIM'' ');
    SQL.Add('  and ypzl.kfjd=''CFM'' ');
    SQL.Add('  and clzhzl.cldh1 like '''+EdMaterial.Text+'%'' ');
    SQL.Add('  GROUP BY ypzl.ypcc,ypzls.bwbh,xxzl.article,FC_import.year,FC_import.month,FC_import.jijie,FC_import.type,FC_import.article, ');
    SQL.Add('  FC_import.devcode,clzhzl.cldh1,FC_import.total,ypzls.Costing_CLSL*clzhzl.syl,clzhzl.zsdh,zszl.zsywjc,FC_import.userdate ');
    SQL.Add('  union ');
    SQL.Add('  select ypcc,bwbh,article,year,month,jijie,type,devcode,clzhzl.cldh1,pairs,total,clzhzl.zsdh,ZSZL.zsywjc,clzhzl2.userdate from( ');
    SQL.Add('  select ypzl.ypcc,ypzls.bwbh,xxzl.article,FC_import.year,FC_import.month,FC_import.jijie,FC_import.type, ');
    SQL.Add('  FC_import.devcode,clzhzl.cldh1,FC_import.total as pairs,ypzls.Costing_CLSL*clzhzl.syl as total,clzhzl.zsdh,zszl.zsywjc,FC_import.userdate ');
    SQL.Add('  FROM FC_import ');
    SQL.Add('  left join kfxxzl on kfxxzl.devcode=fc_import.devcode and kfxxzl.ARTICLE=FC_Import.ARTICLE ');
    SQL.Add('  left join xxzl on xxzl.xiexing=kfxxzl.xiexing and xxzl.shehao=kfxxzl.shehao ');
    SQL.Add('  left join ( select * from (select size.*,ypzl.ypdh,row_number() over(PARTITION by size.article ORDER BY size.article desc) as score from (select max(ypcc) as ypcc, ');
    SQL.Add('  xiexing+shehao as article,kfjd,xiexing,shehao from ypzl where kfjd=''CFM'' ');
    SQL.Add('  and ypzl.ProductionLocation=''LYN'' ');
    SQL.Add('  group by xiexing+shehao,kfjd,xiexing,shehao) size ');
    SQL.Add('             left join (select * from ypzl where kfjd=''CFM'' ');
    SQL.Add('  and ypzl.ProductionLocation=''LYN'' ');
    SQL.Add('  and SUBSTRING(ypzl.ypdh,4,1)=''K'' ');
    SQL.Add('  ) ypzl on size.xiexing = ypzl.xiexing and size.shehao = ypzl.shehao and size.ypcc = ypzl.ypcc)ypzl where score=1 ');
    SQL.Add('              ) ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kfxxzl.shehao ');
    SQL.Add('  left join ypzls on ypzls.ypdh=ypzl.ypdh ');
    SQL.Add('  inner join clzhzl on clzhzl.cldh=ypzls.clbh ');
    SQL.Add('  LEFT JOIN BWZL  ON ypzls.BWBH = BWZL.bwdh ');
    SQL.Add('  LEFT JOIN CLZL   ON clzhzl.cldh1 = CLZL.cldh ');
    SQL.Add('  LEFT JOIN LBZLS ON SUBSTRING(ypzls.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05'' ');
    SQL.Add('  LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh ');
    SQL.Add('  where  ypzls.clbh is not null ');
    SQL.Add('  and CLZHZL.SYL>0  and clzl.clzmlb=''Y'' ');
    SQL.Add('  and FC_import.year='''+Year1+''' ');
    SQL.Add('  and FC_import.month='''+Month1+''' ');
    SQL.Add('  and FC_import.type=''STIM'' ');
    SQL.Add('  and ypzl.kfjd=''CFM'' ');
    SQL.Add('  and clzhzl.cldh1 like '''+EdMaterial.Text+'%'' ');
    SQL.Add('  GROUP BY ypzl.ypcc,ypzls.bwbh,xxzl.article,FC_import.year,FC_import.month,FC_import.jijie,FC_import.type,FC_import.article, ');
    SQL.Add('  FC_import.devcode,clzhzl.cldh1,FC_import.total,ypzls.Costing_CLSL*clzhzl.syl,clzhzl.zsdh,zszl.zsywjc,FC_import.userdate)clzhzl2 ');
    SQL.Add('  inner join clzhzl ON  clzhzl2.cldh1 = CLZHZL.cldh ');
    SQL.Add('  LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh ');
    SQL.Add('  WHERE CLZHZL.cldh1 is not null ');
    SQL.Add('   ) a ');
    SQL.Add('  left join clzl on clzl.cldh=a.clbh ');
    SQL.Add('  left join clzl_flex on clzl.cldh=clzl_flex.cldh ');
    SQL.Add('  left join ( ');
    SQL.Add('    Select Season, CLBH, ProdLeadTime, Forecast_Leadtime, Location from ( ');
    SQL.Add('      Select A.Season, A.CLBH, A.ProdMOQ, A.ProdLeadTime, A.Forecast_Leadtime, A.Location from ( ');
    SQL.Add('        select Season, CLBH, ProdMOQ, ProdLeadTime, Forecast_Leadtime, Location, ROW_NUMBER() over (PARTITION BY CLBH ORDER BY Substring(Season,1,2) DESC, USERDATE desc) as rn from ( ');
    SQL.Add('          Select Season, IsNull(CLZL_LS.JHDH, MaterialMOQ.CLBH) as CLBH, ProdMOQ, ProdLeadTime, Forecast_Leadtime, Location, MaterialMOQ.USERDATE from MaterialMOQ with (nolock) ');
    SQL.Add('          left join CLZL_LS with (nolock) on CLZL_LS.CLDH = MaterialMOQ.CLBH and IsNull(CLZL_LS.JHDH, '''') <> '''' ');
    SQL.Add('        ) AS MaterialMOQ ');
    SQL.Add('      ) A where A.rn=1 ');
    SQL.Add('    ) AS MatMOQ ');
    SQL.Add('  ) AS m on m.CLBH = a.clbh ');
    SQL.Add('  where clzl.clzmlb <>''Y'' ');
    SQL.Add('  group by clzl.clzmlb,clzl.dwbh,year,month,jijie,ywpm,type,article,devcode,a.clbh,Forecast_Leadtime,pairs,csbh,zsywjc,a.userdate,cldhflex ');
    SQL.Add('  ) Data1 ');
    SQL.Add('  group by ywpm,devcode,clbh,Forecast_Leadtime ');
    SQL.Add('  ) ddzl on ddzl.CLBH = cgzl.CLBH and ddzl.Devcode = cgzl.SKU ');
    //showmessage(SQL.Text);
    Active:=true;
  end;

end;

procedure TForeCast_Purchase_Compare.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if query1.Active then
  begin
    if query1.recordcount=0 then
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
    for i:=0 to DBGridEh1.Columns.Count-1 do
    begin
      eclApp.Cells(1,i+1):=DBGridEh1.Columns[i].Title.Caption;
      eclApp.Cells.Cells.item[1,i+1].font.name := 'Calibri';
      eclApp.Cells.Cells.item[1,i+1].font.size:='10';
    end;
    query1.First;
    j:=2;
    while   not  query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
         eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
         if ((DBGridEh1.Fields[i].FieldName = 'UserDate') or (DBGridEh1.Fields[i].FieldName = 'DuDinh') or (DBGridEh1.Fields[i].FieldName = 'DungHan')) then
           eclApp.ActiveSheet.Cells[j, i + 1].NumberFormat := 'YYYY/MM/DD';
         eclApp.Cells.Cells.item[j,i+1].font.size:='10';
         eclApp.Cells.Cells.item[j,i+1].font.name := 'Calibri';
      end;
      query1.Next;
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

end.
