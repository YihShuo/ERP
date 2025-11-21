unit UpperMatInformation1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, StdCtrls, GridsEh, DBGridEh, ComCtrls,comobj,
  Buttons;
type
  TUpperMatInformation = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Label3: TLabel;
    Label1: TLabel;
    Query1DC: TStringField;
    Query1SKU: TStringField;
    Query1ColorwayID: TStringField;
    Query1VendorName: TStringField;
    Query1MaterialType: TStringField;
    Query1MaterialName: TStringField;
    Query1ColorName: TStringField;
    Query1First_Pantone: TStringField;
    Query1Second_Pantone: TStringField;
    Query1Third_Pantone: TStringField;
    Query1Balance_Pantone: TStringField;
    Query1Thickness: TStringField;
    Query1Width: TStringField;
    Query1Post_Process: TStringField;
    Query1MOQ: TCurrencyField;
    Query1LeadTime: TIntegerField;
    Query1Consumption: TFloatField;
    Query1Round_2_Forecast: TStringField;
    Query1Material_Forecast: TStringField;
    Query1Season: TStringField;
    Query1ypdh: TStringField;
    Query1FD: TStringField;
    Query1MaterialNO: TStringField;
    Query1CSBH: TStringField;
    Button2: TButton;
    Label2: TLabel;
    YPDHEdit: TEdit;
    CKBox1: TCheckBox;
    Label4: TLabel;
    SREdit: TEdit;
    CKBox2: TCheckBox;
    Query1MaterialID: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UpperMatInformation: TUpperMatInformation;

implementation

{$R *.dfm}

procedure TUpperMatInformation.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
     active:=false;
     sql.Clear;
     sql.add('Select ''LYN'' as DC,');
     sql.add('ypzl.article as SKU,');
     sql.add('ypzl.devcode as ColorwayID,');
     sql.add('zsywjc as VendorName,');
     sql.add(''''' as MaterialType,');
     sql.add('clzl_flex.cldhflex as MaterialID,');
     sql.add('ypzl.ywpm as MaterialName,');
     sql.add(''''' as ColorName,');
     sql.add(''''' as First_Pantone,');
     sql.add(''''' as Second_Pantone,');
     sql.add(''''' as Third_Pantone,');
     sql.add(''''' as Balance_Pantone,');
     sql.add(''''' as Thickness,');
     sql.add(''''' as Width,');
     sql.add(''''' as Post_Process,');
     sql.add('materialmoq.prodmoq as MOQ,');
     sql.add('materialmoq.prodleadtime as LeadTime,');
     sql.add('ypzl.clsl as Consumption,');
     sql.add(''''' as Round_2_Forecast,');
     sql.add(''''' as Material_Forecast,');
     sql.add('ypzl.jijie as Season,');
     sql.add('ypzl.ypdh,');
     sql.add('ypzl.FD,');
     sql.add('ypzl.clbh as MaterialNO,');
     sql.add('ypzl.CSBH');
     sql.add('from (');
     sql.add('select devcode,article,jijie,YPDH ,FD,CLBH,CLZL.YWPM,CSBH, CLSL from (');
     sql.add('select devcode,article,jijie,YPDH ,FD,CLBH,YWPM ,Max(csbh) as CSBH,Sum(CLSL) as CLSL  from (');
     sql.add('SELECT kfxxzl.devcode,kfxxzl.article,kfxxzl.jijie,ypzls.YPDH ,KFXXZL.FD,ypzls.CLBH,CLZL.YWPM,ypzls.csbh,ypzls.CLSL');
     sql.add('FROM ypzls ypzls');
     sql.add('inner join CLZL on CLZL.CLDH=ypzls.CLBH');
     sql.add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH');
     sql.add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao');
     sql.add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
     sql.add('WHERE  clzl.clzmlb = ''N''');
     if YPDHEdit.Text<>'' then
        sql.add('and YPZL.YPDH like '''+YPDHEdit.Text+'%'' ');
     if SREdit.Text<>'' then
        sql.add('and kfxxzl.devcode like ''%'+SREdit.Text+'%'' ');
     if edit2.text<>'' then
        sql.add('and YPZL.KFJD='''+edit2.text+'''');
     if edit1.text<>'' then
        sql.add('and KFXXZL.JiJie='''+edit1.text+'''');
     sql.add('and YPZL.GSDH=''CDC'' and kfxxzl.devtype in (''inline'',''Great@Good'') ');
     sql.add('union all');
     sql.add('SELECT kfxxzl.devcode,kfxxzl.article,kfxxzl.jijie,ypzls.YPDH,KFXXZL.FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(ypzls.CLSL*CLZHZL.SYL) as CLSL');
     sql.add('FROM ypzls ypzls');
     sql.add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH');
     sql.add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao');
     sql.add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
     sql.add('inner join CLZL on CLZL.CLDH=clzhzl.CLDH1');
     sql.add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
     sql.add('WHERE  clzl.clzmlb = ''N''');
     if YPDHEdit.Text<>'' then
        sql.add('and YPZL.YPDH like '''+YPDHEdit.Text+'%'' ');
     if SREdit.Text<>'' then
        sql.add('and kfxxzl.devcode like ''%'+SREdit.Text+'%'' ');
     if edit2.text<>'' then
        sql.add('and  YPZL.KFJD='''+edit2.text+'''');
     if edit1.text<>'' then
        sql.add('and KFXXZL.JiJie='''+edit1.text+'''');
     sql.add('and YPZL.GSDH=''CDC''');
     sql.add('and CLZHZL.SYL>0  and kfxxzl.devtype=''inline''');
     sql.add('union all');
     sql.add('Select devcode,article,jijie,YPDH,FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(CLSL*CLZHZL.SYL) as CLSL');
     sql.add(' from (');
     sql.add('SELECT kfxxzl.devcode,kfxxzl.article,kfxxzl.jijie,ypzls.YPDH ,KFXXZL.FD,clzhzl.CLDH1 as CLBH,ypzls.CLSL');
     sql.add('FROM ypzls ypzls');
     sql.add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
     sql.add('inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
     sql.add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH');
     sql.add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao');
     sql.add('WHERE YPZL.GSDH=''CDC''');
     if YPDHEdit.Text<>'' then
        sql.add('and YPZL.YPDH like '''+YPDHEdit.Text+'%'' ');
     if SREdit.Text<>'' then
        sql.add('and kfxxzl.devcode like ''%'+SREdit.Text+'%'' ');
     if edit2.text<>'' then
        sql.add('and YPZL.KFJD='''+edit2.text+'''');
     if edit1.text<>'' then
        sql.add('and KFXXZL.JiJie='''+edit1.text+'''');
     sql.add('and CLZHZL.SYL>0  and clzl.clzmlb = ''Y''  and kfxxzl.devtype in (''inline'',''Great@Good'') ');
     sql.add(') clzhzl2');
     sql.add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh');
     sql.add('inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
     sql.add('left join clzlfilter_DFL on clzhzl.CLDH1=clzlfilter_DFL.CLDH');
     sql.add('where clzl.clzmlb = ''N'' and CLZHZL.SYL>0');
     sql.add(')  YPZLS');
     sql.add('Group by devcode,article,jijie,YPDH ,FD,CLBH,YWPM');
     sql.add(') Temp_YPZL');
     sql.add('inner join CLZL on Temp_YPZL.CLBH=CLZL.CLDH');
     sql.add('left join clzlfilter_DFL on Temp_YPZL.CLBH=clzlfilter_DFL.CLDH');
     sql.add('left join zszlfilter on zszlfilter.zsdh=Temp_YPZL.csbh and zszlfilter.GSBH=''CDC''');
     sql.add('left join clzlfilter on clzlfilter.cldh=Temp_YPZL.clbh and clzlfilter.GSBH=''CDC''');
     sql.add('where 1=1 ');
     //主面料
     if ((CKBox1.Checked=true) and (CKBox2.Checked=false)) then
     begin
       SQL.Add('and (  ( ((LEFT( Temp_YPZL.CLBH,3)=''V90'') and (CLZL.cltd=''VT Mat'')) or');
       sql.add('(LEFT(Temp_YPZL.CLBH,1) in (''A'',''C'',''F'',''K'') and  LEFT(Temp_YPZL.CLBH,3) not in (''A02'',''A08'',''A13'',''A48'') and (clzlfilter_DFL.DFL is null) ) or (clzlfilter_DFL.DFL=''1'') or (LEFT(Temp_YPZL.CLBH,1)=''P'' and Temp_YPZL.CSBH=''M027'') )');
     end else if ((CKBox1.Checked=false) and (CKBox2.Checked=true)) then
     begin
       //20180621針車副料
       SQL.Add('and ( ( ((LEFT( Temp_YPZL.CLBH,3)=''V90'') and (CLZL.cltd=''VT Phu May'')) or ');
       SQL.Add('(LEFT(Temp_YPZL.CLBH,1) in (''B'',''L'',''M'',''N'')  and (clzlfilter_DFL.DFL is null) ) or (clzlfilter_DFL.DFL=''2'') or (LEFT(Temp_YPZL.CLBH,3)  in (''D03'',''D11'',''J05'',''O02'',''A02'',''A08'',''A13'',''A48'')) )');
       //20180621成型副料
       SQL.Add('or    ( ((LEFT( Temp_YPZL.CLBH,3)=''V90'') and (CLZL.cltd=''VT Phu Go'')) or ');
       SQL.Add('((LEFT(Temp_YPZL.CLBH,1) in (''D'',''E'',''O'',''I'',''J'')  and LEFT(Temp_YPZL.CLBH,3) not in (''D03'',''D11'',''J05'',''O02'') and (clzlfilter_DFL.DFL is null) )) or clzlfilter_DFL.DFL=''3''  )');
     end else
     begin
       SQL.Add('and (  ( ((LEFT( Temp_YPZL.CLBH,3)=''V90'') and (CLZL.cltd=''VT Mat'')) or');
       sql.add('(LEFT(Temp_YPZL.CLBH,1) in (''A'',''C'',''F'',''K'') and  LEFT(Temp_YPZL.CLBH,3) not in (''A02'',''A08'',''A13'',''A48'') and (clzlfilter_DFL.DFL is null) ) or (clzlfilter_DFL.DFL=''1'') or (LEFT(Temp_YPZL.CLBH,1)=''P'' and Temp_YPZL.CSBH=''M027'') )');
       //20180621針車副料
       SQL.Add('or ( ((LEFT( Temp_YPZL.CLBH,3)=''V90'') and (CLZL.cltd=''VT Phu May'')) or ');
       SQL.Add('(LEFT(Temp_YPZL.CLBH,1) in (''B'',''L'',''M'',''N'')  and (clzlfilter_DFL.DFL is null) ) or (clzlfilter_DFL.DFL=''2'') or (LEFT(Temp_YPZL.CLBH,3)  in (''D03'',''D11'',''J05'',''O02'',''A02'',''A08'',''A13'',''A48'')) )');
       //20180621成型副料
       SQL.Add('or ( ((LEFT( Temp_YPZL.CLBH,3)=''V90'') and (CLZL.cltd=''VT Phu Go'')) or ');
       SQL.Add('((LEFT(Temp_YPZL.CLBH,1) in (''D'',''E'',''O'',''I'',''J'')  and LEFT(Temp_YPZL.CLBH,3) not in (''D03'',''D11'',''J05'',''O02'') and (clzlfilter_DFL.DFL is null) )) or clzlfilter_DFL.DFL=''3''  )');
     end;
     sQL.Add(' ) ');
     //==================
     sql.add(' and zszlfilter.zsdh is null  and clzlfilter.cldh is null');
     sql.add(')  YPZL');
     sql.add('left join materialmoq on materialmoq.zsbh=ypzl.csbh and materialmoq.clbh=ypzl.clbh and materialmoq.season=ypzl.jijie');
     sql.add('left join zszl on zszl.zsdh=ypzl.csbh');
     sql.add('left join clzl on clzl.cldh = ypzl.CLBH');
     sql.add('left join clzl_flex on clzl_flex.cldh = clzl.cldh');
     sql.add('group by clzl_flex.cldhflex,article,devcode,zsywjc,ypzl.ywpm,materialmoq.ProdMOQ,materialmoq.ProdLeadTime,YPZL.CLSL,YPZL.jijie,YPZL.YPDH,YPZL.FD,YPZL.CLBH,YPZL.CSBH');
     sql.add('order by ColorwayID');
     //Memo1.text:=sql.text;
     active:=true;
  end;
end;

procedure TUpperMatInformation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TUpperMatInformation.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  query1.active  then
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
        for   i:=0   to   query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to  query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
            end;
          query1.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;
procedure TUpperMatInformation.FormDestroy(Sender: TObject);
begin
  UpperMatInformation:=nil;
end;

end.
