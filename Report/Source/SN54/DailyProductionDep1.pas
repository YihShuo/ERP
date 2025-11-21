unit DailyProductionDep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DB, DBTables, GridsEh, DBGridEh, ExtCtrls,ComObj;

type
  TDailyProductionDep = class(TForm)
    pnTop: TPanel;
    gdMain: TDBGridEh;
    dsMain: TDataSource;
    qrMain: TQuery;
    qrGS: TQuery;
    bnQuery: TButton;
    bnExcel: TButton;
    lbFactory: TLabel;
    cbFactory: TComboBox;
    dtpDate: TDateTimePicker;
    lbDate: TLabel;
    qrMainDepName: TStringField;
    qrMainKind: TStringField;
    qrMainC_d: TFloatField;
    qrMainC_m: TFloatField;
    qrMainS_d: TFloatField;
    qrMainS_m: TFloatField;
    qrMainW_d: TFloatField;
    qrMainW_m: TFloatField;
    qrMainO_d: TFloatField;
    qrMainO_m: TFloatField;
    qrMainZ_d: TFloatField;
    qrMainZ_m: TFloatField;
    qrMainA_d: TFloatField;
    qrMainA_m: TFloatField;
    qrMainGS: TStringField;
    qrMainC_r: TIntegerField;
    qrMainS_r: TIntegerField;
    qrMainW_r: TIntegerField;
    qrMainO_r: TIntegerField;
    qrMainZ_r: TIntegerField;
    qrMainA_r: TIntegerField;
    qrMainDepName2: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bnQueryClick(Sender: TObject);
    procedure gdMainGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure bnExcelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DailyProductionDep: TDailyProductionDep;

implementation

{$R *.dfm}

procedure TDailyProductionDep.FormDestroy(Sender: TObject);
begin
  DailyProductionDep:=nil;
end;

procedure TDailyProductionDep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDailyProductionDep.bnQueryClick(Sender: TObject);
var
  sDate,sY,sM:string;
begin
  sDate:=FormatDateTime('yyyy/mm/dd',dtpDate.Date);
  sY:=FormatDateTime('yyyy',dtpDate.Date);
  sM:=FormatDateTime('mm',dtpDate.Date);
  qrMain.Active:=false;
  qrMain.SQL.Clear;

  with qrMain.sql do
    begin
      add('select GSBH,');
      add('DepName,');
      add('case ');
      add('when len(sumline)<=3 then sumline ');
      add('when len(sumline)<=5 then SubString(Sumline,1,3)+''-''+SubString(Sumline,4,2) ');
      add('when len(sumline)=6 then SubString(Sumline,1,3)+''-''+SubString(Sumline,4,1)+''-''+SubString(Sumline,5,2) ');
      add('when len(sumline)>6 then SubString(Sumline,1,3)+''-''+SubString(Sumline,4,1)+''-''+SubString(Sumline,5,2)+''-''+SubString(Sumline,7,2) ');
      add('end as sumline,');

      add('Kind,C_r,C_d,C_m,S_r,S_d,S_m,W_r,W_d,W_m,O_r,O_d,O_m,Z_r,Z_d,Z_m,A_r,A_d,A_m ');
      add('from(');
      add('	select scbb.GSBH,');
      add(' case when scbb.GSBH in (''VA12'',''VA3'',''VB1'',''VB2'') then SUBSTRING(BDepartment.DepName,0,len(BDepartment.DepName)-1) else BDepartment.DepName end as DepName,');
      add('	case when BDepartment.sumline is null then ''其他'' else substring(BDepartment.sumline,0,LEN(BDepartment.sumline)-1) end as lean,');
      add('	isnull(BDepartment.sumline,''其他'') as sumline,''部門'' as Kind,');
      add('	max(case when SM.GXLB=''C'' then SM.Qty end) as C_r,	');
      add('	sum(case when scbbs.GXLB=''C'' and convert(varchar,scbb.SCDate,111)= '''+sDate+''' then scbbs.Qty end) as C_d,');
      add('	sum(case when scbbs.GXLB=''C'' then scbbs.Qty end) as C_m,');
      add('	max(case when SM.GXLB=''S'' then SM.Qty end) as S_r,');
      add('	sum(case when scbbs.GXLB=''S'' and convert(varchar,scbb.SCDate,111)= '''+sDate+''' then scbbs.Qty end) as S_d,');
      add('	sum(case when scbbs.GXLB=''S'' then scbbs.Qty end) as S_m,');
      add('	max(case when SM.GXLB=''W'' then SM.Qty end) as W_r,');
      add('	sum(case when scbbs.GXLB=''W'' and convert(varchar,scbb.SCDate,111)= '''+sDate+''' then scbbs.Qty end) as W_d,');
      add('	sum(case when scbbs.GXLB=''W'' then scbbs.Qty end) as W_m,');
      add('	max(case when SM.GXLB=''O'' then SM.Qty end) as O_r,');
      add('	sum(case when scbbs.GXLB=''O'' and convert(varchar,scbb.SCDate,111)= '''+sDate+''' then scbbs.Qty end) as O_d,');
      add('	sum(case when scbbs.GXLB=''O'' then scbbs.Qty end) as O_m,');
      add('	max(case when SM.GXLB=''Z'' then SM.Qty end) as Z_r,');
      add('	sum(case when scbbs.GXLB=''Z'' and convert(varchar,scbb.SCDate,111)= '''+sDate+''' then scbbs.Qty end) as Z_d,');
      add('	sum(case when scbbs.GXLB=''Z'' then scbbs.Qty end) as Z_m,');
      add('	max(case when SM.GXLB=''A'' then SM.Qty end) as A_r,');
      add('	sum(case when scbbs.GXLB=''A'' and convert(varchar,scbb.SCDate,111)= '''+sDate+''' then scbbs.Qty end) as A_d,');
      add('	sum(case when scbbs.GXLB=''A'' then scbbs.Qty end) as A_m');
      add('	from scbbs');
      add('	left join scbb on scbb.ProNo=scbbs.ProNo');
      add('	left join BDepartment on scbb.DepNo=BDepartment.ID');
      add('	left join (');
      add('		select GXLB,DepNO,sum(Qty) as Qty');
      add('		from SMDD');
      add('		where SMDD.SCMONTH= '''+sM+''' and SMDD.SCYEAR='''+sY+'''');
      if cbFactory.ItemIndex>0 then
        add('   and SMDD.GSBH = '''+cbFactory.Text+'''');
      add('		group by GXLB,DepNO');
      add('	)sm on SM.GXLB = scbbs.GXLB and SM.DepNO = scbb.DepNo');
      add(' where scbb.yn=''1'' and scbbs.gxlb in (''C'',''S'',''W'',''O'',''Z'',''A'')');
      add(' and month(scbb.scdate)= '''+sM+''' and YEAR(scbb.scdate)='''+sY+'''');
      if cbFactory.ItemIndex>0 then
      add(' and scbb.gsbh='''+cbFactory.Text+'''');
      add('	group by scbb.GSBH,BDepartment.sumline,');
      add(' case when scbb.GSBH in (''VA12'',''VA3'',''VB1'',''VB2'') then SUBSTRING(BDepartment.DepName,0,len(BDepartment.DepName)-1) else BDepartment.DepName end');
      add('	union all');
      add('	select scbb.GSBH,');
      add(' '''' as DepName,');
      add('	case when BDepartment.sumline is null then ''其他'' else substring(BDepartment.sumline,0,LEN(BDepartment.sumline)-1) end as lean,');
      add('	case when BDepartment.sumline is null then ''其他'' else substring(BDepartment.sumline,0,LEN(BDepartment.sumline)-1) end as sumline,');
      add(' ''合計'' as Kind,');
      add('	max(case when SM.GXLB=''C'' then SM.Qty end) as C_r,');
      add('	sum(case when scbbs.GXLB=''C'' and convert(varchar,scbb.SCDate,111)= '''+sDate+''' then scbbs.Qty end) as C_d,');
      add('	sum(case when scbbs.GXLB=''C'' then scbbs.Qty end) as C_m,');
      add('	max(case when SM.GXLB=''S'' then SM.Qty end) as S_r,');
      add('	sum(case when scbbs.GXLB=''S'' and convert(varchar,scbb.SCDate,111)= '''+sDate+''' then scbbs.Qty end) as S_d,');
      add('	sum(case when scbbs.GXLB=''S'' then scbbs.Qty end) as S_m,');
      add('	max(case when SM.GXLB=''W'' then SM.Qty end) as W_r,');
      add('	sum(case when scbbs.GXLB=''W'' and convert(varchar,scbb.SCDate,111)= '''+sDate+''' then scbbs.Qty end) as W_d,');
      add('	sum(case when scbbs.GXLB=''W'' then scbbs.Qty end) as W_m,');
      add('	max(case when SM.GXLB=''O'' then SM.Qty end) as O_r,');
      add('	sum(case when scbbs.GXLB=''O'' and convert(varchar,scbb.SCDate,111)= '''+sDate+''' then scbbs.Qty end) as O_d,');
      add('	sum(case when scbbs.GXLB=''O'' then scbbs.Qty end) as O_m,');
      add('	max(case when SM.GXLB=''Z'' then SM.Qty end) as Z_r,');
      add('	sum(case when scbbs.GXLB=''Z'' and convert(varchar,scbb.SCDate,111)= '''+sDate+''' then scbbs.Qty end) as Z_d,');
      add('	sum(case when scbbs.GXLB=''Z'' then scbbs.Qty end) as Z_m,');
      add('	max(case when SM.GXLB=''A'' then SM.Qty end) as A_r,');
      add('	sum(case when scbbs.GXLB=''A'' and convert(varchar,scbb.SCDate,111)= '''+sDate+''' then scbbs.Qty end) as A_d,');
      add('	sum(case when scbbs.GXLB=''A'' then scbbs.Qty end) as A_m');
      add('	from scbbs');
      add('	left join scbb on scbb.ProNo=scbbs.ProNo');
      add('	left join BDepartment on scbb.DepNo=BDepartment.ID');
      add('	left join (');
      add('		select SMDD.GXLB,');
      add('   case when BDepartment.sumline is null then ''其他'' else substring(BDepartment.sumline,0,LEN(BDepartment.sumline)-1) end as sumline,');
      add('   sum(SMDD.Qty) as Qty');
      add('		from SMDD');
      add('   left join BDepartment on smdd.DepNo=BDepartment.ID');
      add('		where SMDD.SCMONTH= '''+sM+''' and SMDD.SCYEAR='''+sY+'''');
      if cbFactory.ItemIndex>0 then
        add('   and SMDD.GSBH = '''+cbFactory.Text+'''');
      add('		group by SMDD.GXLB,');
      add('   case when BDepartment.sumline is null then ''其他'' else substring(BDepartment.sumline,0,LEN(BDepartment.sumline)-1) end');
      add('	)sm on SM.GXLB = scbbs.GXLB and SM.sumline = ');
      add(' case when BDepartment.sumline is null then ''其他'' else substring(BDepartment.sumline,0,LEN(BDepartment.sumline)-1) end');
      add(' where scbb.yn=''1'' and scbbs.gxlb in (''C'',''S'',''W'',''O'',''Z'',''A'')');
      add(' and month(scbb.scdate)= '''+sM+''' and YEAR(scbb.scdate)='''+sY+'''');
      if cbFactory.ItemIndex>0 then
        add('and scbb.GSBH = '''+cbFactory.Text+'''');
      add('	group by scbb.GSBH,');
      add('	case when BDepartment.sumline is null then ''其他'' else substring(BDepartment.sumline,0,LEN(BDepartment.sumline)-1) end');
      add(') as data');
      add('order by GSBH,Lean,case when Kind = ''部門'' then 1 else case when Kind = ''合計'' then 2 end end');
    end;

  qrMain.active:=true;
end;

procedure TDailyProductionDep.gdMainGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if qrMain.FieldByname('Kind').asstring='合計' then
    gdMain.canvas.font.color:=clred;
end;

procedure TDailyProductionDep.bnExcelClick(Sender: TObject);
var
  eclApp,workBook:olevariant;
  i,j,iFields:integer;
  slSplit:TStringList;
const
  aColW:array[0..21] of integer=(5,10,10,10,10,10,10,10,10,10,5,5,5,5,5,5,5,5,5,5,5,5);       //定義每個欄寬 by star
begin
  slSplit:=TStringList.Create;
  slSplit.Delimiter:='|';

  if (qrMain.Active = False) or (qrMain.RecordCount = 0) then
  begin
    showmessage('No record.沒有記錄');
    exit;
  end;
  try
    eclApp:=CreateOleObject('Excel.Application');
    workBook:=CreateOleObject('Excel.Sheet');
    workBook:=eclApp.workbooks.Add;

    eclApp.Cells[1,10]:=cbFactory.Text+'生產動態日報表(部門)'+FormatDateTime('yyyy/mm/dd',dtpDate.Date);

    iFields:= qrMain.FieldCount;

    for i:=1 to iFields do   //設定欄位名稱,顏色,大小 by star
      begin
        slSplit.DelimitedText:=gdMain.Columns[i-1].Title.Caption;
        eclApp.Cells[2,i].interior.color:=clyellow;
        eclApp.Cells[2,i]:=slSplit[0];
        eclApp.Cells[3,i]:=slSplit[1];
        eclApp.Cells[3,i].interior.color:=clyellow;
        eclApp.columns[i].font.size:=8;
        eclApp.columns[i].columnwidth:=aColW[i-1];
      end;

    qrMain.First;
    j:=4;
    while not qrMain.Eof do
      begin
        for i:=1 to iFields do eclApp.Cells[j,i]:=qrMain.Fields[i-1].Value;    //合計的欄位用紅色顯示 by star
        if qrMain.FieldByname('Kind').asstring='合計' then
          eclApp.Range[eclApp.Cells[j,1],eclApp.Cells[j,iFields]].interior.color:=clred;
        inc(j);
        qrMain.Next;
      end;


    eclApp.Visible:=True;
    eclApp := Unassigned;
  except
    Application.MessageBox('沒有安裝Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;

  end;
end;

procedure TDailyProductionDep.FormCreate(Sender: TObject);
begin
  dtpDate.Date:= now;
  qrGS.SQL.Add('select gsdh from bgszl');
  qrGS.Active:=true;
  qrGS.First;
  while not qrGS.Eof do     //加入工廠進選項 by star
    begin
      cbFactory.Items.Add(qrGS.fieldbyname('gsdh').AsString);
      qrGS.Next;
    end;
end;

end.
