unit CGVendorCompareP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBTables, ComCtrls, GridsEh, DBGridEh, ExtCtrls;

type
  TCGVendorCompare = class(TForm)
    Panel1: TPanel;
    CGSD: TDateTimePicker;
    CGED: TDateTimePicker;
    GSBH: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DS1: TDataSource;
    DS2: TDataSource;
    CGMas: TQuery;
    CGDet: TQuery;
    Button1: TButton;
    CBX1: TComboBox;
    Label4: TLabel;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Panel3: TPanel;
    DBGridEh2: TDBGridEh;
    Panel4: TPanel;
    cb2: TCheckBox;
    CGMasCLBH: TStringField;
    CGMasywpm: TStringField;
    CGMasCSBH: TStringField;
    CGMaszsywjc: TStringField;
    CGMasTotCLSL: TFloatField;
    CGMasTotQty: TCurrencyField;
    CGDetCGNO: TStringField;
    CGDetZLBH: TStringField;
    CGDetCLBH: TStringField;
    CGDetCLSL: TFloatField;
    CGDetQty: TCurrencyField;
    CGDetMRP_csbh: TStringField;
    CGDetMRP_zsywjc: TStringField;
    CGDetmap_csbh: TStringField;
    CGDetmap_zsywjc: TStringField;
    CGDetcgzl_zsbh: TStringField;
    CGDetcgzl_zsywjc: TStringField;
    CGDetUSERDate: TDateTimeField;
    Panel5: TPanel;
    cb1: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CGVendorCompare: TCGVendorCompare;

implementation

{$R *.dfm}

procedure TCGVendorCompare.FormCreate(Sender: TObject);
begin
  CGSD.Date:=Now-30;
  CGED.Date:=Now;
end;

procedure TCGVendorCompare.Button1Click(Sender: TObject);
begin
  with CGMas do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select CGZLSS.CLBH,clzl.ywpm,zlzls2.CSBH,zszl.zsywjc,');
    sql.Add('       SUM(zlzls2.CLSL) as TotCLSL,sum(CGZLSS.Qty) as TotQty');
    sql.Add('from CGZLSS');
    sql.Add('left join CGZL on CGZLSS.CGNO=CGZL.CGNO');
    sql.Add('left join clzl on CGZLSS.CLBH=clzl.cldh');
    sql.Add('left join zlzls2 on zlzls2.ZLBH = CGZLSS.ZLBH and zlzls2.CLBH=CGZLSS.CLBH');
    sql.Add('left join zszl on zlzls2.CSBH=zszl.zsdh');
    sql.Add('where CGZLSS.USERDate>='+''''+datetostr(CGSD.Date)+''''+'');
    sql.Add('      and CGZLSS.USERDate<='+''''+datetostr(CGED.Date+1)+''''+'');
    if cb1.Checked then
      sql.Add('    and (zlzls2.CSBH<>'''' and zlzls2.CSBH is not null)');
    if CBX1.ItemIndex=1 then   //度陪ボ
    begin
      sql.add('    and substring(cgzlss.clbh,1,3) not in ');
      sql.add('    (select cllb from CLOther ');
      if GSBH.Text<>'ALL' then
        sql.Add('	  where GSBH='+''''+GSBH.Text+''''+')');
      if GSBH.Text='ALL' then
        sql.Add('	 )');
    end;
    if CBX1.ItemIndex=2 then  //度陪ボ
    begin
      sql.add('    and substring(cgzlss.clbh,1,3) in ');
      sql.add('    (select cllb from CLOther ');
      if GSBH.Text<>'ALL' then
        sql.Add('	  where GSBH='+''''+GSBH.Text+''''+')');
      if GSBH.Text='ALL' then
        sql.Add('	 )');
    end;
    sql.Add('group by CGZLSS.CLBH,zlzls2.CSBH,clzl.ywpm,zszl.zsywjc');
    sql.Add('order by CGZLSS.CLBH,zlzls2.CSBH');
//    memo1.Text:=sql.Text;
    active:=true;
  end;

  with CGDet do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select CGZLSS.CGNO,CGZLSS.ZLBH,zlzls2.CLBH,zlzls2.CLSL,CGZLSS.Qty,');
    sql.Add('       zlzls2.CSBH as MRP_csbh,zszl.zsywjc as MRP_zsywjc,');
    sql.Add('       ISNULL(map.CSBHV,'''') as map_csbh,isnull(map.zsywjcv,'''') as map_zsywjc,');
    sql.Add('       cgzl.ZSBH as cgzl_zsbh,cgzl.zsywjc as cgzl_zsywjc,CGZLSS.USERDate');
    sql.Add('from zlzls2');
    sql.Add('left join CGZLSS on zlzls2.ZLBH=CGZLSS.ZLBH and zlzls2.CLBH=CGZLSS.CLBH');
    sql.Add('left join zszl on zlzls2.CSBH=zszl.zsdh');
    sql.Add('left join (select CGZL.CGNO,CGZL.ZSBH,zszl.zsywjc from CGZL left join zszl on CGZL.ZSBH = zszl.zsdh) as cgzl');
    sql.Add('           on CGZLSS.CGNO = cgzl.CGNO	');
    sql.Add('left join (select b2buser.csbh,zszl.zsywjc,csbhv.CSBHV,csbhv.zsywjcv from B2BUser');
    sql.Add('		        left join zszl on B2BUser.CSBH = zszl.zsdh');
    sql.Add('		        left join (select B2BUser.csbh,B2BUser.CSBHV,zszl.zsywjc as zsywjcv from B2BUser');
    sql.Add('           left join zszl on B2BUser.CSBHV=zszl.zsdh) as csbhv on B2BUser.CSBH=csbhv.csbh) as map');
    sql.Add('		        on zlzls2.CSBH = map.CSBH   ');
    sql.Add('where CGZLSS.USERDate>='+''''+datetostr(CGSD.Date)+'''');
    sql.Add('      and CGZLSS.USERDate<='+''''+datetostr(CGED.Date)+'''');
    sql.Add('      and zlzls2.CLBH=:CLBH');
    sql.Add('      and zlzls2.CSBH=:CSBH');
    if cb2.Checked then
      sql.add('    and (CGZL.ZSBH <> isnull(map.CSBHV,zlzls2.CSBH) and CGZL.ZSBH <> zlzls2.CSBH)');
    if CBX1.ItemIndex=1 then   //度陪ボ
    begin
      sql.add('    and substring(cgzlss.clbh,1,3) not in ');
      sql.add('    (select cllb from CLOther ');
      if GSBH.Text<>'ALL' then
        sql.Add('	  where GSBH='+''''+GSBH.Text+''''+')');
      if GSBH.Text='ALL' then
        sql.Add('	 )');
    end;
    if CBX1.ItemIndex=2 then  //度陪ボ
    begin
      sql.add('    and substring(cgzlss.clbh,1,3) in ');
      sql.add('    (select cllb from CLOther ');
      if GSBH.Text<>'ALL' then
        sql.Add('	  where GSBH='+''''+GSBH.Text+''''+')');
      if GSBH.Text='ALL' then
        sql.Add('	 )');
    end;
    sql.Add('order by CGZLSS.CGNO,CGZLSS.ZLBH,CGZLSS.USERDate');
//    memo1.Text:=sql.Text;
    active:=true;
  end;

end;

procedure TCGVendorCompare.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TCGVendorCompare.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (CGDet.FieldByName('cgzl_zsbh').Value <> CGDet.FieldByName('map_csbh').Value)
     and (CGDet.FieldByName('cgzl_zsbh').Value <> CGDet.FieldByName('MRP_CSBH').Value) then
    dbgrideh2.Canvas.Font.Color:=clred;
end;

procedure TCGVendorCompare.FormDestroy(Sender: TObject);
begin
  CGVendorCompare:=nil;
end;

procedure TCGVendorCompare.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (CGMas.FieldByName('CSBH').Value = '') or (CGMas.FieldByName('CSBH').Value = null) then
    dbgrideh1.Canvas.Font.Color:=clblue;
end;

end.
