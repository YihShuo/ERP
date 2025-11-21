unit UseCLZL_LS1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TUseCLZL_LS = class(TForm)
    DBGridEh1: TDBGridEh;
    CLZL_SL: TQuery;
    DS_CLZL: TDataSource;
    CLZL_SLType: TStringField;
    CLZL_SLNo: TStringField;
    CLZL_SLMother: TStringField;
    CLZL_SLCLBH: TStringField;
    CLZL_SLStage: TStringField;
    CLZL_SLSeason: TStringField;
    CLZL_SLSupplier: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
   public
    { Public declarations }
  end;

var
  UseCLZL_LS: TUseCLZL_LS;

implementation
  uses main1,SampleMaterial1,fununit;
{$R *.dfm}


procedure TUseCLZL_LS.FormShow(Sender: TObject);
begin
  with CLZL_SL do
  begin
    Active:=false;
    SQL.Clear;
    //子料號
    if SampleMaterial.UsedSpecCK.Checked=true then
    begin
      sql.add('select ''Spec'' as Type,YPZL.YPDH as No,Null as Mother,CLBH,YPZL.KFJD as Stage,KFXXZL.JiJie as Season,zszl.zsywjc as Supplier ' );
      sql.add (' from YPZLS,YPZL,KFXXZL,zszl where YPZL.YPDH=YPZLS.YPDH and  YPZL.SheHao=KFXXZL.SheHao and KFXXZL.XieXing=YPZL.XieXing and zszl.zsdh=YPZLS.CSBH  ');
      if SampleMaterial.DTPCK.Checked=true then
      begin
        sql.add('   and convert(smalldatetime,convert(varchar,YPZL.UserDate,111)) between ');
        sql.add('   '''+formatdatetime('yyyy/MM/dd',SampleMaterial.DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',SampleMaterial.DTP2.Date) +'''');
      end;
      if SampleMaterial.SeasonEdit.Text<>'' then
        sql.add('and KFXXZL.JiJie='''+SampleMaterial.SeasonEdit.Text+'''  ');
      if SampleMaterial.StageEdit.Text<>'' then
        sql.add('and YPZL.KFJD='''+SampleMaterial.StageEdit.Text+''' ');
      sql.add('and KFXXZL.KHDH in ('''+SampleMaterial.Develop_N23_KHDH+''' )and YPZLS.CLBH like ''V90%'' and YPZLS.CLBH =:CLDH  ');
      sql.add('union all ');
      sql.add('select ''Child'' as Type,YPZL.YPDH as No,YPZLS.CLBH as Mother,Clzhzl.CLDH1 as CLBH,YPZL.KFJD as Stage,KFXXZL.JiJie as Season,zszl.zsywjc as Supplier  from YPZLS ');
      sql.add('inner join YPZL on YPZL.YPDH=YPZLS.YPDH ');
      sql.add('inner join KFXXZL on YPZL.SheHao=KFXXZL.SheHao and KFXXZL.XieXing=YPZL.XieXing ');
      sql.add('inner join Clzhzl on YPZLS.CLBH=Clzhzl.CLDH  ');
      sql.add('inner join zszl on YPZLS.CSBH=zszl.zsdh  ');
      sql.add('left join XXZLKF on XXZLKF.SheHao=KFXXZL.SheHao and KFXXZL.XieXing=XXZLKF.XieXing  ');
      sql.add('where  Clzhzl.CLDH1 like ''V90%'' and Clzhzl.CLDH1=:CLDH  ');
      if SampleMaterial.DTPCK.Checked=true then
      begin
        sql.add('   and convert(smalldatetime,convert(varchar,YPZL.UserDate,111)) between ');
        sql.add('   '''+formatdatetime('yyyy/MM/dd',SampleMaterial.DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',SampleMaterial.DTP2.Date) +'''');
      end;
      if SampleMaterial.SeasonEdit.Text<>'' then
        sql.add('and KFXXZL.JiJie='''+SampleMaterial.SeasonEdit.Text+'''  ');
      if SampleMaterial.StageEdit.Text<>'' then
        sql.add('and YPZL.KFJD='''+SampleMaterial.StageEdit.Text+''' ');
        sql.add('and KFXXZL.KHDH in ('''+SampleMaterial.Develop_N23_KHDH+''' ) ');
      if SampleMaterial.DropCK.Checked=true then
        sql.add('and (xxzlKF.DROPPED<>1 or xxzlKF.DROPPED is null) ');
    end;
    //採購單
    if SampleMaterial.UsedPurCK.Checked=true then
    begin
      if SampleMaterial.UsedSpecCK.Checked=true then sql.add('union all ');
      sql.add('select ''Purchase'' as Type,CGZL.CGNO as No,Null as Mother,CLBH,CGZL.PurPose as Stage,CGZL.Season,zszl.zsywjc as Supplier from CGZLS ');
      sql.add('inner join CGZL on CGZL.CGNO=CGZLS.CGNO ');
      sql.add('inner join ZSZL on ZSZL.ZSDH=CGZL.ZSBH ');
      sql.add('where CGZL.GSBH='''+main.Edit2.Text+'''  and CGZLS.CLBH like ''V90%'' and CGZLS.CLBH=:CLDH ');
      if SampleMaterial.DTPCK.Checked=true then
      begin
        sql.add('   and convert(smalldatetime,convert(varchar,CGZL.UserDate,111)) between ');
        sql.add('   '''+formatdatetime('yyyy/MM/dd',SampleMaterial.DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',SampleMaterial.DTP2.Date) +'''');
      end;
      if SampleMaterial.SeasonEdit.Text<>'' then
        sql.add('and CGZL.Season='''+SampleMaterial.SeasonEdit.Text+'''  ');
      if SampleMaterial.StageEdit.Text<>'' then
        sql.add('and CGZL.Purpose='''+SampleMaterial.StageEdit.Text+''' ');
    end;
    //發票ETA
    if SampleMaterial.UsedInvCK.Checked=true then
    begin
      if ((SampleMaterial.UsedSpecCK.Checked=true) or (SampleMaterial.UsedPurCK.Checked=true)) then sql.add('union all ');
      sql.add('select ''Invoice'' as Type,CGZL.CGNO as No,Null as Mother,CLBH,CGZL.PurPose as Stage,CGZL.Season,zszl.zsywjc as Supplier from CGZLInvoiceS ');
      sql.add('inner join CGZL on CGZL.CGNO=CGZLInvoiceS.CGNO ');
      sql.add('inner join ZSZL on ZSZL.ZSDH=CGZL.ZSBH ');
      sql.add('where CGZL.GSBH='''+main.Edit2.Text+''' and CGZLInvoiceS.CLBH like ''V90%'' and CGZLInvoiceS.CLBH=:CLDH  ');
      if SampleMaterial.DTPCK.Checked=true then
      begin
        sql.add('   and convert(smalldatetime,convert(varchar,CGZLInvoiceS.UserDate,111)) between ');
        sql.add('   '''+formatdatetime('yyyy/MM/dd',SampleMaterial.DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',SampleMaterial.DTP2.Date) +'''');
      end;
      if SampleMaterial.SeasonEdit.Text<>'' then
        sql.add('and CGZL.Season='''+SampleMaterial.SeasonEdit.Text+'''  ');
      if SampleMaterial.StageEdit.Text<>'' then
        sql.add('and CGZL.Purpose='''+SampleMaterial.StageEdit.Text+''' ');
    end;
    //funcobj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TUseCLZL_LS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CLZL_SL.Active:=false;
end;

end.
