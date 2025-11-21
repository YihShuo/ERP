unit ConverseProductionSchedule1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, DB, DBTables,ComObj,DateUtils;

type
  TConverseProductionSchedule = class(TForm)
    pnTop: TPanel;
    bnExcel: TButton;
    dtpFrom: TDateTimePicker;
    dtpTo: TDateTimePicker;
    lbTo: TLabel;
    DataSource1: TDataSource;
    qrMain: TQuery;
    pnMain: TPanel;
    lbMsg: TLabel;
    bnImport: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure bnExcelClick(Sender: TObject);
    procedure showData(dDate:TDatetime);
    procedure createExcel(oApp:olevariant;oSheet:olevariant;sMonth:string);
    function  dateToMStr(dDate:TDateTime):String;
    procedure bnImportClick(Sender: TObject);
    function  getMaterialStatus(sDDBH:String):String;
    procedure FormCreate(Sender: TObject);
  private
    slDDBH:TStringList;
    slDate:TStringList;
  public
    { Public declarations }
  end;

var
  ConverseProductionSchedule: TConverseProductionSchedule;

implementation

{$R *.dfm}

procedure TConverseProductionSchedule.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TConverseProductionSchedule.FormDestroy(Sender: TObject);
begin
  ConverseProductionSchedule:=nil;
end;

procedure TConverseProductionSchedule.bnExcelClick(Sender: TObject);
var
  i,iCount,iMDiff,iYDiff:integer;
  eclApp,oSheet:olevariant;
  dDate:TDatetime;
  sMonth:string;
begin

  iMDiff:= Monthof(dtpTo.DateTime)-Monthof(dtpFrom.DateTime);
  iYDiff:= Yearof(dtpTo.DateTime)-Yearof(dtpFrom.DateTime);
  iCount:=iYDiff*12+iMDiff;
  dDate:= dtpFrom.datetime;

  eclApp:=CreateOleObject('Excel.Application');
  eclApp.workbooks.Add;

  for i:=0 to iCount do
    eclApp.worksheets.Add;

  for i:=0 to iCount do
    begin
      sMonth:= datetomstr(dDate);
      lbMsg.Caption:='Getting the data from '+sMonth;
      showData(dDate);
      lbMsg.Caption:='Creating excel from '+sMonth;
      oSheet:= eclApp.worksheets[i+1];
      oSheet.name:=sMonth;
      createExcel(eclApp,oSheet,sMonth);
      dDate:=incmonth(dDate,1);
    end;
  eclApp.worksheets[1].activate;

  lbMsg.Caption:='Finished.';

  for i:=iCount+2 to eclApp.worksheets.count do
    eclApp.worksheets[iCount+2].delete;

  eclApp.Visible:=True;
  eclApp := Unassigned;

end;

procedure TConverseProductionSchedule.showData(dDate:TDateTime);
var
  ff:textfile;
begin
  qrMain.active:=false;
  qrMain.sql.clear;

  with qrMain.sql do
    begin
      add('select ');
      add('ddzl.KHPO,ddzl.DDBH,SUBSTRING(BUYNO,0,7),ddzl.ShipDate,lbzls.ywsm,ddzl.ARTICLE,xxzl.XieMing,xxzl.YSSM,DDZL.Pairs,xxzl.DAOMH,');
      add(''''' as M_Status,');
      add('sm.C_depname,');
      add('sm.C_start,sm.C_finish,');
      add('case when sm.C_qty-sc.C < 0 then 0 else sm.C_qty-isnull(sc.C,0) end as C_Bal,');
      add('sc.C as C_Fin,');
      add('sm.S_depname,');
      add('sm.S_start,sm.S_finish,');
      add('case when sm.S_qty-sc.S < 0 then 0 else sm.S_qty-isnull(sc.S,0) end as S_Bal,');
      add('sc.S as S_Fin,');
      add('sm.A_depname,');
      add('sm.A_start,sm.A_finish,');
      add('case when sm.A_qty-sc.A < 0 then 0 else sm.A_qty-isnull(sc.A,0) end as A_Bal,');
      add('sc.A as A_Fin');
      add('from ddzl');
      add('left join xxzl on xxzl.ARTICLE = DDZL.ARTICLE');
      add('left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb=''06''');
      add('left join (');
      add('	select');
      add('	smdd.ysbh,');
      add(' max(case when smdd.GXLB=''C'' then BDepartment.DepName end) as C_depname,');
      add('	min(case when smdd.GXLB=''C'' then smdd.plandate end) as C_start,');
      add('	max(case when smdd.GXLB=''C'' then smdd.PlanEdate end) as C_finish,');
      add(' sum(case when smdd.GXLB=''C'' then smdd.qty end) as C_qty,');
      add(' max(case when smdd.GXLB=''S'' then BDepartment.DepName end) as S_depname,');
      add('	min(case when smdd.GXLB=''S'' then smdd.plandate end) as S_start,');
      add('	max(case when smdd.GXLB=''S'' then smdd.PlanEdate end) as S_finish,');
      add(' sum(case when smdd.GXLB=''S'' then smdd.qty end) as S_qty,');
      add(' max(case when smdd.GXLB=''A'' then BDepartment.DepName end) as A_depname,');
      add('	min(case when smdd.GXLB=''A'' then smdd.plandate end) as A_start,');
      add('	max(case when smdd.GXLB=''A'' then smdd.PlanEdate end) as A_finish,');
      add(' sum(case when smdd.GXLB=''A'' then smdd.qty end) as A_qty');
      add('	from smdd');
      add('	left join ddzl on ddzl.ddbh = smdd.ysbh');
      add('	left join BDepartment on SMDD.DepNO = BDepartment.ID');
      add('	where ddzl.KHBH = ''036'' ');
      add(' and month(DDZL.shipdate)='''+inttostr(monthof(dDate))+'''');
      add('	and YEAR(DDZL.ShipDate)='''+inttostr(yearof(dDate))+'''');
      add('	and smdd.GXLB in (''C'',''S'',''A'')');
      add('	group by smdd.ysbh');
      add(') sm on sm.ysbh = ddzl.ddbh');
      add('left join(');
      add('	select');
      add('	scbbs.SCBH,');
      add('	sum(case when scbbs.GXLB=''C'' then scbbs.Qty end) as C,');
      add('	sum(case when scbbs.GXLB=''S'' then scbbs.Qty end) as S,');
      add('	sum(case when scbbs.GXLB=''A'' then scbbs.Qty end) as A');
      add('	from scbbs');
      add(' left join scbb on scbb.ProNo = scbbs.ProNo');
      add('	left join DDZL on DDZL.DDBH = scbbs.SCBH');
      add(' left join BDepartment on scbb.DepNO = BDepartment.ID');
      add('	where ddzl.KHBH = ''036'' ');
      add(' and month(DDZL.shipdate)='''+inttostr(monthof(dDate))+'''');
      add('	and YEAR(DDZL.ShipDate)='''+inttostr(yearof(dDate))+'''');
      add('	and scbbs.GXLB in (''C'',''S'',''A'')');
      add('	group by SCBH');
      add(') sc on sc.SCBH = sm.ysbh');
      add('where ddzl.KHBH = ''036'' ');
      add(' and month(DDZL.shipdate)='''+inttostr(monthof(dDate))+'''');
      add('	and YEAR(DDZL.ShipDate)='''+inttostr(yearof(dDate))+'''');
      add('order by DDZL.DDBH');
    end;

    assignfile(ff,'sql.txt');
    rewrite(ff);
    writeln(ff,qrMain.sql.text);
    closefile(ff);

    qrMain.active:=true;
end;

procedure TConverseProductionSchedule.createExcel(oApp:olevariant;oSheet:olevariant;sMonth:string);
var
  i,j,iFields:integer;
  sPic:string;
  oPic:OleVariant;
const
  aCol:array[0..25,0..1] of string=(
    ('Customer PO#','10'),
    ('RY#','10'),
    ('Buy Cycle Stamp','10'),
    ('GAC Date','10'),
    ('Country','10'),
    ('SKU','10'),
    ('Style Description','10'),
    ('Shoe Color','10'),
    ('Order Qty','10'),
    ('斬刀','10'),
    ('Material Status','10'),
    ('裁斷廠區','10'),
    ('Cutting Estimated Start Date','10'),
    ('Cutting Estimated Finish Date','10'),
    ('Bal.Qty','10'),
    ('FIN','10'),
    ('針車廠區','10'),
    ('Stitching Estimated Start Date','10'),
    ('Stitching Estimated Finish Date','10'),
    ('Bal.Qty','10'),
    ('FIN','10'),
    ('成型廠區','10'),
    ('Assem Initial Estimated Start Date','10'),
    ('Assem Initial Estimated Finish Date','10'),
    ('Bal.Qty','10'),
    ('FIN','10')
  );
begin
  sPic:=ExtractFilePath(ParamStr(0))+'converse.gif';
  oPic:=oSheet.pictures.insert(sPic);
  oPic.shaperange.left:=60;
  oPic.shaperange.top:=0;

  oSheet.cells[3,11].value:='Update:'+DateToStr(Date);
  oSheet.Range[oSheet.Cells[3,12],oSheet.Cells[3,26]].merge;
  oSheet.cells[3,12].Interior.Color:=clYellow;
  oSheet.cells[3,12].value:='Production Schedule';
  oSheet.Range[oSheet.Cells[3,12],oSheet.Cells[3,26]].borders[1].linestyle:=1;
  oSheet.Range[oSheet.Cells[3,12],oSheet.Cells[3,26]].borders[2].linestyle:=1;
  oSheet.Range[oSheet.Cells[3,12],oSheet.Cells[3,26]].borders[3].linestyle:=1;
  oSheet.Range[oSheet.Cells[3,12],oSheet.Cells[3,26]].borders[4].linestyle:=1;

  iFields:= qrMain.FieldCount;
  for i:=1 to iFields do
    begin
      oSheet.columns[i].font.size:=8;
      oSheet.columns[i].wraptext:=true;
      oSheet.columns[i].columnwidth:=strtoint(aCol[i-1][1]);
      oSheet.Cells[4,i]:=aCol[i-1][0];
    end;
  oSheet.activate;
  oApp.activewindow.splitrow:=4;
  oApp.activewindow.freezepanes:=true;

    qrMain.First;
    j:=5;
    while not qrMain.Eof do
      begin
        for i:=1 to iFields do
          oSheet.Cells[j,i]:=qrMain.Fields[i-1].Value;
        oSheet.Cells[j,11]:=getMaterialStatus(qrMain.fieldbyname('DDBH').Value);
        inc(j);
        qrMain.Next;
      end;

  oSheet.Range[oSheet.Cells[j,1],oSheet.Cells[j,3]].merge;
  oSheet.Range[oSheet.Cells[j,1],oSheet.Cells[j,26]].Interior.Color:=clAqua;
  oSheet.cells[j,1].value:=sMonth+' Total:';

  oSheet.Range[oSheet.Cells[1,1],oSheet.Cells[j,26]].HorizontalAlignment:=$FFFFEFF4;
  oSheet.Range[oSheet.Cells[4,1],oSheet.Cells[j-1,26]].borders[1].linestyle:=1;
  oSheet.Range[oSheet.Cells[4,1],oSheet.Cells[j-1,26]].borders[2].linestyle:=1;
  oSheet.Range[oSheet.Cells[4,1],oSheet.Cells[j-1,26]].borders[3].linestyle:=1;
  oSheet.Range[oSheet.Cells[4,1],oSheet.Cells[j-1,26]].borders[4].linestyle:=1;

  if qrMain.RecordCount>0 then
    begin
      oSheet.Cells[j,9].formula := '=SUM(R5C9:R' + inttostr(j-1) + 'C9)';
      oSheet.Cells[j,15].formula := '=SUM(R5C15:R' + inttostr(j-1) + 'C15)';
      oSheet.Cells[j,20].formula := '=SUM(R5C20:R' + inttostr(j-1) + 'C20)';
      oSheet.Cells[j,25].formula := '=SUM(R5C25:R' + inttostr(j-1) + 'C25)';
    end;

  oSheet.Range[oSheet.Cells[5,4],oSheet.Cells[j-1,4]].font.color:=clpurple;
  oSheet.Range[oSheet.Cells[5,15],oSheet.Cells[j,15]].font.color:=clred;
  oSheet.Range[oSheet.Cells[5,20],oSheet.Cells[j,20]].font.color:=clred;
  oSheet.Range[oSheet.Cells[5,25],oSheet.Cells[j,25]].font.color:=clred;
  oSheet.Range[oSheet.Cells[4,1],oSheet.Cells[j-1,25]].autofilter;

end;

function  TConverseProductionSchedule.dateToMStr(dDate:TDateTime):String;
var
  iMonth:integer;
begin
  iMonth:= monthof(dDate);
  case iMonth of
    1:result:='January';
    2:result:='February';
    3:result:='March';
    4:result:='April';
    5:result:='May';
    6:result:='June';
    7:result:='July';
    8:result:='August';
    9:result:='September';
    10:result:='October';
    11:result:='November';
    12:result:='December';
  end;
end;

procedure TConverseProductionSchedule.bnImportClick(Sender: TObject);
var
   odFile:TOpenDialog;
   eclApp:olevariant;
   i,j,k:integer;
begin
   odFile := TOpenDialog.Create(self);
   odFile.Filter :='Excel files|*.xls;*.xlsx';

   slDDBH.Clear;
   slDate.Clear;

   if odFile.Execute then
    begin
      lbMsg.Caption:='Importing material status.';
      eclApp:=CreateOleObject('Excel.Application');
      eclApp.Workbooks.Open(odFile.FileName);
      for i:=1 to eclApp.worksheets.count do
        if copy(eclApp.worksheets[i].name,0,2)='20' then
          begin
            for j:=1 to eclApp.worksheets[i].usedrange.columns.count do
              if eclApp.worksheets[i].cells[1,j].value='VN布料' then
                begin
                  k:=j-1;
                  break;
                end;
            for j:=1 to eclApp.worksheets[i].usedrange.rows.count do
              begin
                slDDBH.Add(eclApp.worksheets[i].cells[j,1].value);
                slDate.Add(eclApp.worksheets[i].cells[j,k].value);
              end;
          end;
      eclApp.Workbooks.Close;
      lbMsg.Caption:='Importing material status is finished.';
    end;
   odFile.Free;
   
end;

function  TConverseProductionSchedule.getMaterialStatus(sDDBH:String):String;
var
  i:integer;
begin
  result:='';
  for i:=0 to slDDBH.count-1 do
    if slDDBH[i]=sDDBH then
      result:=slDate[i];
end;

procedure TConverseProductionSchedule.FormCreate(Sender: TObject);
begin
   slDDBH:=TStringList.Create;
   slDate:=TStringList.Create;
   dtpFrom.Date:= now;
   dtpTo.Date:= now;
end;

end.
