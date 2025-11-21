unit CutProcessRpt_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TCutProcessRpt_Det = class(TForm)
    DBGridEh2: TDBGridEh;
    CutProcListDetQry: TQuery;
    CutProcListDetQryZLBH: TStringField;
    CutProcListDetQryGCBWBH: TStringField;
    CutProcListDetQryzwsm: TStringField;
    CutProcListDetQryywsm: TStringField;
    CutProcListDetQryPlanDate: TDateTimeField;
    CutProcListDetQryRPlanDate: TDateTimeField;
    CutProcListDetQryADate: TDateTimeField;
    CutProcListDetQryLevels: TStringField;
    CutProcListDetQryPDays: TIntegerField;
    CutProcListDetQryQty1Day: TFloatField;
    DS1: TDataSource;
    CutProcListDetQrySIZE: TStringField;
    CutProcListDetQryQty: TIntegerField;
    CutProcListDetQryDQty: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ShowCutProcessDet(ZLBH:String;GCBWBH:string);
  end;

var
  CutProcessRpt_Det: TCutProcessRpt_Det;

implementation
   uses main1,CutProcessRpt1,FunUnit;
{$R *.dfm}

procedure TCutProcessRpt_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TCutProcessRpt_Det.FormDestroy(Sender: TObject);
begin
  CutProcessRpt_Det:=nil;
end;

procedure TCutProcessRpt_Det.ShowCutProcessDet(ZLBH:String;GCBWBH:string);
begin
  with CutProcListDetQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add(' select ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.SIZE,ZL_GC.ywsm,ZL_GC.zwsm,ZL_GC.Qty,ZL_GC.DQty,DATEADD (day,-1*PDays,convert(smalldatetime,SCZLDate.ADate)) as PlanDate,');
    SQL.Add('       convert(smalldatetime,ZL_GC.RPlanDate) as RPlanDate,ZL_GC.Levels,ZL_GC.PDays,ZL_GC.Qty1Day,SCZLDate.ADate from (');
    SQL.Add('	Select ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.SIZE,KT_SOPCutS_GCBWD.ywsm,KT_SOPCutS_GCBWD.zwsm,DDZLs.Quantity as Qty,IsNull(GC.DQty,0) as DQty,');
    SQL.Add('        KT_SOPCutS_GCBWD.Qty1Day,convert(varchar,GC.RPlanDate,111) as  RPlanDate,ZL_GC.PDays ,ZL_GC.levels ');
    SQL.Add('	from (select ZLBH,GCBWBH,SIZE,PDays,Levels from CutDispatchZL_GC ZL_GC');
    SQL.Add('         where len(ZL_GC.levels)>0  and ZL_GC.ZLBH in (Select ZLBH from SCZLDate,BDepartment where SCZLDate.Assemble=BDepartment.ID and SCZLDate.GSBH='''+main.Edit2.Text+''' and SCZLDate.ZLBH = '''+ZLBH+''' ');
    if CutProcessRpt.PlanDateCK.Checked=true then
    SQL.Add('               and  convert(smalldatetime,convert(varchar,SCZLDate.ADate,111)) between '''+formatdatetime('yyyy/MM/dd',CutProcessRpt.DTP1.Date)+''' and '''+formatdatetime('yyyy/MM/dd',CutProcessRpt.DTP2.Date)+''' ');
    SQL.Add('                ) and ZL_GC.GCBWBH='''+GCBWBH+''' ');
    SQL.Add('	      Group by ZLBH,GCBWBH,SIZE,PDays,Levels ) ZL_GC');
    SQL.Add('	left join DDZLs on DDZLS.DDBH=ZL_GC.ZLBH and DDZLS.CC=ZL_GC.SIZE');
    SQL.Add('	left join KT_SOPCutS_GCBWD on KT_SOPCutS_GCBWD.GCBWDH=ZL_GC.GCBWBH ');
    SQL.Add('	left join (');
    SQL.Add('	  Select CutDispatchS_GC.ZLBH,CutDispatchS_GC.GCBWBH,CutDispatchS_GC.SIZE,SUM(case when CutDispatch_GC.CFMID<>''NO'' then Qty else 0 end) as DQty,MIN(CutDispatch_GC.PlanDate) as RPlanDate from CutDispatchS_GC');
    SQL.Add('	  Left join CutDispatch_GC on CutDispatchS_GC.DLNO=CutDispatch_GC.DLNO');
    SQL.Add('	  where CutDispatchS_GC.ZLBH in (Select ZLBH from SCZLDate,BDepartment where SCZLDate.Assemble=BDepartment.ID and SCZLDate.GSBH='''+main.Edit2.Text+''' and SCZLDate.ZLBH = '''+ZLBH+''' ');
    if CutProcessRpt.PlanDateCK.Checked=true then
    SQL.Add('         and  convert(smalldatetime,convert(varchar,SCZLDate.ADate,111)) between '''+formatdatetime('yyyy/MM/dd',CutProcessRpt.DTP1.Date)+''' and '''+formatdatetime('yyyy/MM/dd',CutProcessRpt.DTP2.Date)+''' ');
    SQL.Add('         ) and CutDispatchS_GC.GCBWBH='''+GCBWBH+'''  --and CutDispatchS_GC.BWBH=''ZZZZZZ''');
    SQL.Add('	       group  by CutDispatchS_GC.ZLBH,CutDispatchS_GC.GCBWBH,CutDispatchS_GC.SIZE');
    SQL.Add('	) GC on ZL_GC.ZLBH=GC.ZLBH and ZL_GC.GCBWBH=GC.GCBWBH and ZL_GC.SIZE=GC.SIZE ');
    SQL.Add('	Group by ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.SIZE,ZL_GC.PDays,KT_SOPCutS_GCBWD.ywsm ,KT_SOPCutS_GCBWD.zwsm,DDZLs.Quantity,KT_SOPCutS_GCBWD.Qty1Day,GC.DQty,GC.RPlanDate,ZL_GC.levels ) ZL_GC');
    SQL.Add('	left join SCZLDate on SCZLDate.ZLBH=ZL_GC.ZLBH');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

end.
