unit TrackingPO_KCLL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,comobj,
  Dialogs, StdCtrls, GridsEh, DBGridEh, ExtCtrls, DB, DBTables, Buttons,
  ComCtrls;

type
  TTrackingPO_KCLL = class(TForm)
    Panel1: TPanel;
    btnQuery: TButton;
    edtSeason: TEdit;
    edtStage: TEdit;
    edtSampleOrder: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Query1: TQuery;
    DS1: TDataSource;
    btnExcel: TButton;
    edtMaterialNO: TEdit;
    Query1Season: TStringField;
    Query1Stage: TStringField;
    Query1SampleOrder: TStringField;
    Query1MaterialNO: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1SR: TStringField;
    Query1Unit: TStringField;
    Query1PurQty: TCurrencyField;
    Query1KCLL_QTy: TCurrencyField;
    Query1KCRK_QTy: TCurrencyField;
    Query1Pairs: TFloatField;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Panel3: TPanel;
    DBGridEh2: TDBGridEh;
    Query2: TQuery;
    DS2: TDataSource;
    CheckBox1: TCheckBox;
    Query2cgno: TStringField;
    Query2Qty: TCurrencyField;
    Query2CFMDate: TDateTimeField;
    Query1PurUsage: TCurrencyField;
    Query1Sampleprice: TCurrencyField;
    Query1SamplepriceVN: TCurrencyField;
    Query1responsibility: TStringField;
    Query1Usage: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    Panel5: TPanel;
    Edit1: TEdit;
    Button1: TButton;
    DBGridEh3: TDBGridEh;
    Query3: TQuery;
    DataSource1: TDataSource;
    Panel6: TPanel;
    Panel7: TPanel;
    Edit2: TEdit;
    Button2: TButton;
    DataSource2: TDataSource;
    Query4: TQuery;
    DBGridEh4: TDBGridEh;
    Query1dropped: TBooleanField;
    Query1transfer: TBooleanField;
    Query1hglb: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TrackingPO_KCLL: TTrackingPO_KCLL;

implementation

uses main1;

{$R *.dfm}

procedure TTrackingPO_KCLL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TTrackingPO_KCLL.FormDestroy(Sender: TObject);
begin
  TrackingPO_KCLL:=nil;
end;

procedure TTrackingPO_KCLL.btnQueryClick(Sender: TObject);
begin
  if edtSeason.Text = '' then
  begin
    showmessage('Pls enter Season');
    abort;
  end;

  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select cgzl.Season,cgzl.purpose as Stage,cgzlss.zlbh as SampleOrder,cgzl.HGLB,cgzlss.clsl as PurUsage,cgzlss.clbh as MaterialNO,clzl.YWPM,clzl.ZWPM,kfxxzl.devcode as SR');
    sql.Add(',clzl.DWBH as Unit,sum(cgzlss.qty) as PurQty,isnull(kclls.KCLL_QTy,0) KCLL_QTy ,isnull(kcrks.KCRK_QTy,0) KCRK_QTy,ypzl.quantity as Pairs,isnull(materialMOQ.sampleprice,0) as Sampleprice,xxzlkf.dropped,xxzlkf.transfer');
    sql.Add(',isnull(materialMOQ.samplepriceVN,0) as SamplepriceVN,materialchangememo.responsibility,ypzls.clsl as Usage');
    sql.Add('from cgzlss');
    sql.Add('left join cgzl on cgzl.cgno=cgzlss.cgno');
    sql.Add('left join materialchangememo on materialchangememo.clbh=cgzlss.clbh and materialchangememo.ypdh=cgzlss.zlbh');
    sql.Add('left join clzl on clzl.cldh = cgzlss.clbh');
    sql.Add('left join ypzl on ypzl.YPDH = cgzlss.zlbh');
    sql.Add('left join kfxxzl on ypzl.xiexing = kfxxzl.xiexing and ypzl.shehao = kfxxzl.shehao');
    sql.Add('left join xxzlkf on ypzl.xiexing = xxzlkf.xiexing and ypzl.shehao = xxzlkf.shehao');
    sql.Add('left join (select * from materialMOQ where season='''+edtSeason.Text+''')materialMOQ on materialMOQ.clbh= cgzlss.clbh');
    sql.Add('left join (select CLBH,sum(qty) KCLL_Qty,scbh from(');
    sql.Add('           select kclls.LLNO,kclls.CLBH,Qty,kclls.scbh from kclls ');
    sql.Add('           left join kcll on kclls.llno=kcll.llno');
    sql.Add('           where kcll.gsbh='+''''+main.edit2.text+'''');
    sql.Add('           )kclls group by CLBH,scbh');
    sql.Add('           ) kclls on kclls.clbh=cgzlss.clbh and kclls.scbh=cgzlss.zlbh');
    sql.Add('left join (select kcrks.CLBH,sum(Qty) KCRK_QTy,kcrks.CGBH from (');
    sql.Add('           select kcrks.RKNO,kcrks.CLBH,Qty,kcrks.CGBH from kcrks');
    sql.Add('           left join kcrk on kcrks.rkno=kcrk.rkno');
    sql.Add('           where kcrk.gsbh='+''''+main.edit2.text+'''');
    sql.Add('           )kcrks  group by kcrks.CLBH,kcrks.CGBH');
    sql.Add('           )kcrks on kcrks.clbh=cgzlss.clbh and kcrks.cgbh=cgzlss.zlbh');

    sql.Add('left join (select ypdh,clbh,sum(clsl) as clsl from (');
    sql.add('           select ypzls.ypdh,ypzls.bwbh,ypzls.clbh,clsl from ypzls');
    sql.add('           left join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.add('           left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.add('           where kfxxzl.khdh=''036''  and kfxxzl.jijie like '+''''+edtSeason.Text+'%'''+ '');
    if edtStage.Text <> '' then
       sql.add('        and ypzl.kfjd like '+''''+edtStage.Text+'%''');
    if edtSampleOrder.Text <> '' then
       sql.add('        and ypzl.ypdh like '+''''+edtSampleOrder.Text+'%''');
    if edtMaterialNO.Text <> '' then
       sql.add('        and clbh like '+''''+edtMaterialNO.Text+'%''');
    sql.add('           union');
    sql.add('           select ypzls.ypdh,ypzls.bwbh,clzhzl.cldh1 as clbh,clzhzl.syl*clsl as clsl from ypzls');
    sql.add('           inner join clzhzl on clzhzl.cldh=ypzls.clbh');
    sql.add('           left join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.add('           left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.add('           where kfxxzl.khdh=''036''  and kfxxzl.jijie like '+''''+edtSeason.Text+'%'''+ '');
    if edtStage.Text <> '' then
       sql.add('        and ypzl.kfjd like '+''''+edtStage.Text+'%''');
    if edtSampleOrder.Text <> '' then
       sql.add('        and ypzl.ypdh like '+''''+edtSampleOrder.Text+'%''');
    if edtMaterialNO.Text <> '' then
       sql.add('        and cldh1 like '+''''+edtMaterialNO.Text+'%''');
    sql.add('           union');
    sql.add('           select ypdh,bwbh,clzhzl.cldh1 as clbh,clzhzl.syl*clsl as clsl from (');
    sql.add('           select ypzls.ypdh,ypzls.bwbh,clzhzl.cldh1 as clbh,clzhzl.syl*clsl as clsl from ypzls');
    sql.add('           inner join clzhzl on clzhzl.cldh=ypzls.clbh');
    sql.add('           left join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.add('           left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.add('           where kfxxzl.khdh=''036''  and kfxxzl.jijie like '+''''+edtSeason.Text+'%'''+ '');
    if edtStage.Text <> '' then
       sql.add('        and ypzl.kfjd like '+''''+edtStage.Text+'%''');
    if edtSampleOrder.Text <> '' then
       sql.add('        and ypzl.ypdh like '+''''+edtSampleOrder.Text+'%''');
    if edtMaterialNO.Text <> '' then
       sql.add('        and clbh like '+''''+edtMaterialNO.Text+'%''');
    sql.add('           )clzhzl2');
    sql.add('           inner join clzhzl on clzhzl.cldh=clzhzl2.clbh');
    sql.add('           )ypzls group by ypdh,clbh');
    sql.add('           )ypzls on ypzls.clbh=cgzlss.clbh and ypzls.ypdh=cgzlss.zlbh');

    sql.add('where cgzl.Season like '+''''+edtSeason.Text+'%'''+ 'and cgzl.gsbh='+''''+main.edit2.text+'''');
    if edtSampleOrder.Text <> '' then
      sql.add('and cgzlss.zlbh like '+''''+edtSampleOrder.Text+'%''');
    if edtStage.Text <> '' then
      sql.add('and cgzl.purpose like '+''''+edtStage.Text+'%''');
    if edtMaterialNO.Text <> '' then
      sql.add('and cgzlss.clbh like '+''''+edtMaterialNO.Text+'%''');
    sql.add('group by cgzlss.CLBH,ZLBH,cgzlss.Stage,cgzl.Season,cgzl.HGLB,cgzl.purpose,');
    sql.add('clzl.YWPM,clzl.ZWPM,clzl.DWBh,KCLL_Qty,KCRK_QTy,kfxxzl.devcode,ypzl.quantity,cgzlss.clsl,SamplePrice,SamplePriceVN,materialchangememo.responsibility,ypzls.clsl,xxzlkf.dropped,xxzlkf.transfer');
    active:=true;
  end;
end;

procedure TTrackingPO_KCLL.btnExcelClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k:integer;
begin
  if  Query1.active  then
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
      for i:=0 to Query1.FieldCount-1 do
      begin
        eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
      end;

      Query1.First;
      j:=2;
      while   not   Query1.Eof   do
      begin
        for   i:=0   to Query1.FieldCount-1  do
        begin
          eclApp.Cells(j,i+1):=Query1.Fields[i].Value;
        end;
        Query1.Next;
        inc(j);
      end;
      for k:=1 to 4 do
      begin
        eclApp.range[eclApp.cells[1,1],eclApp.cells[j-1,Query1.FieldCount]].borders[k].linestyle:=1;
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

procedure TTrackingPO_KCLL.CheckBox1Click(Sender: TObject);
begin
  if checkbox1.checked then
     with query2 do
     begin
       active:=false;
       sql.Clear;
       sql.Add('select cgno,Qty,CFMDate from cgzlss where zlbh=:sampleorder  and clbh=:materialno ');
       Active:=true;
     end;
  if not checkbox1.checked then
     query2.Active:=false;
end;

procedure TTrackingPO_KCLL.Button1Click(Sender: TObject);
begin
  if edit1.Text = '' then
  begin
    showmessage('Pls enter SampleOrder');
    abort;
  end;

  with Query3 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select * from shoetest where ypdh='''+edit1.Text+'''');
    active:=true;
  end;
end;

procedure TTrackingPO_KCLL.Button2Click(Sender: TObject);
begin
  if edit2.Text = '' then
  begin
    showmessage('Pls enter SampleOrder');
    abort;
  end;

  with Query4 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select shoetests.llno,shoetests.clbh,kclls.hglb,kclls.scbh,shoetests.qty as TBQty,kclls.TempQty,kclls.Qty,* from shoetests');
    sql.Add('left join kclls on kclls.llno=shoetests.llno and kclls.clbh=shoetests.clbh');
    sql.Add('where testno='''+edit2.Text+'''');
    active:=true;
  end;
end;

end.
