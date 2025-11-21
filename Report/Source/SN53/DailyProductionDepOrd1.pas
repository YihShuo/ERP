unit DailyProductionDepOrd1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, DB, DBTables, StdCtrls, ComCtrls,ComObj;

type
  TDailyProductionDepOrd = class(TForm)
    pnTop: TPanel;
    gdMain: TDBGridEh;
    bnQuery: TButton;
    qrMain: TQuery;
    dsMain: TDataSource;
    dtpDate: TDateTimePicker;
    cbFactory: TComboBox;
    lbDate: TLabel;
    lbFactory: TLabel;
    qrMainDepName: TStringField;
    qrMainSCBH: TStringField;
    qrMainkfjc: TStringField;
    qrMainKHPO: TStringField;
    qrMainXieXing: TStringField;
    qrMainARTICLE: TStringField;
    qrMainDAOMH: TStringField;
    qrMainYSSM: TStringField;
    qrMainywsm: TStringField;
    qrMainPairs: TIntegerField;
    qrMainC_d: TFloatField;
    qrMainC_m: TFloatField;
    qrMainC_t: TFloatField;
    qrMainC_r: TFloatField;
    qrMainS_d: TFloatField;
    qrMainS_m: TFloatField;
    qrMainS_t: TFloatField;
    qrMainS_r: TFloatField;
    qrMainW_d: TFloatField;
    qrMainW_m: TFloatField;
    qrMainW_t: TFloatField;
    qrMainW_r: TFloatField;
    qrMainO_d: TFloatField;
    qrMainO_m: TFloatField;
    qrMainO_t: TFloatField;
    qrMainO_r: TFloatField;
    qrMainZ_d: TFloatField;
    qrMainZ_m: TFloatField;
    qrMainZ_t: TFloatField;
    qrMainZ_r: TFloatField;
    qrMainA_d: TFloatField;
    qrMainA_m: TFloatField;
    qrMainA_t: TFloatField;
    qrMainA_r: TFloatField;
    qrMainShipDate: TDateTimeField;
    bnExcel: TButton;
    qrMainGSBH: TStringField;
    qrGS: TQuery;
    qrMainDepName2: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bnQueryClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bnExcelClick(Sender: TObject);
    procedure gdMainTitleBtnClick(Sender: TObject; ACol: Integer; Column: TColumnEh);
    procedure showData(sField:string;bDesc:boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DailyProductionDepOrd: TDailyProductionDepOrd;

implementation

{$R *.dfm}

procedure TDailyProductionDepOrd.FormDestroy(Sender: TObject);
begin
  DailyProductionDepOrd:=nil;
end;

procedure TDailyProductionDepOrd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDailyProductionDepOrd.bnQueryClick(Sender: TObject);
begin
  showData('factory',true);
end;

procedure TDailyProductionDepOrd.FormCreate(Sender: TObject);
begin

  dtpDate.Date:= now;

  qrGS.SQL.Add('select gsdh from bgszl');
  qrGS.Active:=true;
  qrGS.First;
  while not qrGS.Eof do               //加入工廠進選項 by star
    begin
      cbFactory.Items.Add(qrGS.fieldbyname('gsdh').AsString);
      qrGS.Next;
    end;

end;

procedure TDailyProductionDepOrd.bnExcelClick(Sender: TObject);
var
  eclApp,workBook:olevariant;
  i,j,iFields:integer;
  slSplit:TStringList;
const
  aColW:array[0..35] of integer=(5,10,10,10,10,10,10,10,10,10,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,10);   //設定欄寬 by star
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

    eclApp.Cells[1,10]:=cbFactory.Text+'生產動態日報表(部門、訂單)'+FormatDateTime('yyyy/mm/dd',dtpDate.Date);

    iFields:= qrMain.FieldCount;

    for i:=1 to iFields do         //設定欄位名,大小,顏色 by star
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
        for i:=1 to iFields do eclApp.Cells[j,i]:=qrMain.Fields[i-1].Value;
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

procedure TDailyProductionDepOrd.gdMainTitleBtnClick(Sender: TObject;       //按下欄位名稱的處理   by star
  ACol: Integer; Column: TColumnEh);
begin
  if column.Title.SortMarker=smUpEh then      //按了之後,會依按的欄位排序,再按會反排序 by star
    begin
      column.Title.SortMarker:=smDownEh;
      showData(Column.FieldName,false);
    end
  else
    begin
      column.Title.SortMarker:=smUpEh;
      showData(Column.FieldName,true);
    end;
end;

procedure TDailyProductionDepOrd.showData(sField:string;bDesc:boolean);
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

      add('select ');
      add('scbb.gsbh as Factory,');
      add('case when scbb.GSBH in (''VA12'',''VA3'',''VB1'',''VB2'') then SUBSTRING(BDepartment.DepName,0,len(BDepartment.DepName)-1) else BDepartment.DepName end as DepName,');
      add('case ');
      add('when len(sumline)<=3 then sumline ');
      add('when len(sumline)<=5 then SubString(Sumline,1,3)+''-''+SubString(Sumline,4,2) ');
      add('when len(sumline)=6 then SubString(Sumline,1,3)+''-''+SubString(Sumline,4,1)+''-''+SubString(Sumline,5,2) ');
      add('when len(sumline)>6 then SubString(Sumline,1,3)+''-''+SubString(Sumline,4,1)+''-''+SubString(Sumline,5,2)+''-''+SubString(Sumline,7,2) ');
      add('end as sumline,');

      add('scbbs.SCBH as bh ,');
      add('kfzl.kfjc,');
      add('DDZL.KHPO,');
      add('DDZL.XieXing,');
      add('DDZL.ARTICLE,');
      add('xxzl.DAOMH,');
      add('xxzl.YSSM,');
      add('lbzls.ywsm,');
      add('DDZL.Pairs,');
      add('sum(case when scbbs.GXLB = ''C'' then scbbs.Qty end) as C_d,');
      add('max(case when scbbs.GXLB = ''C'' then sc.qty_m end) as C_m,');
      add('max(case when scbbs.GXLB = ''C'' then sc.qty_t end) as C_t,');
      add('max(case when scbbs.GXLB = ''C'' then sm.qty end)-max(case when scbbs.GXLB = ''C'' then sc.qty_t end) as C_r,');
      add('sum(case when scbbs.GXLB = ''S'' then scbbs.Qty end) as S_d,');
      add('max(case when scbbs.GXLB = ''S'' then sc.qty_m end) as S_m,');
      add('max(case when scbbs.GXLB = ''S'' then sc.qty_t end) as S_t,');
      add('max(case when scbbs.GXLB = ''S'' then sm.qty end)-max(case when scbbs.GXLB = ''S'' then sc.qty_t end) as S_r,');
      add('sum(case when scbbs.GXLB = ''W'' then scbbs.Qty end) as W_d,');
      add('max(case when scbbs.GXLB = ''W'' then sc.qty_m end) as W_m,');
      add('max(case when scbbs.GXLB = ''W'' then sc.Qty_t end) as W_t,');
      add('max(case when scbbs.GXLB = ''W'' then sm.qty end)-max(case when scbbs.GXLB = ''W'' then sc.Qty_t end) as W_r,');
      add('sum(case when scbbs.GXLB = ''O'' then scbbs.Qty end) as O_d,');
      add('max(case when scbbs.GXLB = ''O'' then sc.qty_m end) as O_m,');
      add('max(case when scbbs.GXLB = ''O'' then sc.qty_t end) as O_t,');
      add('max(case when scbbs.GXLB = ''O'' then sm.qty end)-max(case when scbbs.GXLB = ''O'' then sc.qty_t end) as O_r,');
      add('sum(case when scbbs.GXLB = ''Z'' then scbbs.Qty end) as Z_d,');
      add('max(case when scbbs.GXLB = ''Z'' then sc.qty_m end) as Z_m,');
      add('max(case when scbbs.GXLB = ''Z'' then sc.qty_t  end) as Z_t,');
      add('max(case when scbbs.GXLB = ''Z'' then sm.qty  end)-max(case when scbbs.GXLB = ''Z'' then sc.Qty_t  end) as Z_r,');
      add('sum(case when scbbs.GXLB = ''A'' then scbbs.Qty  end) as A_d,');
      add('max(case when scbbs.GXLB = ''A'' then sc.Qty_m end) as A_m,');
      add('max(case when scbbs.GXLB = ''A'' then sc.Qty_t end) as A_t,');
      add('max(case when scbbs.GXLB = ''A'' then sm.qty end)-max(case when scbbs.GXLB = ''A'' then sc.Qty_t  end) as A_r,');
      add('DDZL.ShipDate');
      add('from scbb');
      add('left join scbbs on scbbs.ProNo=scbb.ProNo');
      add('left join DDZL on scbbs.scbh=DDZL.DDBH');
      add('left join BDepartment on scbb.DepNo=BDepartment.ID');
      add('left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb=''06'' ');
      add('left join xxzl on xxzl.XieXing=DDZL.XieXing and xxzl.SheHao=DDZL.SheHao');
      add('left join KFZL on KFZl.KFDH=DDZL.KHBH');
      add('left join (');
      add('	select SMDD.YSBH,SMDD.GXLB,SMDD.DepNO,sum(SMDD.Qty) as qty');
      add('	from SMDD');
      add('	left join DDZL on DDZL.DDBH = SMDD.YSBH');
      if cbFactory.ItemIndex>0 then
        add('	where smdd.GSBH ='''+cbFactory.Text+'''');
      add('	group by SMDD.YSBH,SMDD.GXLB,SMDD.DepNO');
      add(')sm on sm.YSBH=DDZL.DDBH and sm.GXLB = scbbs.GXLB and sm.DepNO = scbb.DepNo');
      add('left join (');
      add('	select scbbs.scbh,scbbs.gxlb,scbb.depno,sum(Qty) as qty_t,');
      add('	sum(case when month(scbb.scdate)=''03'' then scbbs.qty end) as qty_m');
      add('	from scbbs');
      add('	left join scbb on scbb.proNo=scbbs.proNo');
      if cbFactory.ItemIndex>0 then
        add('	where scbb.gsbh='''+cbFactory.Text+'''');
      add('	group by scbbs.scbh,scbbs.gxlb,scbb.depno');
      add(')sc on sc.scBH=DDZL.DDBH and sc.GXLB = scbbs.GXLB and sc.DepNO = scbb.DepNo');
      add('where convert(varchar,scbb.scdate,111)= '''+sDate+'''');
      if cbFactory.ItemIndex>0 then
        add('and scbb.GSBH = '''+cbFactory.Text+'''');
      add('and scbbs.gxlb in (''C'',''S'',''W'',''O'',''Z'',''A'')');
      add('group by scbbs.SCBH,ddzl.Pairs,DDZL.KHPO,BDepartment.sumline,DDZL.XieXing,DDZL.ARTICLE,lbzls.ywsm,xxzl.YSSM,xxzl.DAOMH,kfzl.kfjc,ShipDate,scbb.gsbh,');
      add('case when scbb.GSBH in (''VA12'',''VA3'',''VB1'',''VB2'') then SUBSTRING(BDepartment.DepName,0,len(BDepartment.DepName)-1) else BDepartment.DepName end');
      if bDesc then
        add('order by '+sField)
      else
        add('order by '+sField+' desc');

    end;

  qrMain.active:=true;
end;

end.
