unit CostBOM_MatPrice1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, Comobj;

type
  TCostBOM_MatPrice = class(TForm)
    DBGrid2: TDBGridEh;
    CLZLBJ: TQuery;
    DS: TDataSource;
    CLZLBJCLZMLB: TStringField;
    CLZLBJCQDH: TStringField;
    CLZLBJcldh1: TStringField;
    CLZLBJYWPM: TStringField;
    CLZLBJZWPM: TStringField;
    CLZLBJUSPRICE: TFloatField;
    CLZLBJVNPRICE: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ShowQueryData();
  public
    { Public declarations }
  end;

var
  CostBOM_MatPrice: TCostBOM_MatPrice;

implementation
  uses main1, CostingBOM1, FunUnit;
{$R *.dfm}

procedure TCostBOM_MatPrice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TCostBOM_MatPrice.FormDestroy(Sender: TObject);
begin
  CostBOM_MatPrice:=nil;
end;


procedure TCostBOM_MatPrice.ShowQueryData();
begin
   with CLZLBJ do
   begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select CLZMLB,CQDH,clzhzl.cldh1,CLZL.YWPM,CLZL.ZWPM,case when CGBJS.USPRICE is not null then CGBJS.USPRICE else round(CGBJS.VNPrice/22380,3) end as USPRICE ,CGBJS.VNPRICE ');
      SQL.Add('FROM XXZLS ');
      SQL.Add('inner join clzhzl on clzhzl.cldh=xxzls.clbh ');
      SQL.Add('LEFT JOIN CLZL   ON clzhzl.cldh1 = CLZL.cldh ');
      SQL.Add('LEFT JOIN (select * from (select CGBJS.CLBH,CGBJS.USPrice,CGBJS.VNPrice, ');
      SQL.Add('						ROW_NUMBER() over (PARTITION BY CGBJS.CLBH ORDER BY CGBJ.BJNO DESC) as  rn ');
      SQL.Add('						from CGBJ');
      SQL.Add('						left join CGBJS on CGBJ.BJNO=CGBJS.BJNO');
      SQL.Add('						where CGBJ.GSBH='''+main.Edit2.Text+''' and CGBJS.CLBH is not null ');
      SQL.Add('						) CGBJ where rn=1 ) CGBJS ON CGBJS.CLBH=clzhzl.cldh1 ');
      SQL.Add('where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao and XXZLS.BWBH=:BWBH ');
      SQL.Add('union all');
      SQL.Add('select CLZMLB,case when CLZMLB<>''Y'' then CQDH else ''GC'' end as CQDH,XXZLS.CLBH,CLZL.YWPM, CLZL.ZWPM ,case when CGBJS.USPRICE is not null then CGBJS.USPRICE else round(CGBJS.VNPrice/22380,3) end as USPRICE ,CGBJS.VNPRICE ');
      SQL.Add('FROM XXZLS');
      SQL.Add('LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh');
      SQL.Add('LEFT JOIN (select * from (select CGBJS.CLBH,CGBJS.USPrice,CGBJS.VNPrice,');
      SQL.Add('						ROW_NUMBER() over (PARTITION BY CGBJS.CLBH ORDER BY CGBJ.BJNO DESC) as  rn');
      SQL.Add('						from CGBJ');
      SQL.Add('						left join CGBJS on CGBJ.BJNO=CGBJS.BJNO');
      SQL.Add('						where CGBJ.GSBH='''+main.Edit2.Text+''' and CGBJS.CLBH is not null');
      SQL.Add('						) CGBJ where rn=1 ) CGBJS ON CGBJS.CLBH=XXZLS.CLBH');
      SQL.Add('where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao  and XXZLS.BWBH=:BWBH and left(XXZLS.clbh,1)<>''M''');
      SQL.Add('union all');
      SQL.Add('select CLZMLB,CQDH, XXZLSVN.CLBH, CLZL.YWPM ,CLZL.ZWPM ,case when CGBJS.USPRICE is not null then CGBJS.USPRICE else round(CGBJS.VNPrice/22380,3) end as USPRICE ,CGBJS.VNPRICE ');
      SQL.Add('from XXZLSVN');
      SQL.Add('LEFT join CLZL on XXZLSVN.CLBH=CLZL.CLDH');
      SQL.Add('LEFT JOIN (select * from (select CGBJS.CLBH,CGBJS.USPrice,CGBJS.VNPrice,');
      SQL.Add('						ROW_NUMBER() over (PARTITION BY CGBJS.CLBH ORDER BY CGBJ.BJNO DESC) as  rn');
      SQL.Add('						from CGBJ ');
      SQL.Add('						left join CGBJS on CGBJ.BJNO=CGBJS.BJNO');
      SQL.Add('						where CGBJ.GSBH='''+main.Edit2.Text+''' and CGBJS.CLBH is not null');
      SQL.Add('						) CGBJ where rn=1 ) CGBJS ON CGBJS.CLBH=XXZLSVN.CLBH');
      SQL.Add('where  XXZLSVN.XieXing=:XieXing and  XXZLSVN.SheHao=:SheHao  and XXZLSVN.BWBH=:BWBH ');
      //
      Active:=true;
      //
   end;
end;

procedure TCostBOM_MatPrice.FormCreate(Sender: TObject);
begin
  ShowQueryData();
end;

end.
