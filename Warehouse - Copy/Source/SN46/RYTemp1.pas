unit RYTemp1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls,DateUtils,
  DBCtrls, Menus, GridsEh, DBGridEh,ShellAPI,comobj,DBGridEhImpExp;

type
  TRYTemp = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    RY: TQuery;
    DS_RY: TDataSource;
    Pop_UnLL: TPopupMenu;
    EXCEL2: TMenuItem;
    RYZLBH: TStringField;
    RYCLBH: TStringField;
    RYCLSL: TFloatField;
    RYUnLL: TFloatField;
    RYArticle: TStringField;
    RYXieMing: TStringField;
    RYLLQty: TCurrencyField;
    RYRKQty: TCurrencyField;
    Panel2: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Qry_UnRK: TQuery;
    Qry_UnRKZSYWJC: TStringField;
    Qry_UnRKCGDATE: TDateTimeField;
    Qry_UnRKCGNO: TStringField;
    Qry_UnRKQty: TCurrencyField;
    Qry_UnRKRKQTY: TCurrencyField;
    Qry_UnRKYQDate: TDateTimeField;
    Qry_UnRKCFMDate: TDateTimeField;
    Qry_UnRKZSBH: TStringField;
    Qry_UnRKDiffqty: TCurrencyField;
    DS_UnRK: TDataSource;
    Panel7: TPanel;
    DBGridEh_UnLL: TDBGridEh;
    Panel8: TPanel;
    Panel3: TPanel;
    Panel12: TPanel;
    DS_UnJG: TDataSource;
    Qry_UnJG: TQuery;
    Query1ZLBH: TStringField;
    Query1CLSL: TFloatField;
    Query1ARTICLE: TStringField;
    Query1BKQty: TCurrencyField;
    DBGridEh_UnJG: TDBGridEh;
    Lab_MatID: TLabel;
    Edit1: TEdit;
    Shape2: TShape;
    Splitter3: TSplitter;
    RYLEAN: TStringField;
    Pop_UnJG: TPopupMenu;
    MenuItem1: TMenuItem;
    SaveDialog1: TSaveDialog;
    RYPSDT: TDateTimeField;
    RYPEDT: TDateTimeField;
    Lab_MatName: TLabel;
    Splitter2: TSplitter;
    Qry_UnJGUnLLQty: TFloatField;
    Panel11: TPanel;
    Panel9: TPanel;
    Lab_Stock: TLabel;
    Lab_UnRK: TLabel;
    Lab_UnLL: TLabel;
    Lab_UnJG: TLabel;
    Lab_Remain: TLabel;
    Label9: TLabel;
    Shape1: TShape;
    Lab_Add: TLabel;
    Lab_Min: TLabel;
    Label1: TLabel;
    Lab_Unit: TLabel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    DBGridEh_RY: TDBGridEh;
    Splitter1: TSplitter;
    DBGridEh_JG: TDBGridEh;
    Qry_JGUnB: TQuery;
    DS_JGUnB: TDataSource;
    Panel4: TPanel;
    Panel10: TPanel;
    Qry_JGUnBRY: TStringField;
    Qry_JGUnBCLSL: TCurrencyField;
    Qry_JGUnBJGUnQty: TCurrencyField;
    Qry_JGUnBArticle: TStringField;
    Lab_UnRkJG: TLabel;
    Panel17: TPanel;
    Pop_UnRK: TPopupMenu;
    MaterialTrace1: TMenuItem;
    Qry_UnRKCGType: TStringField;
    RYStatus: TStringField;
    Qry_UnJGStatus: TStringField;
    Qry_JGUnBStatus: TStringField;
    Qry_JGUnBDDRQ: TDateTimeField;
    Qry_UnJGDDRQ: TDateTimeField;
    RYDDRQ: TDateTimeField;
    RYBUYNO: TStringField;
    Qry_JGUnBBUYNO: TStringField;
    Qry_UnJGBUYNO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure EXCEL2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MaterialTrace1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    BaseDate:TDateTime;
    CKBH:string;
    { Public declarations }
  end;

var
  RYTemp: TRYTemp;

implementation

uses  main1, MaterialTrace1, FunUnit;

{$R *.dfm}

procedure TRYTemp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  free;
end;

procedure TRYTemp.Button1Click(Sender: TObject);
var year,month,day:word;
ayear,amonth:string;
begin


  with RY do
  begin
    active:=false;
    sql.Clear;
    sql.add('DECLARE @Ldate as datetime');
    sql.add('set @Ldate = DATEADD(month, -6, GETDATE())'); //限定六個月內的訂單
    sql.add('select OrdCL1.ZLBH,   ');
    sql.add('       OrdCL1.CLBH,  ');
    sql.add('       OrdCL1.CLSL,  ');
    sql.add('       isnull(KCLLS.Qty,0) as LLQty,    ');
    sql.add('       isnull(KCRKS.Qty,0) as RKQty,    ');
    //sql.add('       OrdCL1.CLSL-isnull(KCLLS.Qty,0) as UnLL,  ');
    //2018/06/08
    sql.add('       case when OrdCL1.CLSL-isnull(KCLLS.Qty,0)>=0 then OrdCL1.CLSL-isnull(KCLLS.Qty,0) else 0 end as UnLL, ');
    //
    sql.add('       XXZL.Article,   ');
    sql.add('       XXZL.XieMing,   ');
    sql.add('       '''' as LEAN,          ');
    sql.add('       getdate() as PSDT, ');
    sql.add('       getdate() as PEDT, ');
    sql.add('       DDZL.DDZT as Status, ');
    sql.Add('       DDZL.DDRQ,DDZL.BUYNO ');
    //End
    sql.add('from    ');
    sql.add('    (select ZLZLS2.ZLBH,ZLZLS2.CLBH ');
    sql.add('                   ,sum(ZLZLS2.CLSL) AS CLSL ');
    sql.add('             from ZLZLS2 ');
    sql.add('             left join ddzl on ddzl.ddbh=ZLZLS2.zlbh'); //抓訂單狀態及出貨日期
    sql.add('             where ZLZLS2.CLBH='+''''+Edit1.Text+'''');
    sql.add('                   and ZLZLS2.MJBH=''ZZZZZZZZZZ'' and ddzl.GSBH='''+main.Edit2.Text+'''  and DDZL.DDRQ<=Convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate)+''') ');
    sql.add('                   and ddzl.YN=''1'' and ddzl.DDZT<>''C'' and ddzl.DDLB in (''F'',''N'') and ddzl.shipdate > @Ldate');
    //Add by Nick 2015.7.2 to drop minus RY ---End
    sql.add('             group by ZLZLS2.ZLBH,ZLZLS2.CLBH ');
    sql.add('    ) OrdCL1 ');
    sql.add('left join (select   KCLLS.SCBH, KCLLS.CLBH, sum(CASE  WHEN (KCLLS.CLSL > KCLLS.Qty) THEN KCLLS.Qty ELSE KCLLS.CLSL END) as Qty ');   //Nick 2015.07.03 避免計算超領量
    sql.add('           from  KCLLS,KCLL ');
    sql.add('           left join ddzl on ddzl.ddbh=KCLL.SCBH');  //add by Nick
    sql.add('           where KCLL.CFMID<>''NO'' AND KCLLS.LLNO=KCLL.LLNO AND KCLL.SCBH<>''ZZZZZZZZZZ'' and ddzl.GSBH='''+main.Edit2.Text+'''  and convert(varchar,KCLL.CFMDate,111)<='''+formatdatetime('yyyy/MM/dd',BaseDate)+''' ');
    sql.add('                 and ddzl.YN=''1'' and ddzl.DDZT<>''C'' and ddzl.DDLB in (''F'',''N'') and ddzl.shipdate > @Ldate  and DDZL.DDRQ<=Convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate)+''') ');
    sql.add('                 AND KCLLS.CLBH='+''''+Edit1.Text+'''');
    sql.add('           group by KCLLS.SCBH, KCLLS.CLBH ');
    sql.add('          ) KCLLS on KCLLS.SCBH=OrdCL1.ZLBH and KCLLS.CLBH=OrdCL1.CLBH ');
    sql.add('left join (select   KCRKS.CGBH, KCRKS.CLBH, sum(KCRKS.Qty) as Qty ');
    sql.add('           from  KCRKS ');
    sql.add('           inner join KCRK on KCRKS.RKNO=KCRK.RKNO ');
    sql.add('           left join ddzl on ddzl.ddbh=KCRKS.CGBH ');  //add by Nick
    sql.add('           where ddzl.GSBH='''+main.Edit2.Text+'''     ');
    sql.add('                 and ddzl.YN=''1'' and ddzl.shipdate > @Ldate  and DDZL.DDRQ<=Convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate)+''') ');
    sql.add('                   AND KCRKS.CLBH='+''''+Edit1.Text+'''');
    sql.add('           group by KCRKS.CGBH, KCRKS.CLBH ');
    sql.add('          ) KCRKS on KCRKS.CGBH=OrdCL1.ZLBH and KCRKS.CLBH=OrdCL1.CLBH ');
    sql.add('left join DDZL on OrdCL1.ZLBH=DDZL.DDBH ');
    sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao ');
    sql.add('WHERE OrdCL1.CLSL-ISNULL(KCLLS.Qty,0)<>0 ');                 
    //<>MP
    if (main.Edit2.Text='VA12') or (main.Edit2.Text='VC2') then
      sql.add('    AND DDZL.KHPO NOT LIKE ''%-MP''');
    sql.add(' ');
    sql.Add('order by DDZL.DDRQ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;

  with Qry_UnRK do
  begin
    active:=false;
    sql.Clear;
    sql.add('DECLARE @Ldate as datetime');
    sql.add('set @Ldate = DATEADD(month, -6, GETDATE())'); //限定六個月內的訂單
    sql.add('select CGZLS.CGNO');
    sql.add('       ,CGZLS.CLBH');
    sql.add('       ,CGZLS.Qty ');
    sql.add('       ,CGZLS.YQDate');
    sql.add('       ,CGZLS.CFMDate');
    sql.add('       ,CGZL.ZSBH');
    sql.add('       ,ZSZL.ZSYWJC');
    sql.add('       ,CGZL.CGDATE');
    sql.add('       ,CGRK.RKQTY   ');
    sql.add('       ,CGZLS.Qty-ISNULL(CGRK.RKQTY,0) as Diffqty   ');
    sql.add('       ,case when CGZL.CGLX=1 then ''SIZE'' when CGZL.CGLX=2 then ''NO SIZE'' when CGZL.CGLX=3 then ''OTHER'' when CGZL.CGLX=5 then ''BOX'' else '''' end as CGType ');
    sql.add('from CGZLS');
    sql.add('left join CGZL on CGZL.CGNO=CGZLS.CGNO');
    sql.add('left join ZSZL  on CGZL.ZSBH=ZSZL.ZSDH ');
    sql.add('left join (select KCRK.ZSNO,KCRKS.CLBH,sum(KCRKS.Qty) as RKQTY ');
    sql.add('           from KCRKS');
    sql.add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    sql.add('           where IsNull(KCRKS.Charge,0)<>1   and ISNULL(KCRKS.RKSB,'''')<>''NG'' and ISNULL(KCRKS.RKSB,'''')<>''DL'' and KCRK.GSBH='''+main.Edit2.Text+''' ');
    sql.add('                 AND KCRKS.CLBH='+''''+Edit1.Text+'''');
    // 20161012
    sql.add('                and KCRK.UserDate<=Convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate+1)+''') ');
    //
    sql.add('           group by KCRK.ZSNO,KCRKS.CLBH ) CGRK on CGRK.ZSNO=CGZLS.CGNO AND CGRK.CLBH=CGZLS.CLBH ') ;
    sql.add('where  isnull(CGZLS.qty,0)>isnull(CGRK.RKQTY,0) ');
    sql.add('       and CGZLS.YN<>''5'' and CGZLS.YN<>''0'' and IsNull(CGZL.DevType,'''')<>''Z07''  ');
    sql.add('       AND CGZLS.CLBH='+''''+Edit1.Text+''' and CGZL.CGDate<=Convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate)+''')');
    sql.add('       and CGZL.GSBH='+''''+main.Edit2.Text+'''');
    sql.add('       and CGZL.CGDate > @LDate ');   // add by Nick
    sql.add('       and (CGZL.CGLX='+''''+'2'+'''' );
    sql.add('            or CGZL.CGLX='+''''+'3'+'''' );
    sql.add('            or CGZL.CGLX='+''''+'5'+'''' );
    sql.add('            or CGZL.CGLX='+''''+'1'+''''+')' );
    sql.add(' ');
    active:=true;
  end;

  with Qry_JGUnB do
  begin
    active:=false;
    sql.Clear;
    sql.add(' select JGZLSS.ZLBH as RY,JGZLSS.CLSL, JGZLSS.Qty as JGUnQty,DDZL.Article,DDZL.DDZT as Status, DDZL.DDRQ,DDZL.BUYNO  ');
    sql.add('           from JGZLS');
    sql.add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO  ');
    sql.add('           left join JGZLSS on JGZLSS.JGNO=JGZLS.JGNO and JGZLSS.CLBH=JGZLS.CLBH ');
    sql.add('           left join DDZL on DDZL.DDBH=JGZLSS.ZLBH  ');
    sql.add('       where  JGZLS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('           and JGZL.CFMID1 ='+''''+'NO'+'''');
    sql.add('           and convert(smalldatetime,convert(varchar,JGZL.JGDATE,111))<=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',BaseDate)+''''  );
    sql.add('           and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.Add('           and JGZL.CKBH='+''''+CKBH+'''');
    sql.Add('order by DDZL.DDRQ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;

  with Qry_UnJG do
  begin
    active:=false;
    sql.Clear;
    sql.add('DECLARE @Ldate as datetime');
    sql.add('set @Ldate = DATEADD(month, -6, GETDATE())'); //限定六個月內的訂單
    sql.add('select  ZLZLS2.ZLBH');
    sql.add('        ,sum(case when ddzl.DDZT=''S'' then 0 else ZLZLS2.CLSL end ) as CLSL');
    sql.add('        ,isnull(JGZLBK.okQty,0) as BKQty ');
    sql.add('        ,sum(ZLZLS2.CLSL)-isnull(JGZLBK.okQty,0) as UnJGQty ');
    sql.add('        ,DDZL.ARTICLE,DDZL.DDZT as Status,DDZL.DDRQ,DDZL.BUYNO,ZLZLS2.MJBH, ZLZLS2.CLBH ');
    sql.add('from ZLZLS2');
    sql.add('left join DDZl on DDZl.DDBH=ZLZLS2.ZLBH');
    sql.Add('left join( select ZLBH,MJBH,CLBH,sum(okQty)as okQty');
    sql.add('           from(select JGZLSS.ZLBH,JGZLS.CLBH as MJBH,JGZLS.ZMLB as CLBH,sum(JGZLSS.Qty*JGZLS.QTY) as okQty from JGZLSS');
    sql.add('                left join JGZL on JGZL.JGNO=JGZLSS.JGNO ');
    sql.add('                left join JGZLS on JGZLS.JGNO=JGZLSS.JGNO AND JGZLS.CLBH=JGZLSS.CLBH ');
    sql.add('                left join ddzl on ddzl.ddbh=JGZLSS.ZLBH  ');  //add by Nick
    sql.add('                where JGZLS.ZMLB='+''''+Edit1.Text+'''');
    sql.add('                and JGZL.CFMID1 <>''NO'' ');
    sql.add('                and JGZLS.ZMLB<>''ZZZZZZZZZZ'' and ddzl.GSBH='''+main.Edit2.Text+''' ');
    sql.add('                and ((ddzl.YN=''1'') or (ddzl.YN<>''1'' and Convert(varchar,ddzl.OKDate,111)>'''+formatdatetime('yyyy/MM/dd',BaseDate)+''')) and ddzl.DDZT<>''C'' and ddzl.DDLB in (''F'',''N'') and ddzl.shipdate > @Ldate and DDZL.DDRQ<=Convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate)+''') ');
    sql.Add('                and convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111))< ''2017/09/01''');
    sql.add('                group by  JGZLSS.ZLBH,JGZLS.CLBH,JGZLS.ZMLB ');
    sql.Add('                union all');
    sql.Add('                select KCLLS.SCBH,KCLLS.DFL as MJBH,KCLLS.CLBH,sum(KCLLS.Qty) as okQty from KCLL ');
    sql.add('                left join KCLLS on KCLLS.LLNO=KCLL.LLNO ');
    sql.add('                left join ddzl on ddzl.ddbh=KCLLS.SCBH  ');
    sql.Add('                where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01''');
    sql.add('                and KCLL.SCBH=''JJJJJJJJJJ'' and KCLL.CFMID <>''NO''  and convert(varchar,KCLL.CFMDate,111)<='''+formatdatetime('yyyy/MM/dd',BaseDate)+''' ');
    sql.add('                and ((ddzl.YN=''1'') or (ddzl.YN<>''1'' and Convert(varchar,ddzl.OKDate,111)>'''+formatdatetime('yyyy/MM/dd',BaseDate)+''')) and ddzl.DDZT<>''C'' and ddzl.DDLB in (''F'',''N'') and ddzl.shipdate > @Ldate and DDZL.DDRQ<=Convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate)+''') ');
    sql.add('                and KCLLS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('                and KCLL.GSBH='''+main.Edit2.Text+''' ');
    sql.add('                group by KCLLS.SCBH,KCLLS.DFL,KCLLS.CLBH ) JGZLBK group by ZLBH,MJBH,CLBH');
    sql.add('          ) JGZLBK on JGZLBK.MJBH=ZLZLS2.MJBH and JGZLBK.CLBH=ZLZLS2.CLBH and JGZLBK.ZLBH=ZLZLS2.ZLBH');
    sql.add('where ZLZLS2.CLBH='+''''+Edit1.Text+'''');
    sql.add('      AND ZLZLS2.MJBH<>''ZZZZZZZZZZ'' and ddzl.GSBH='''+main.Edit2.Text+''' ');
    sql.add('      and ((ddzl.YN=''1'') or (ddzl.YN<>''1'' and Convert(varchar,ddzl.OKDate,111)>'''+formatdatetime('yyyy/MM/dd',BaseDate)+''')) and ddzl.DDZT<>''C'' and ddzl.DDLB in (''F'',''N'') and ddzl.shipdate > @Ldate and DDZL.DDRQ<=Convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate)+''') ');           
    //<>MP
    if (main.Edit2.Text='VA12') or (main.Edit2.Text='VC2') then
      sql.add('    AND DDZL.KHPO NOT LIKE ''%-MP''');
    sql.add('group by ZLZLS2.ZLBH,JGZLBK.okQty,DDZL.ARTICLE,DDZL.DDZT,DDZL.DDRQ,DDZL.BUYNO,ZLZLS2.MJBH, ZLZLS2.CLBH ');
    sql.add('--having  sum(ZLZLS2.CLSL) > isnull(JGZLBK.okQty,0)');
    sql.Add('order by DDZL.DDRQ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;

end;

procedure TRYTemp.EXCEL2Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext:String;
 begin
  SaveDialog1.FileName := 'ex';
      if (DBGridEh_UnLL is TDBGridEh) then
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
               SaveDBGridEhToExportFile(ExpClass,DBGridEh_UnLL,SaveDialog1.FileName,true);
               if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
                 shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
             end;
           end;
end;

procedure TRYTemp.FormDestroy(Sender: TObject);
begin
  RYTemp:=nil;
end;

procedure TRYTemp.MenuItem1Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext:String;
 begin
  SaveDialog1.FileName := 'ex';
      if (DBGridEh_UnJG is TDBGridEh) then
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
               SaveDBGridEhToExportFile(ExpClass,DBGridEh_UnJG,SaveDialog1.FileName,true);
               if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
                 shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
             end;
           end;
end;

procedure TRYTemp.MaterialTrace1Click(Sender: TObject);
begin
  if MaterialTrace=nil then
      MaterialTrace:=TMaterialTrace.create(self);
  MaterialTrace.edit1.Text:=Edit1.Text;
  MaterialTrace.CBX1.Text:=CKBH;
  MaterialTrace.CGNOEdit.Text:=Qry_UnRK.fieldbyname('CGNO').AsString;
  MaterialTrace.button1click(nil);
  MaterialTrace.show;
end;

procedure TRYTemp.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
