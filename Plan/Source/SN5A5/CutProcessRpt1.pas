unit CutProcessRpt1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, GridsEh, DBGridEh, DB, DBTables, Comobj,
  Menus;

type
  TCutProcessRpt = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    DTP1: TDateTimePicker;
    Button1: TButton;
    ZLBHEdit: TEdit;
    DTP2: TDateTimePicker;
    Button2: TButton;
    XuongCB1: TComboBox;
    DepNMEdit1: TComboBox;
    PlanDateCK: TCheckBox;
    CutProcessDetQry: TQuery;
    DS1: TDataSource;
    Qtemp: TQuery;
    GCCheckBox: TCheckBox;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet2: TTabSheet;
    DBGridEh1: TDBGridEh;
    CutProcListQry: TQuery;
    DS2: TDataSource;
    DBGridEh2: TDBGridEh;
    CutProcListQryZLBH: TStringField;
    CutProcListQryGCBWBH: TStringField;
    CutProcListQryzwsm: TStringField;
    CutProcListQryPlanDate: TDateTimeField;
    CutProcListQryADate: TDateTimeField;
    CutProcListQryLevels: TStringField;
    CutProcListQryPDays: TIntegerField;
    CutProcListQryQty1Day: TFloatField;
    CutProcListQryRPlanDate: TDateTimeField;
    CutProcListQryywsm: TStringField;
    AlertCutProQry: TQuery;
    DS3: TDataSource;
    AlertCutProSumQry: TQuery;
    CutProcListQryQty: TIntegerField;
    CutProcListQryDQty: TIntegerField;
    AlertCutProQryZLBH: TStringField;
    AlertCutProQryGCBWBH: TStringField;
    AlertCutProQrySPlanDate: TDateTimeField;
    AlertCutProQryEPlanDate: TDateTimeField;
    AlertCutProQryQty: TIntegerField;
    AlertCutProQryQty1Day: TFloatField;
    AlertCutProQryywsm: TStringField;
    AlertCutProQryZWSM: TStringField;
    AlertCutProQryoverlapZLBH: TStringField;
    CutProcListQryARTICLE: TStringField;
    CutProcListQryBWBH: TStringField;
    CutProcListQryPairPieces: TIntegerField;
    CutProcListQryBZWSM: TStringField;
    CutProcListQryBYWSM: TStringField;
    CutProcListQryShipDate: TDateTimeField;
    ywsmEdit: TEdit;
    Label6: TLabel;
    CutProcListQrySPlanDate: TDateTimeField;
    CutProcListQryDepName: TStringField;
    CutProcListQryXieMing: TStringField;
    CutProcListQryXieXing: TStringField;
    CutProcListQrySheHao: TStringField;
    Label1: TLabel;
    Label7: TLabel;
    TabSheet4: TTabSheet;
    DBGridEh5: TDBGridEh;
    SMDDQry: TQuery;
    DS5: TDataSource;
    Panel2: TPanel;
    AlertDBGridEh: TDBGridEh;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    DBGrid2: TDBGridEh;
    Track: TQuery;
    TrackListNo: TStringField;
    TrackDemandDate: TDateTimeField;
    TrackDemandTime: TStringField;
    StringField2: TStringField;
    TrackYWPM: TStringField;
    TrackZWPM: TStringField;
    TrackDWBH: TStringField;
    StringField6: TStringField;
    TrackLotNO: TStringField;
    CurrencyField1: TCurrencyField;
    StringField9: TStringField;
    CurrencyField2: TCurrencyField;
    TrackRemarkS: TStringField;
    TrackUserID: TStringField;
    TrackUserDate: TDateTimeField;
    DS6: TDataSource;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    CutProcListQryCLBH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure XuongCB1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure PageControl2Change(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
  private
    G_Layer:integer;
    NDate:TDate;
    { Private declarations }
    procedure ShowRptReport();
    procedure CutProcessList();
    procedure CutProcessDetail();
    procedure CutProcessTua();
    procedure AlertCutProcess();
    //
    procedure ExportExcel(Query:TQuery);
    procedure ExportCutProcessDet();
  public
    { Public declarations }
  end;

var
  CutProcessRpt: TCutProcessRpt;

implementation
  uses main1,CutProcessRpt_Det1,FunUnit;
{$R *.dfm}

procedure TCutProcessRpt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TCutProcessRpt.FormDestroy(Sender: TObject);
begin
  CutProcessRpt:=nil;
end;

procedure TCutProcessRpt.FormCreate(Sender: TObject);
begin
  //
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  DTP1.Date:=NDate-7;
  DTP2.Date:=NDate+7;
  with Qtemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT Xuong FROM BDepartment');
    SQL.Add('WHERE GSBH = ''' + main.Edit2.Text + ''' AND GXLB = ''C'' AND ISNULL(Xuong, '''') <> '''' ');
    SQL.Add('ORDER BY Xuong ');
    Active := true;
    XuongCB1.Items.Clear;
    XuongCB1.Items.Add('');
    while not Eof do
    begin
      XuongCB1.Items.Add(FieldByName('Xuong').AsString);
      Next;
    end;
    Active := false;
  end;
  //
end;

procedure TCutProcessRpt.XuongCB1Change(Sender: TObject);
begin
  //
  with Qtemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DepName FROM BDepartment WHERE GSBH = ''' + main.Edit2.Text + ''' AND GXLB = ''C'' AND Xuong = ''' + XuongCB1.Text + '''');
    Active := true;
    DepNMEdit1.Items.Clear;
    DepNMEdit1.ITems.Add('');
    while not Eof do
    begin
      DepNMEdit1.Items.Add(FieldByName('DepName').AsString);
      Next;
    end;
    Active := false;
  end;
  //
end;

procedure TCutProcessRpt.ShowRptReport();
begin
  AlertCutProcess();//檢查是否1日產能超過
  if PageControl2.ActivePageIndex=0 then CutProcessDetail();
  if PageControl2.ActivePageIndex=1 then CutProcessList();
  if PageControl2.ActivePageIndex=2 then CutProcessTua();
end;

procedure TCutProcessRpt.AlertCutProcess();
var where_SubSQL:String;
begin
  //where Sub SQL
  where_SubSQL:='Select ZLBH from SCZLDate,BDepartment where SCZLDate.Assemble=BDepartment.ID and SCZLDate.GSBH='''+main.Edit2.Text+''' and SCZLDate.ZLBH like '''+ZLBHEdit.Text+'%'' ';
  if DepNMEdit1.Text<>'' then
  where_SubSQL:=where_SubSQL+' and BDepartment.DepName like ''%'+DepNMEdit1.Text+'%'' ';
  if PlanDateCK.Checked=true then
  where_SubSQL:=where_SubSQL+' and  convert(smalldatetime,convert(varchar,SCZLDate.ADate,111)) between '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''' ';
  //
  with AlertCutProSumQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select *,(DATEDIFF(DAY,SPlanDate,EPlanDate )+1)*Qty1Day as ProdQty from (');
    SQL.Add('select GCBWBH,SUM(Qty) as Qty,Max(Qty1Day) as Qty1Day,MIN(SPlanDate) as SPlanDate,MAX(EPlanDate) as EPlanDate from (	');
    SQL.Add('select ZL_GC.*,KT_SOPCutS_GCBWD.Qty1Day,KT_SOPCutS_GCBWD.ywsm,KT_SOPCutS_GCBWD.ZWSM,');
    SQL.Add('    (');
    SQL.Add('    Select Min(ZLBH) as ZLBH from (');
    SQL.Add('	select ZL_GC.ZLBH,ZL_GC.GCBWBH,DATEADD (day,-1*ZL_GC.PDays,convert(smalldatetime,SMDD.PlanDate)) as SPlanDate,DATEADD (day,-1*(ZL_GC.PDays-ZL_GC.PDay)-1,convert(smalldatetime,SMDD.PlanDate)) as EPlanDate,ZL_GC.Qty');
    SQL.Add('	from (    ');
    SQL.Add('	  select ZLBH as DDBH,ADate as PlanDate from SCZLDate');
    SQL.Add('	  where SCZLDate.ZLBH in ('+where_SubSQL+')  	 ');
    SQL.Add('	  ) SMDD');
    SQL.Add('	Left join ( ');
    SQL.Add('	select ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.PDay,ZL_GC.PDays,SUM(ZL_GC.Qty) as Qty');
    SQL.Add('	from CutDispatchZL_GC ZL_GC');
    SQL.Add('	left join KT_SOPCutS_GCBWD  on KT_SOPCutS_GCBWD.GCBWDH=ZL_GC.GCBWBH ');
    SQL.Add('	where ZL_GC.ZLBH in ('+where_SubSQL+')  and KT_SOPCutS_GCBWD.Qty1Day is not null');
    SQL.Add('	Group by ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.PDay,ZL_GC.PDays ) ZL_GC on ZL_GC.ZLBH=SMDD.DDBH ) A');
    SQL.Add('    where A.ZLBH<>ZL_GC.ZLBH and A.GCBWBH=ZL_GC.GCBWBH ');
    SQL.Add('          and (  (A.SPlanDate<=ZL_GC.SPlanDate and A.EPlanDate>=ZL_GC.EPlanDate) or (A.SPlanDate<=ZL_GC.SPlanDate and A.EPlanDate>=ZL_GC.SPlanDate) ');
    SQL.Add('              or (A.SPlanDate>=ZL_GC.SPlanDate and A.EPlanDate>=ZL_GC.EPlanDate)  or (A.SPlanDate>=ZL_GC.SPlanDate and A.EPlanDate>=ZL_GC.SPlanDate) )	');
    SQL.Add('	)  as overlapZLBH');
    SQL.Add('from (');
    SQL.Add('	select ZL_GC.ZLBH,ZL_GC.GCBWBH,DATEADD (day,-1*ZL_GC.PDays,convert(smalldatetime,SMDD.PlanDate)) as SPlanDate,DATEADD (day,-1*(ZL_GC.PDays-ZL_GC.PDay)-1,convert(smalldatetime,SMDD.PlanDate)) as EPlanDate,ZL_GC.Qty');
    SQL.Add('	from (    ');
    SQL.Add('	  select ZLBH as DDBH,ADate as PlanDate from SCZLDate');
    SQL.Add('	  where SCZLDate.ZLBH in ('+where_SubSQL+')  	  ');
    SQL.Add('	  ) SMDD');
    SQL.Add('	Left join ( ');
    SQL.Add('	select ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.PDay,ZL_GC.PDays,SUM(ZL_GC.Qty) as Qty');
    SQL.Add('	from CutDispatchZL_GC ZL_GC');
    SQL.Add('	left join KT_SOPCutS_GCBWD on KT_SOPCutS_GCBWD.GCBWDH=ZL_GC.GCBWBH ');
    SQL.Add('	where ZL_GC.ZLBH in ('+where_SubSQL+')  and KT_SOPCutS_GCBWD.Qty1Day is not null');
    SQL.Add('	Group by ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.PDay,ZL_GC.PDays ) ZL_GC on ZL_GC.ZLBH=SMDD.DDBH ');
    SQL.Add(' ) ZL_GC');
    SQL.Add('left join KT_SOPCutS_GCBWD on KT_SOPCutS_GCBWD.GCBWDH=ZL_GC.GCBWBH   ) ZL_GC');
    SQL.Add('where overlapZLBH is not null ');
    SQL.Add('Group by GCBWBH ) ZL_GC');
    SQL.Add('where Qty>(DATEDIFF(DAY,SPlanDate,EPlanDate )+1)*Qty1Day');
    Active:=true;
  end;
  if AlertCutProSumQry.RecordCount>0 then
  begin
    with AlertCutProQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select * from (	');
      SQL.Add('select ZL_GC.*,KT_SOPCutS_GCBWD.Qty1Day,KT_SOPCutS_GCBWD.ywsm,KT_SOPCutS_GCBWD.ZWSM,');
      SQL.Add('    (');
      SQL.Add('    Select Min(ZLBH) as ZLBH from (');
      SQL.Add('	select ZL_GC.ZLBH,ZL_GC.GCBWBH,DATEADD (day,-1*ZL_GC.PDays,convert(smalldatetime,SMDD.PlanDate)) as SPlanDate,DATEADD (day,-1*(ZL_GC.PDays-ZL_GC.PDay)-1,convert(smalldatetime,SMDD.PlanDate)) as EPlanDate,ZL_GC.Qty');
      SQL.Add('	from (    ');
      SQL.Add('	  select ZLBH as DDBH,ADate as PlanDate from SCZLDate');
      SQL.Add('	  where SCZLDate.ZLBH in ('+where_SubSQL+')  	 ');
      SQL.Add('	  ) SMDD');
      SQL.Add('	Left join ( ');
      SQL.Add('	select ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.PDay,ZL_GC.PDays,SUM(ZL_GC.Qty) as Qty');
      SQL.Add('	from CutDispatchZL_GC ZL_GC');
      SQL.Add('	left join KT_SOPCutS_GCBWD on KT_SOPCutS_GCBWD.GCBWDH=ZL_GC.GCBWBH ');
      SQL.Add('	where ZL_GC.ZLBH in ('+where_SubSQL+')  and KT_SOPCutS_GCBWD.Qty1Day is not null');
      SQL.Add('	Group by ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.PDay,ZL_GC.PDays ) ZL_GC on ZL_GC.ZLBH=SMDD.DDBH ) A');
      SQL.Add('    where A.ZLBH<>ZL_GC.ZLBH and A.GCBWBH=ZL_GC.GCBWBH ');
      SQL.Add('          and (  (A.SPlanDate<=ZL_GC.SPlanDate and A.EPlanDate>=ZL_GC.EPlanDate) or (A.SPlanDate<=ZL_GC.SPlanDate and A.EPlanDate>=ZL_GC.SPlanDate) ');
      SQL.Add('              or (A.SPlanDate>=ZL_GC.SPlanDate and A.EPlanDate>=ZL_GC.EPlanDate)  or (A.SPlanDate>=ZL_GC.SPlanDate and A.EPlanDate>=ZL_GC.SPlanDate) )	');
      SQL.Add('	)  as overlapZLBH');
      SQL.Add('from (');
      SQL.Add('	select ZL_GC.ZLBH,ZL_GC.GCBWBH,DATEADD (day,-1*ZL_GC.PDays,convert(smalldatetime,SMDD.PlanDate)) as SPlanDate,DATEADD (day,-1*(ZL_GC.PDays-ZL_GC.PDay)-1,convert(smalldatetime,SMDD.PlanDate)) as EPlanDate,ZL_GC.Qty');
      SQL.Add('	from (    ');
      SQL.Add('	  select ZLBH as DDBH,ADate as PlanDate from SCZLDate');
      SQL.Add('	  where SCZLDate.ZLBH in ('+where_SubSQL+')  	  ');
      SQL.Add('	  ) SMDD');
      SQL.Add('	Left join ( ');
      SQL.Add('	select ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.PDay,ZL_GC.PDays,SUM(ZL_GC.Qty) as Qty');
      SQL.Add('	from CutDispatchZL_GC ZL_GC');
      SQL.Add('	left join KT_SOPCutS_GCBWD on KT_SOPCutS_GCBWD.GCBWDH=ZL_GC.GCBWBH ');
      SQL.Add('	where ZL_GC.ZLBH in ('+where_SubSQL+')  and KT_SOPCutS_GCBWD.Qty1Day is not null');
      SQL.Add('	Group by ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.PDay,ZL_GC.PDays ) ZL_GC on ZL_GC.ZLBH=SMDD.DDBH ');
      SQL.Add(' ) ZL_GC');
      SQL.Add('left join KT_SOPCutS_GCBWD on KT_SOPCutS_GCBWD.GCBWDH=ZL_GC.GCBWBH   ) ZL_GC');
      SQL.Add('where overlapZLBH is not null ');
      Active:=true;
    end;
  end;
end;
//
procedure TCutProcessRpt.CutProcessList();
var where_SubSQL:String;
begin
  //where Sub SQL
  where_SubSQL:='select distinct YSBH from SMDD,BDepartment where SMDD.DepNO=BDepartment.ID and SMDD.GSBH='''+main.Edit2.Text+''' and SMDD.YSBH like '''+ZLBHEdit.Text+'%'' ';
  if DepNMEdit1.Text<>'' then
  where_SubSQL:=where_SubSQL+' and BDepartment.DepName like ''%'+DepNMEdit1.Text+'%'' ';
  if PlanDateCK.Checked=true then
  where_SubSQL:=where_SubSQL+' and convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''' ';
  //
  with CutProcListQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select ZL_GC.ZLBH,DDZL.XieXing,DDZL.SheHao,XXZL.XieMing,DDZL.ARTICLE,ZL_GC.GCBWBH,ZL_GC.ywsm,ZL_GC.zwsm,ZL_GC.Qty,ZL_GC.DQty,SMDD.DepName,');
    SQL.Add('SMDD.SPlanDate,ZL_GC.PlanDate,ZL_GC.RPlanDate,ZL_GC.Levels,ZL_GC.PDays,ZL_GC.Qty1Day,ZL_GC.ADate,ISNULL(ZL_GC.BWBHChild,ZL_GC.BWBH) as BWBH,ZL_GC.CLBH,');
    SQL.Add('KT_SOPCut.piece*ZL_GC.Qty as PairPieces,BWZL.zwsm as BZWSM,BWZL.ywsm  as BYWSM,DDZL.ShipDate');
    SQL.Add('from (');
    SQL.Add('select ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.ywsm,ZL_GC.zwsm,ZL_GC.Qty,ZL_GC.DQty,DATEADD (day,-1*PDays,convert(smalldatetime,SCZLDate.ADate)) as PlanDate,');
    SQL.Add('       Convert(smalldatetime,ZL_GC.RPlanDate) as RPlanDate,ZL_GC.Levels,ZL_GC.PDays,ZL_GC.Qty1Day,SCZLDate.ADate,ZL_GC.BWBH, ZL_GC.CLBH,  ');
    SQL.Add('       Case when left(ZL_GC.BWBH,2)=''0G'' then right((select Max(CutDispatchZL_GC.Levels+BWBH) as BWBH from CutDispatchZL_GC where CutDispatchZL_GC.ZLBH=ZL_GC.ZLBH ');
    SQL.Add('                 and left(CutDispatchZL_GC.Levels,LEN(ZL_GC.Levels))=ZL_GC.Levels and CutDispatchZL_GC.CLBH<>''ZZZZZZZZZZ'' and CutDispatchZL_GC.Levels>ZL_GC.Levels ),4) end as BWBHChild');
    SQL.Add('from (');
    SQL.Add('	Select ZL_GC.ZLBH,ZL_GC.GCBWBH,KT_SOPCutS_GCBWD.ywsm,KT_SOPCutS_GCBWD.zwsm,DDZL.Pairs as Qty,IsNull(GC.DQty,0) as DQty,KT_SOPCutS_GCBWD.Qty1Day,convert(varchar,GC.RPlanDate,111) as  RPlanDate,ZL_GC.PDays ,ZL_GC.levels,ZL_GC.BWBH, ZL_GC.CLBH ');
    SQL.Add('	from CutDispatchZL_GC ZL_GC');
    SQL.Add('    left join DDZL on DDZL.DDBH=ZL_GC.ZLBH ');
    SQL.Add('	left join KT_SOPCutS_GCBWD on KT_SOPCutS_GCBWD.GCBWDH=ZL_GC.GCBWBH ');
    SQL.Add('	left join (');
    SQL.Add('	  Select CutDispatchS_GC.ZLBH,CutDispatchS_GC.GCBWBH,CutDispatchS_GC.BWBH,SUM(case when CutDispatch_GC.CFMID<>''NO'' then Qty else 0 end) as DQty,MIN(CutDispatch_GC.PlanDate) as RPlanDate from CutDispatchS_GC');
    SQL.Add('	  Left join CutDispatch_GC on CutDispatchS_GC.DLNO=CutDispatch_GC.DLNO');
    SQL.Add('	  where CutDispatchS_GC.ZLBH in ('+where_SubSQL+') ');
    SQL.Add('	       group  by CutDispatchS_GC.ZLBH,CutDispatchS_GC.GCBWBH,CutDispatchS_GC.BWBH	');
    SQL.Add('	) GC on ZL_GC.ZLBH=GC.ZLBH and ZL_GC.GCBWBH=GC.GCBWBH and ZL_GC.BWBH=GC.BWBH');
    SQL.Add('	where len(ZL_GC.levels)>0  and ZL_GC.ZLBH in ('+where_SubSQL+') ');
    if ywsmEdit.Text<>'' then
    SQL.Add('       and KT_SOPCutS_GCBWD.ywsm like ''%'+ywsmEdit.Text+'%'' ');
    //SQL.Add('	      --and ZL_GC.ZLBH like 'DV1912-0699%'');
    SQL.Add('	Group by ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.PDays,KT_SOPCutS_GCBWD.ywsm ,KT_SOPCutS_GCBWD.zwsm,DDZL.Pairs,KT_SOPCutS_GCBWD.Qty1Day,GC.DQty,GC.RPlanDate,ZL_GC.levels,ZL_GC.BWBH, ZL_GC.CLBH) ZL_GC	');
    SQL.Add('	left join SCZLDate on SCZLDate.ZLBH=ZL_GC.ZLBH');
    SQL.Add(')	ZL_GC');
    SQL.Add('left join DDZL on DDZL.DDBH=ZL_GC.ZLBH ');
    SQL.Add('Left join (Select BWDH,ZWSM,YWSM from bwzl union all select gcbwdh,zwsm,YWSM from KT_SOPCutS_GCBWD ) BWZL on BWZL.BWDH=ISNULL(ZL_GC.BWBHChild,ZL_GC.BWBH) ');
    SQL.Add('left join KT_SOPCut on KT_SOPCut.XieXing=DDZL.XieXing and KT_SOPCut.SheHao=DDZL.SheHao and KT_SOPCut.BWBH=ISNULL(ZL_GC.BWBHChild,ZL_GC.BWBH) ');
    SQL.Add('left join XXZL on XXZL.XieXing=DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('left join (');
    SQL.Add('  SELECT SMDD.YSBH, MIN(PlanDate) AS SPlanDate, MAX(BDepartment.DepName) AS DepName FROM SMDD');
    SQL.Add('  LEFT JOIN BDepartment ON BDepartment.ID = SMDD.DepNO');
    SQL.Add('  WHERE SMDD.GXLB = ''C''');
    SQL.Add('  GROUP BY SMDD.YSBH');
    SQL.Add(') AS SMDD ON SMDD.YSBH = DDZL.DDBH');
    SQL.Add('ORDER BY SMDD.SPlanDate, ZL_GC.GCBWBH, ZL_GC.ZLBH');
    //funcObj.WriteErrorLog(SQL.Text);
    Active:=true;
  end;
  Track.active:=true;
end;
//
procedure TCutProcessRpt.CutProcessDetail();
function GetSectonSubSQL(index:integer):string;
  var i:integer;
      res:String;
  begin
    res:='';
    for i:=0 to index-1 do
    begin
      res:=res+'GC0'+inttostr(index)+'.bwbh=GC0'+inttostr(i)+'.gcbwbh or ';
    end;
    result:=res;
  end;
var i,Layer:integer;
    SubSQL,where_SubSQL,G_where_SubSQL:String;
    SubSQL_PlanDate:String;
begin
  //
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select MAX(LEN(levels)) as layer from CutDispatchZL_GC ZL_GC');
    SQL.Add('where ZL_GC.ZLBH in ');
    SQL.Add('      (Select ZLBH from SCZLDate where SCZLDate.GSBH='''+main.Edit2.Text+''' and SCZLDate.ZLBH like '''+ZLBHEdit.Text+'%'' ');
    if PlanDateCK.Checked=true then
    SQL.Add('              and  convert(smalldatetime,convert(varchar,SCZLDate.ADate,111)) between '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''' ');
    SQL.Add('      )');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
    Layer:=FieldByName('Layer').AsInteger;
    G_Layer:=Layer;
    Active:=false;
    //
  end;
  //CutPlanDate & Sub SQL
  for i:=0 to Layer-1 do
  begin
    if i=0 then SubSQL_PlanDate:='GC0'+inttostr(i)+'.PDays';
    if i>0 then
    begin
       SubSQL_PlanDate:='IsNull('+SubSQL_PlanDate+',GC0'+inttostr(i)+'.PDays)';
    end;
  end;
  //where Sub SQL
  where_SubSQL:='Select ZLBH from SCZLDate,BDepartment where SCZLDate.Assemble=BDepartment.ID and SCZLDate.GSBH='''+main.Edit2.Text+''' and SCZLDate.ZLBH like '''+ZLBHEdit.Text+'%'' ';
  if DepNMEdit1.Text<>'' then
  where_SubSQL:=where_SubSQL+' and BDepartment.DepName like ''%'+DepNMEdit1.Text+'%'' ';
  if PlanDateCK.Checked=true then
  where_SubSQL:=where_SubSQL+' and  convert(smalldatetime,convert(varchar,SCZLDate.ADate,111)) between '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''' ';
  //
  with CutProcessDetQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select   CutDispatchZL.ZLBH,CutDispatchZL.BWBH,CutDispatchZL.zwsm,CutDispatchZL.Qty,');
    SQL.Add('         DATEADD (day,-1*('+SubSQL_PlanDate+'+CutDispatchZL.PDays),convert(smalldatetime,SMDD.PlanDate)) as PlanDateCut,');
    SQL.Add('         convert(smalldatetime,CutDispatchZL.RPlanDate) as RDateCut,');
    for i:=0 to Layer-1 do
    begin
      SQL.Add('         GC0'+inttostr(i)+'.zwsm+GC0'+inttostr(i)+'.GCBWBH as GC0'+inttostr(i)+'BWBH,GC0'+inttostr(i)+'.Qty as GC0'+inttostr(i)+'Qty,DATEADD (day,-1*GC0'+inttostr(i)+'.PDays,convert(smalldatetime,SMDD.PlanDate)) as PlanDateGC0'+inttostr(i)+',convert(smalldatetime,GC0'+inttostr(i)+'.RPlanDate) as RDateGC0'+inttostr(i)+',');
    end;
    SQL.Add('         SMDD.PlanDate');
    SQL.Add('from (');
    SQL.Add('    select ZLBH as DDBH,ADate as PlanDate from SCZLDate');
    SQL.Add('    where  SCZLDate.GSBH='''+main.Edit2.Text+'''  and SCZLDate.ZLBH like '''+ZLBHEdit.Text+'%'' ');
    if PlanDateCK.Checked=true then
    SQL.Add('         and  convert(smalldatetime,convert(varchar,SCZLDate.ADate,111)) between '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''' ');
    SQL.Add('     ) SMDD');
    SQL.Add('Left join ( ');
    SQL.Add('	select CutDispatchZL.ZLBH,CutDispatchZL.BWBH,bwzl.zwsm,bwzl.ywsm,convert(varchar,IsNull(CutDispatch.DQty,0))+''/''+convert(varchar,SUM(CutDispatchZL.Qty)) as Qty,convert(varchar,CutDispatch.RPlanDate,111) as  RPlanDate,CutDispatchZL_All.PDays');
    SQL.Add('	from CutDispatchZL');
    SQL.Add('	left join (Select ZLBH,BWBH,Round(SUM(CutDispatchZL.CutNum)/(2500.0)+0.49,0) as PDays from CutDispatchZL  where CutDispatchZL.ZLBH in ('+where_SubSQL+') Group by ZLBH,BWBH) CutDispatchZL_All on  CutDispatchZL_All.ZLBH=CutDispatchZL.ZLBH  and CutDispatchZL_All.BWBH=CutDispatchZL.BWBH');
    SQL.Add('	left join bwzl on bwzl.bwdh=CutDispatchZL.BWBH');
    SQL.Add('	left join (');
    SQL.Add('	  Select CutDispatchS.ZLBH,CutDispatchS.BWBH,SUM(Qty) as DQty,MIN(CutDispatch.PlanDate) as RPlanDate from CutDispatchS');
    SQL.Add('	  Left join CutDispatch on CutDispatchS.DLNO=CutDispatch.DLNO');
    SQL.Add('	  where CutDispatchS.ZLBH in (('+where_SubSQL+') ) and CutDispatchS.okCutNum>0');
    SQL.Add('	       group  by CutDispatchS.ZLBH,CutDispatchS.BWBH');
    SQL.Add('	) CutDispatch on CutDispatchZL.ZLBH=CutDispatch.ZLBH and CutDispatchZL.BWBH=CutDispatch.BWBH');
    SQL.Add('	where CutDispatchZL.ZLBH in ('+where_SubSQL+')');
    SQL.Add('	Group by CutDispatchZL.ZLBH,CutDispatchZL.BWBH,bwzl.zwsm,bwzl.ywsm,CutDispatch.DQty,CutDispatch.RPlanDate,CutDispatchZL_All.PDays  ) CutDispatchZL on SMDD.DDBH=CutDispatchZL.ZLBH');
    //工序
    for i:=0 to Layer-1 do
    begin
    SQL.Add('Left join (');
    SQL.Add('	Select ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.BWBH,KT_SOPCutS_GCBWD.zwsm,convert(varchar,IsNull(GC.DQty,0))+''/''+convert(varchar,SUM(Qty)) as Qty,KT_SOPCutS_GCBWD.Qty1Day,convert(varchar,GC.RPlanDate,111) as  RPlanDate,ZL_GC.PDays  ');
    SQL.Add('	from CutDispatchZL_GC ZL_GC');
    SQL.Add('	left join KT_SOPCutS_GCBWD on KT_SOPCutS_GCBWD.GCBWDH=ZL_GC.GCBWBH ');
    SQL.Add('	left join (');
    SQL.Add('	  Select CutDispatchS_GC.ZLBH,CutDispatchS_GC.GCBWBH,CutDispatchS_GC.BWBH,SUM(case when CutDispatch_GC.CFMID<>''NO'' then Qty else 0 end) as DQty,MIN(CutDispatch_GC.PlanDate) as RPlanDate from CutDispatchS_GC');
    SQL.Add('	  Left join CutDispatch_GC on CutDispatchS_GC.DLNO=CutDispatch_GC.DLNO');
    SQL.Add('	  where CutDispatchS_GC.ZLBH in ('+where_SubSQL+')');
    SQL.Add('	       group  by CutDispatchS_GC.ZLBH,CutDispatchS_GC.GCBWBH,CutDispatchS_GC.BWBH ');
    SQL.Add('	) GC on ZL_GC.ZLBH=GC.ZLBH and ZL_GC.GCBWBH=GC.GCBWBH and ZL_GC.BWBH=GC.BWBH');
    SQL.Add('	where len(ZL_GC.levels)='+inttostr(Layer-i));
    SQL.Add('	Group by ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.PDays ,ZL_GC.BWBH,KT_SOPCutS_GCBWD.zwsm,KT_SOPCutS_GCBWD.Qty1Day,GC.DQty,GC.RPlanDate ) GC0'+inttostr(i)+' on GC0'+inttostr(i)+'.ZLBH=CutDispatchZL.ZLBH and ('+GetSectonSubSQL(i)+' GC0'+inttostr(i)+'.BWBH=CutDispatchZL.BWBH)');
    end;
    //where查詢
    SQL.Add('where 1=1  ');
    if GCCheckBox.Checked=true then
    begin
      G_where_SubSQL:='';
      for i:=0 to Layer-1 do
      begin
        G_where_SubSQL:=G_where_SubSQL+' GC0'+inttostr(i)+'.GCBWBH is not null or ';
      end;
    end;
    if Length(G_where_SubSQL)>0 then G_where_SubSQL:=' and ('+Copy(G_where_SubSQL,1,length(G_where_SubSQL)-3)+')';
    SQL.Add(G_where_SubSQL);
    //排序
    SQL.Add(' order by CutDispatchZL.ZLBH desc ');
    for i:=0 to Layer-1 do
    begin
      SQL.Add(' ,GC0'+inttostr(Layer-1-i)+'.zwsm+''-''+GC0'+inttostr(Layer-1-i)+'.GCBWBH desc ');
    end;
    //funcObj.WriteErrorLog(SQL.Text);
    Active:=true;
  end;
  //
  DBGridEh1.Columns[0].Width:=73;
  DBGridEh1.Columns[0].Title.Caption:='訂單|ZLBH';
  DBGridEh1.Columns[1].Width:=40;
  DBGridEh1.Columns[1].Title.Caption:='部位|BWBH';
  DBGridEh1.Columns[2].Width:=65;
  DBGridEh1.Columns[2].Title.Caption:='部位名稱|ZWSM';
  DBGridEh1.Columns[3].Width:=67;
  DBGridEh1.Columns[3].Title.Caption:='雙數|Qty';
  DBGridEh1.Columns[4].Width:=40;
  DBGridEh1.Columns[4].Title.Caption:='計畫|PDCut';
  DBGridEh1.Columns[4].DisplayFormat:='MM/DD';
  DBGridEh1.Columns[5].Width:=40;
  DBGridEh1.Columns[5].Title.Caption:='上線|SDCut';
  DBGridEh1.Columns[5].DisplayFormat:='MM/DD';
  for i:=0 to Layer-1 do
  begin
    DBGridEh1.Columns[6+(i*4)].Width:=67;
    DBGridEh1.Columns[6+(i*4)].Title.Caption:='加工'+inttostr(i+1)+'|Name';
    DBGridEh1.Columns[7+(i*4)].Width:=67;
    DBGridEh1.Columns[7+(i*4)].Title.Caption:='加工'+inttostr(i+1)+'|Qty';
    DBGridEh1.Columns[8+(i*4)].Width:=40;
    DBGridEh1.Columns[8+(i*4)].Title.Caption:='加工'+inttostr(i+1)+'|PDate';
    DBGridEh1.Columns[8+(i*4)].DisplayFormat:='MM/DD';
    DBGridEh1.Columns[9+(i*4)].Width:=40;
    DBGridEh1.Columns[9+(i*4)].Title.Caption:='加工'+inttostr(i+1)+'|RDate';
    DBGridEh1.Columns[9+(i*4)].DisplayFormat:='MM/DD';
    if (i mod 2)=1 then
    begin
      DBGridEh1.Columns[6+(i*4)].title.Color:=$00DDFFFF;
      DBGridEh1.Columns[7+(i*4)].title.Color:=$00DDFFFF;
      DBGridEh1.Columns[8+(i*4)].title.Color:=$00DDFFFF;
      DBGridEh1.Columns[9+(i*4)].title.Color:=$00DDFFFF;
    end else
    begin
      DBGridEh1.Columns[6+(i*4)].title.Color:=$00FEE0DE;
      DBGridEh1.Columns[7+(i*4)].title.Color:=$00FEE0DE;
      DBGridEh1.Columns[8+(i*4)].title.Color:=$00FEE0DE;
      DBGridEh1.Columns[9+(i*4)].title.Color:=$00FEE0DE;
    end;
  end;
  DBGridEh1.Columns[CutProcessDetQry.FieldCount-1].Title.Caption:='針車|STD';
  DBGridEh1.Columns[CutProcessDetQry.FieldCount-1].Width:=40;
  DBGridEh1.Columns[CutProcessDetQry.FieldCount-1].DisplayFormat:='MM/DD';
  for i:=0 to  CutProcessDetQry.FieldCount-1 do
  begin
    CutProcessDetQry.Fields[i].ReadOnly:=true;
  end;
  //
end;

procedure TCutProcessRpt.CutProcessTua();
var i:integer;
begin
  if CutProcListQry.FieldByName('ZLBH').AsString='' then exit;
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select CutDispatchZL.SIZE ');
    SQL.Add('from CutDispatchZL ');
    SQL.Add('where CutDispatchZL.ZLBH = '''+CutProcListQry.FieldByName('ZLBH').AsString+''' ');
    SQL.Add('Group by CutDispatchZL.SIZE ');
    Active:=true;
  end;
  //
  with  SMDDQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select CutSize.ZLBH ');
    Qtemp.First;
    while not Qtemp.Eof do
    begin
        SQL.Add('      ,Max(case when CutSize.SIZE='''+Qtemp.FieldByName('SIZE').AsString+''' then Convert(varchar,Qty) end) as '''+Qtemp.FieldByName('SIZE').AsString+''' ');
        Qtemp.Next;
    end;
    SQL.Add('        ,Sum(Qty) as Pairs ');
    SQL.Add('from (');
    SQL.Add('select CutDispatchZL_GC.ZLBH,CutDispatchZL_GC.SIZE,MAX(Qty) as Qty ');
    SQL.Add('from CutDispatchZL_GC');
    SQL.Add('where CutDispatchZL_GC.ZLBH = '''+CutProcListQry.FieldByName('ZLBH').AsString+''' ');
    SQL.Add('Group by CutDispatchZL_GC.ZLBH, CutDispatchZL_GC.SIZE ) CutSize');
    SQL.Add('Group by CutSize.ZLBH ');
    //
    SQL.Add('Union all ');
    SQL.Add('Select DDBH');
    Qtemp.First;
    while not Qtemp.Eof do
    begin
        SQL.Add('      ,Max(case when SMDD.XXCC='''+Qtemp.FieldByName('SIZE').AsString+'''  then Qty end) as '''+Qtemp.FieldByName('SIZE').AsString+''' ');
        Qtemp.Next;
    end;
    SQL.Add('        ,Sum(Qty) as Pairs ');
    SQL.Add('from (');
    SQL.Add('select SMDDS.DDBH,SMDDS.XXCC, case when CutDispatchS_X.DDBH is  null then Qty end as Qty  from  ');
    SQL.Add('(select SMDD.DDBH,SMDDS.XXCC,SMDDS.Qty from SMDDS,SMDD where SMDD.DDBH=SMDDS.DDBH and SMDD.GXLB=''C'' and SMDD.YSBH = '''+CutProcListQry.FieldByName('ZLBH').AsString+''' ) SMDDS ');
    SQL.Add('left join (');
    SQL.Add('select DDBH,SIZE from (');
    SQL.Add('select CutDispatchZL_GC.*,CutDispatchS_GC.CutNum,CutDispatchS_GC.okCutNum from (');
    SQL.Add('select SMDD.DDBH,SMDD.YSBH as ZLBH,SMDDS.XXCC as SIZE,SMDDS.Qty,CutDispatchZL_GC.BWBH,CutDispatchZL_GC.CLBH,CutDispatchZL_GC.GCBWBH from SMDD');
    SQL.Add('Left join SMDDS on SMDD.DDBH=SMDDS.DDBH');
    SQL.Add('Left join CutDispatchZL_GC on CutDispatchZL_GC.ZLBH=SMDD.YSBH and CutDispatchZL_GC.SIZE=SMDDS.XXCC');
    SQL.Add('where SMDD.YSBH='''+CutProcListQry.FieldByName('ZLBH').AsString+''' and SMDD.GXLB=''C'' )CutDispatchZL_GC');
    SQL.Add('Left join (');
    SQL.Add('Select SMDDS.DDBH,CutDispatchS_GC.ZLBH,CutDispatchS_GC.SIZE,SMDDS.Qty,CutDispatchS_GC.BWBH,CutDispatchS_GC.GCBWBH,CutDispatchS_GC.TmpQty CutNum,CutDispatchS_GC.Qty okCutNum from CutDispatchS_GC ');
    SQL.Add('Left join CutDispatchSS_GC on CutDispatchSS_GC.DLNO=CutDispatchS_GC.DLNO and CutDispatchS_GC.ZLBH=CutDispatchSS_GC.ZLBH and CutDispatchS_GC.BWBH=CutDispatchSS_GC.BWBH ');
    SQL.Add('                              and CutDispatchS_GC.SIZE=CutDispatchSS_GC.SIZE and CutDispatchS_GC.GCBWBH=CutDispatchSS_GC.GCBWBH');
    SQL.Add('Left join SMDDS on SMDDS.DDBH=CutDispatchSS_GC.DDBH and SMDDS.XXCC=CutDispatchS_GC.SIZE');
    SQL.Add('where CutDispatchS_GC.ZLBH='''+CutProcListQry.FieldByName('ZLBH').AsString+''' ');
    SQL.Add(') CutDispatchS_GC on CutDispatchZL_GC.ZLBH=CutDispatchS_GC.ZLBH and CutDispatchZL_GC.DDBH=CutDispatchS_GC.DDBH and  CutDispatchZL_GC.SIZE=CutDispatchS_GC.SIZE ');
    SQL.Add('                  and CutDispatchZL_GC.BWBH=CutDispatchS_GC.BWBH and CutDispatchZL_GC.GCBWBH=CutDispatchS_GC.GCBWBH');
    SQL.Add('where 1=1 and  ( CutNum is null or IsNull(okCutNum,0)<IsNull(CutNum,0) )');
    SQL.Add(') CutDispatchZL_GC');
    SQL.Add('Group by DDBH,SIZE ) CutDispatchS_X on SMDDS.DDBH=CutDispatchS_X.DDBH and SMDDS.XXCC=CutDispatchS_X.SIZE');
    SQL.Add('where SMDDS.DDBH like '''+CutProcListQry.FieldByName('ZLBH').AsString+'%'' )  SMDD');
    SQL.Add('Group by DDBH');
    //funcObj.WriteErrorLog(SQL.Text);
    Active:=true;
    //
    DBGridEh5.columns[0].width:=120;
    DBGridEh5.columns[0].Title.Caption:='訂單|ZLBH';
    for i:=1 to SMDDQry.fieldcount-2 do
    begin
      DBGridEh5.columns[i].width:=37;
      DBGridEh5.columns[i].Title.Caption:='尺碼|'+SMDDQry.Fields[i].FieldName;
    end;
    DBGridEh5.columns[i].width:=60;
    DBGridEh5.columns[i].Title.Caption:='雙數|Pairs';
      
  end;
end;

//
procedure TCutProcessRpt.Button1Click(Sender: TObject);
begin
  if ((PlanDateCK.Checked=false) and (ZLBHEdit.Text='')) then
  begin
    Showmessage('Please Select PlanDate or OrderNo ');
    Exit;
  end;
  ShowRptReport();
end;

procedure TCutProcessRpt.ExportExcel(Query:TQuery);
var  eclApp,WorkBook:olevariant;
     i,j:integer;
begin
 if  Query.active  then
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
        for   i:=0   to   Query.fieldcount-1   do
        begin
            eclApp.Cells(1,i+1):=Query.fields[i].FieldName;
        end;
        Query.First;
        j:=2;
        while   not   Query.Eof   do
        begin
          for   i:=0   to  Query.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=Query.Fields[i].Value;
          end;
          Query.Next;
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

procedure TCutProcessRpt.ExportCutProcessDet();
var eclApp,WorkBook:olevariant;
    titlei,i,j,Layer:integer;
    //
    RowI,RowJ:integer;
    tmpGCBWDH,GCBWDH,tmpDDBH,DDBH:string;
begin

  if CutProcessDetQry.Active then
  begin
    if CutProcessDetQry.recordcount=0 then
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
    eclApp.DisplayAlerts:=False;
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    titlei:=2;
    WorkBook:=eclApp.workbooks.Add;
    for   i:=1   to   CutProcessDetQry.fieldcount   do
    begin
      eclApp.Cells(1,i):=CutProcessDetQry.fields[i-1].FieldName;
      eclApp.Cells.Cells.item[1,i].font.size:='8';
    end;
    CutProcessDetQry.First;
    j:=1+titlei;
    while   not  CutProcessDetQry.Eof   do
    begin
      for   i:=1   to   CutProcessDetQry.fieldcount   do
      begin
          eclApp.Cells(j,i):=CutProcessDetQry.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i].font.size:='8';
      end;
      CutProcessDetQry.Next;
      inc(j);
    end;
    //outline
    for i:=1 to 4 do
    begin
      eclApp.range[eclApp.cells[1,1],eclApp.cells[CutProcessDetQry.RecordCount+titlei,CutProcessDetQry.fieldcount]].borders[i].linestyle:=1;
    end;
    eclApp.range[eclApp.cells[1,1],eclApp.cells[CutProcessDetQry.RecordCount+titlei,CutProcessDetQry.fieldcount]].font.size:='8';
    eclApp.range[eclApp.cells[1,1],eclApp.cells[CutProcessDetQry.RecordCount+titlei,CutProcessDetQry.fieldcount]].HorizontalAlignment :=$FFFFEFF4;
    //加工流程階層
    Layer:=(CutProcessDetQry.fieldcount-6) div 4 ;
    //日期格式
    eclApp.Columns[5].NumberFormatLocal := 'mm/dd';
    eclApp.Columns[6].NumberFormatLocal := 'mm/dd';
    for i:=1 to Layer do
    begin
       eclApp.Columns[9+(i-1)*4].NumberFormatLocal := 'mm/dd';
       eclApp.Columns[10+(i-1)*4].NumberFormatLocal := 'mm/dd';
    end;
    //欄位寬度
    eclApp.Columns[1].ColumnWidth := 6.5;
    eclApp.Columns[2].ColumnWidth := 4;
    eclApp.Columns[3].ColumnWidth := 10;
    eclApp.Columns[3].WrapText:=true;
    eclApp.Columns[4].ColumnWidth := 5.3;
    eclApp.Columns[5].ColumnWidth := 3.5;
    eclApp.Columns[6].ColumnWidth := 3.5;
    for i:=1 to Layer do
    begin
     eclApp.Columns[7+(i-1)*4].ColumnWidth := 20;
     eclApp.Columns[7+(i-1)*4].WrapText:=true;
     eclApp.Columns[8+(i-1)*4].ColumnWidth := 5.3;
     eclApp.Columns[9+(i-1)*4].ColumnWidth := 3.5;
     eclApp.Columns[10+(i-1)*4].ColumnWidth := 3.5;
    end;
    //Title 抬頭
    for j:=1 to titlei do
    begin
      eclApp.Cells(j,1):='訂單編號';
      eclApp.Cells(j,2):='編號';
      eclApp.Cells(j,3):='裁斷部位';
      eclApp.Cells(j,4):='雙數';
      eclApp.Cells(j,5):='計畫';
      eclApp.Cells(j,6):='上線';
      for i:=1 to Layer do
      begin
       eclApp.Cells(j,7+(i-1)*4):='加工流程'+inttostr(i);
       eclApp.Cells(j,8+(i-1)*4):='雙數';
       eclApp.Cells(j,9+(i-1)*4):='計畫';
       eclApp.Cells(j,10+(i-1)*4):='上線';
      end;
      eclApp.Cells(j,CutProcessDetQry.fieldcount):='發料日期';
    end;
    //合併抬頭
    eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[titlei,1]].merge;
    eclApp.Range[eclApp.Cells[1,2],eclApp.Cells[titlei,2]].merge;
    eclApp.Range[eclApp.Cells[1,3],eclApp.Cells[1,6]].merge;
    for i:=1 to Layer+1 do
    begin
      eclApp.Range[eclApp.Cells[1,3+(i-1)*4],eclApp.Cells[1,6+(i-1)*4]].merge;
    end;
    eclApp.Range[eclApp.Cells[1,CutProcessDetQry.fieldcount],eclApp.Cells[titlei,CutProcessDetQry.fieldcount]].merge;
    //合併儲存格
    for i:=1 to Layer do
    begin
      GCBWDH:='';
      for j:=1 to CutProcessDetQry.RecordCount do
      begin
        tmpGCBWDH:=eclApp.Cells[j+titlei,7+(i-1)*4];
        tmpDDBH:=eclApp.Cells[j+titlei,1];//第一欄訂單編號
        if GCBWDH='' then
          if tmpGCBWDH<>'' then
          begin
            RowI:=j+titlei;
            RowJ:=j+titlei;
            DDBH:=tmpDDBH;
            GCBWDH:=tmpGCBWDH;
          end;
        //
        if ((tmpGCBWDH<>GCBWDH) or (tmpDDBH<>DDBH) or (j=CutProcessDetQry.RecordCount)) then
        begin
          if j=CutProcessDetQry.RecordCount then RowJ:=j+titlei;
          if GCBWDH<>'' then
          begin
            eclApp.Range[eclApp.Cells[RowI,7+(i-1)*4],eclApp.Cells[RowJ,7+(i-1)*4]].merge; //GCBWBH
            eclApp.Range[eclApp.Cells[RowI,8+(i-1)*4],eclApp.Cells[RowJ,8+(i-1)*4]].merge; //Qty
            eclApp.Range[eclApp.Cells[RowI,9+(i-1)*4],eclApp.Cells[RowJ,9+(i-1)*4]].merge; //PlanDate
            eclApp.Range[eclApp.Cells[RowI,10+(i-1)*4],eclApp.Cells[RowJ,10+(i-1)*4]].merge; //RDate
          end;
          GCBWDH:='';
          if tmpGCBWDH<>'' then
          begin
            RowI:=j+titlei;
            RowJ:=j+titlei;
            DDBH:=tmpDDBH;
            GCBWDH:=tmpGCBWDH;
          end;
          //
        end else
        begin
          RowJ:=j+titlei;
        end;
      end;
    end;
    //eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;

  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;
procedure TCutProcessRpt.Button2Click(Sender: TObject);
begin
  if PageControl2.ActivePageIndex=0 then ExportCutProcessDet();
  if PageControl2.ActivePageIndex=1 then ExportExcel(CutProcListQry);
  if PageControl2.ActivePageIndex=2 then ExportExcel(SMDDQry);
end;

procedure TCutProcessRpt.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  //計畫日期大於現在
  if (CutProcListQry.FieldByName('Qty').value>CutProcListQry.FieldByName('DQty').value) then
  begin
    if ( (CutProcListQry.FieldByName('RPlanDate').AsString='') and (CutProcListQry.FieldByName('PlanDate').value<=Date()) ) or (CutProcListQry.FieldByName('RPlanDate').value>CutProcListQry.FieldByName('PlanDate').value)   then
    begin
      DBGridEh2.canvas.font.color:=clred;
    end;
  end;
end;

procedure TCutProcessRpt.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if DataCol=5 then
  begin
    //產能超過1日廠商產能
    if AlertCutProSumQry.Locate('GCBWBH', CutProcListQry.FieldByName('GCBWBH').AsString,[])=true  then
    begin
      DBGridEh2.canvas.Brush.Color:=clAqua;
      DBGridEh2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
  end;
end;

procedure TCutProcessRpt.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var i:integer;
    BWBHStr:String;
begin

  for i:=0 to G_Layer-1 do
  begin
    if DataCol=8+(i*4) then
    begin
      BWBHStr:=CutProcessDetQry.FieldByName('GC0'+inttostr(i)+'BWBH').AsString;
      BWBHStr:=Copy(BWBHStr,length(BWBHStr)-3,4);
      //產能超過1日廠商產能
      if AlertCutProSumQry.Locate('GCBWBH', BWBHStr,[])=true  then
      begin
        DBGridEh1.canvas.Brush.Color:=clAqua;
        DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
    end;
    if ( (DataCol=8+(i*4)) or (DataCol=9+(i*4)) ) then
    begin
      //計畫日期大於現在
      if ( (CutProcessDetQry.FieldByName('RDateGC0'+inttostr(i)).AsString='') and (CutProcessDetQry.FieldByName('PlanDateGC0'+inttostr(i)).value<=Date()) ) or (CutProcessDetQry.FieldByName('RDateGC0'+inttostr(i)).value>CutProcessDetQry.FieldByName('PlanDateGC0'+inttostr(i)).value)   then
      begin
        DBGridEh1.canvas.font.Color:=clRed;
        DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
    end;
  end;
end;

//
procedure TCutProcessRpt.DBGridEh1CellClick(Column: TColumnEh);
var ColumnNM,GCBWBH:string;
begin
 if  ( (Copy(Column.FieldName,1,2)='GC') and (Pos('Qty',Column.FieldName)>0) )  then
 begin
   ColumnNM:='GC'+Copy(Column.FieldName,3,2)+'BWBH';
   GCBWBH:=Copy(CutProcessDetQry.FieldByName(ColumnNM).AsString,length(CutProcessDetQry.FieldByName(ColumnNM).AsString)-5,6);
   CutProcessRpt_Det:=TCutProcessRpt_Det.Create(self);
   CutProcessRpt_Det.ShowCutProcessDet(CutProcessDetQry.FieldByName('ZLBH').AsString,GCBWBH);
   CutProcessRpt_Det.Show();
 end;
end;

procedure TCutProcessRpt.DBGridEh2CellClick(Column: TColumnEh);
begin
 if  (Column.FieldName='DQty')    then
 begin
   CutProcessRpt_Det:=TCutProcessRpt_Det.Create(self);
   CutProcessRpt_Det.ShowCutProcessDet(CutProcListQry.FieldByName('ZLBH').AsString,CutProcListQry.FieldByName('GCBWBH').AsString);
   CutProcessRpt_Det.Show();
 end;
end;

procedure TCutProcessRpt.PageControl2Change(Sender: TObject);
begin
  Button1.Click;
end;

procedure TCutProcessRpt.MenuItem1Click(Sender: TObject);
begin
  ExportExcel(Track);
end;

end.
