unit Detail_POHAnalysis1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,funUnit,dateutils,
  comobj,Dialogs, GridsEh, DBGridEh, ExtCtrls, StdCtrls, ComCtrls, DB, DBTables,IniFiles;

type
  TDetail_POHAnalysis = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    edtRY: TEdit;
    edtLean: TEdit;
    btnQuery: TButton;
    btnExcel: TButton;
    ckbPlanDate: TCheckBox;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    edtBuyNo: TEdit;
    cbbGXLB: TComboBox;
    DS1: TDataSource;
    Query1: TQuery;
    Query1BUYNO: TStringField;
    Query1DDBH: TStringField;
    Query1DepName: TStringField;
    Query1PlanDate: TDateTimeField;
    Query1ARTICLE: TStringField;
    Query1YSSM: TStringField;
    Query1Pairs: TIntegerField;
    Query1Shipdate: TDateTimeField;
    Query1Country: TStringField;
    Query1DAOMH: TStringField;
    Query1XTMH: TStringField;
    Query1IEQty: TIntegerField;
    Query1IEPeo: TIntegerField;
    Query1IEPOH: TFloatField;
    Query1IE_T2: TIntegerField;
    Query1IMGName: TStringField;
    Query1POH: TFloatField;
    Query1CQQty: TIntegerField;
    Query1T2: TIntegerField;
    Qtemp: TQuery;
    procedure btnQueryClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    ShoePicPath:String;
    { Public declarations }
    procedure ReadIni();
  end;

var
  Detail_POHAnalysis: TDetail_POHAnalysis;
  NDate:TDate;

implementation

uses Main1;

{$R *.dfm}

procedure TDetail_POHAnalysis.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=Cafree;
end;

procedure TDetail_POHAnalysis.ReadIni();
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


procedure TDetail_POHAnalysis.FormDestroy(Sender: TObject);
begin
  Detail_POHAnalysis:=nil;
end;

procedure TDetail_POHAnalysis.FormCreate(Sender: TObject);
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    active:=false;
    DTP1.Date:=StartOfTheMonth(NDate-30);
    DTP2.Date:=EndOfTheMonth(NDate-30);
  end;
  ReadIni();
end;

procedure TDetail_POHAnalysis.btnQueryClick(Sender: TObject);
begin
  with Query1 do
  begin
    Active :=false;
    SQL.Clear;
    SQL.Add('select SMDD.*,SMZL.POH,SMZL.CQQty,SMZL.T2 from (');
    SQL.Add('select DDZL.BUYNO,DDZL.DDBH,Bdepartment.DepName,max(SMDD.plandate) as PlanDate ,DDZL.ARTICLE');
    SQL.Add(',XXZL.YSSM,Sum(SMDD.Qty) as Pairs,DDZL.Shipdate,LBZLS.YWSM as Country,XXZL.DAOMH,XXZL.XTMH,IEQty,IEPeo,POH as IEPOH,');
    SQL.Add('       case when POH>=1.5 then 1');
    SQL.Add('            when POH>=1.25 and POH<1.5 then 2');
    SQL.Add('            when POH>=1.13 and POH<1.25 then 3');
    SQL.Add('            when POH>=1.0 and POH<1.13 then 4');
    SQL.Add('            when POH>=0.86 and POH<1.0 then 5');
    SQL.Add('            when POH>=0.75 and POH<0.86 then 6');
    SQL.Add('            when POH>=0.61 and POH<0.75 then 7');
    SQL.Add('            when POH<=0.6 then 8 end as IE_T2,Max(XXZL.IMGName) as IMGName');
    SQL.Add('from SMDD');
    SQL.Add('left join Bdepartment on Bdepartment.ID=SMDD.DepNo');
    SQL.Add('left join DDZL on DDZl.DDBH=SMDD.YSBH');
    SQL.Add('left join XXZL on XXZL.XieXing=.DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    SQL.Add('left join LBZLS on LBZLS.LB=''06'' and LBZLS.LBDH=DDZL.DDGB');
    SQL.Add('left join (select SCXXCL.xiexing,SCXXCL.shehao,max(SCXXCL.BZCL)as IEQty, Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,(Round(Max(Convert(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZJS),2)) as POH');
    SQL.Add('            from SCXXCL group by xiexing,shehao) SCXXCL on SCXXCL.xiexing=ddzl.xiexing and SCXXCL.shehao=ddzl.shehao');
    SQL.Add('where 1=1 ');
    if edtBuyNo.Text <> '' then
      SQL.Add('and  DDZL.BuyNo like '+''''+edtBuyNo.Text+'%'+'''');
    if edtRY.Text <> '' then
      SQL.Add('and  DDZL.DDBH like '+''''+edtRY.Text+'%'+'''');
    SQL.Add('and  DDZL.GSBH ='''+main.Edit2.Text+''' ');
    if edtLean.Text <> '' then
      SQL.Add('and  Bdepartment.Depname like '+''''+edtLean.Text+'%'+'''');
    if ckbPlanDate.Checked then
    begin
      SQL.Add('and convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between ');
      sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''' ');
    end;
    if cbbGXLB.Text <> 'ALL' then
      SQL.Add('and SMDD.GXLB  ='''+cbbGXLB.Text+''' ');
    SQL.Add('group by  DDZL.BUYNO,DDZL.DDBH,Bdepartment.depname ,DDZL.ARTICLE');
    SQL.Add(',XXZL.YSSM,DDZL.SHipdate,LBZLS.YWSM,XXZL.DAOMH,XXZL.XTMH,IEQty,IEPeo,POH ) SMDD');
    SQL.Add('left join (');
    SQL.Add('Select ScanDate,DepName,YSBH,GXLB,CQQty,POH,');
    SQL.Add('       case when POH>=1.5 then 1');
    SQL.Add('            when POH>=1.25 and POH<1.5 then 2');
    SQL.Add('            when POH>=1.13 and POH<1.25 then 3');
    SQL.Add('            when POH>=1.0 and POH<1.13 then 4');
    SQL.Add('            when POH>=0.86 and POH<1.0 then 5');
    SQL.Add('            when POH>=0.75 and POH<0.86 then 6');
    SQL.Add('            when POH>=0.61 and POH<0.75 then 7');
    SQL.Add('            when POH<=0.61 then 8 end as T2  ');
    SQL.Add('from (');
    SQL.Add('select * from (');
    SQL.Add('select SMZL.*,ROW_NUMBER() over (PARTITION BY YSBH,GXLB ORDER BY POH DESC) as rn from ( ');
    SQL.Add('select ScanDate,YSBH,DepName,GXLB,Article,XieMing,DAOMH,IE_PPH,CQQty,Sum(Qty) as Qty');
    SQL.Add('     ,Convert(varchar(3),Min( SMZL.TimeGroupID)) +''~''+ Convert(varchar(3),Max(SMZL.TimeGroupID )) as PHour ,Sum(minut) as PTime ');
    SQL.Add('     ,Round( sum(Qty) /  Sum(minut) / CQQty,4) as POH');
    SQL.Add('    from (');
    SQL.Add('select ScanDate,YSBH,DepName,GXLB,Article,XieMing,DAOMH,IE_PPH,TimeGroupID,minut,CQQty,sum(CTS)*Qty as Qty from (');
    SQL.Add('select convert(varchar,SMZL.ScanDate,111) as ScanDate,SMDD.YSBH,BDepartment.DepName,SMDDSS.GXLB,SMDD.Article,SMDD.XieMing,XXZL.DAOMH,');
    SQL.Add('       SMZL.CTS,SMDDSS.Qty,');
    SQL.Add('       RSCQ.CQQty,SCXXCL.POH as IE_PPH,SMZLT.TimeGroupID,SMZLT.minut');
    SQL.Add('from (select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZL where SMZL.ScanDate>='''+formatdatetime('yyyy/MM/dd',NDate)+''' union all select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZLOld) SMZL');
    SQL.Add('left join BDepartment on Bdepartment.ID=SMZL.DepNo');
    SQL.Add('left join SMDDSS on SMDDSS.CodeBar=SMZL.CodeBar');
    SQL.Add('left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB');
    SQL.Add('left join RSCQ on RSCQ.DepNO=BDepartment.ID and RSCQ.RSDate=convert(varchar,SMZL.ScanDate,111)');
    SQL.Add('left join DDZL on DDZL.DDBH=SMDD.YSBH');
    SQL.Add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    SQL.Add('left join (Select XieXing,SheHao,Max(Convert(float,SCXXCL.BZCL)) as IEQty,Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,');
    SQL.Add('                  (Round(Max(Convert(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZJS),4)) as POH ');
    SQL.Add('           from SCXXCL ');
    SQL.Add('           Group by XieXing,SheHao ) SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao ');
    SQL.Add('left join (');
    SQL.Add('select SMZL.*,IsNull(SCSJDV.minut,1) as minut from (');
    SQL.Add('select SMZL.SMNO,SMZL.DepNo,((datename(hh,SMZL.ScanDate)*60+datename(mi,SMZL.ScanDate))-0)/60 as TimeGroupID ');
    SQL.Add('from (select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZL where SMZL.ScanDate>='''+formatdatetime('yyyy/MM/dd',NDate)+''' union all select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZLOld) SMZL');
    SQL.Add('      left join SMDDSS on SMDDSS.CodeBar=SMZL.CodeBar');
    SQL.Add('      left join BDepartment on Bdepartment.ID=SMZL.DepNo');
    SQL.Add('      where SMDDSS.DDBH in (');
    SQL.Add('         select DDBH from SMDD where 1=1');
    if ckbPlanDate.Checked then
    begin
      SQL.Add('         and convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between ');
      SQL.Add('         '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    end;
    if edtRY.Text <> '' then
      SQL.Add('         and SMDD.DDBH like '+''''+edtRY.Text+'%'+'''');
    if cbbGXLB.Text <> 'ALL' then
      SQL.Add('         and SMDD.GXLB  ='''+cbbGXLB.Text+'''');
    SQL.Add('         )');
    if edtRY.Text <> '' then
      SQL.Add('     and SMDDSS.DDBH like '+''''+edtRY.Text+'%'+'''');
    if edtLean.Text <> '' then
      SQL.Add('    and BDepartment.DepName like '+''''+edtLean.Text+'%'+'''');
    if cbbGXLB.Text <> 'ALL' then
      SQL.Add('    and SMDDSS.GXLB ='''+cbbGXLB.Text+''' ');
    SQL.Add('      ) SMZL ');
    SQL.Add('Left join SCSJDV on SCSJDV.ID=SMZL.DepNo and SCSJDV.hors=SMZL.TimeGroupID ');
    SQL.Add('        ) SMZLT on SMZLT.SMNO=SMZL.SMNO');
    SQL.Add('where 1=1 ');
    if edtLean.Text <> '' then
      SQL.Add('      and BDepartment.DepName like '+''''+edtLean.Text+'%'+'''');
    if edtRY.Text <> '' then
      SQL.Add('      and SMDDSS.DDBH like '+''''+edtRY.Text+'%'+'''');
    SQL.Add('      and DDZL.GSBH ='''+main.Edit2.Text+''' ');
    if edtBuyNo.Text <> '' then
      SQL.Add('      and  DDZL.BuyNo like '+''''+edtBuyNo.Text+'%'+'''');
    if cbbGXLB.Text <> 'ALL' then
      SQL.Add('      and SMDDSS.GXLB ='''+cbbGXLB.Text+''' ');
    SQL.Add('      and SMDDSS.DDBH in (');
    SQL.Add('         select DDBH from SMDD where 1=1');
    if ckbPlanDate.Checked then
    begin
      SQL.Add('         and convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between ');
      SQL.Add('         '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    end;
    if edtRY.Text <> '' then
      SQL.Add('  and SMDD.DDBH like '+''''+edtRY.Text+'%'+'''');
    if cbbGXLB.Text <> 'ALL' then
      SQL.Add('         and SMDD.GXLB  ='''+cbbGXLB.Text+'''');
    SQL.Add('         )');
    SQL.Add(') SMZL group by ScanDate,YSBH,DepName,GXLB,Article,XieMing,DAOMH,IE_PPH,TimeGroupID,minut,Qty,CQQty');
    SQL.Add(') SMZL group by ScanDate,YSBH,DepName,GXLB,Article,XieMing,DAOMH,IE_PPH,CQQty');
    SQL.Add(') SMZL ) SMZL where rn=1) SMZL ');
    SQL.Add(') SMZL on SMZL.YSBH=SMDD.DDBH');
    SQL.Add('order by SMDD.depname,SMDD.plandate');
    //funcobj.WriteErrorLog(sql.Text);
    Active :=true;
  end;
end;

procedure TDetail_POHAnalysis.btnExcelClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    picture,workRange,workSheet : OleVariant;
    checkshoePic : string;
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
          eclApp.Cells(j,16):= '';
        end;
        //
        eclApp.Rows[j].RowHeight := 77;
        checkshoePic:=StringReplace(Query1.FieldByName('IMGname').Asstring,'H:',ShoePicPath, [rfReplaceAll, rfIgnoreCase]);
        //funcObj.WriteErrorLog(checkshoePic);
        if FileExists(checkshoePic)=true then
        begin
            workSheet := workBook.WorkSheets[1];
            eclApp.WorkSheets[1].Activate;
            workSheet.Select;
            workRange :=workSheet.Range[workSheet.Cells.Item[j,16],workSheet.Cells.item[j,16]];
            picture := workSheet.pictures.Insert(checkshoePic);
            picture.left := workRange.left + 1;
            picture.top := workRange.top + 1;
            picture.width := workRange.width - 2;
            picture.height := workRange.height - 2;
            picture := Unassigned;
        end;
        Query1.Next;
        inc(j);
      end;
      for k:=1 to 4 do
      begin
        eclApp.range[eclApp.cells[1,1],eclApp.cells[j-1,Query1.FieldCount]].borders[k].linestyle:=1;
      end;
      eclapp.columns.autofit;
      eclApp.columns[16].ColumnWidth := 30;
      showmessage('Succeed');
      eclApp.Visible:=True;
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end;
end;

end.
