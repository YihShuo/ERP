unit ExtraMatKT_Ord_Detail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TExtraMatKT_Ord_Detail = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query1YPDH: TStringField;
    Query1BWBH: TStringField;
    Query1YWSM: TStringField;
    Query1CLBH: TStringField;
    Query1Usage: TFloatField;
    Query1CLSL: TFloatField;
    Query1CQDH: TStringField;
    Query1CLMC: TStringField;
    Query1CLYWMC: TStringField;
    Query1dwbh: TStringField;
    Query1clzmlb: TStringField;
    DS1: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExtraMatKT_Ord_Detail: TExtraMatKT_Ord_Detail;

implementation
  uses ExtraMatKT_Ord1,FunUnit;
{$R *.dfm}

procedure TExtraMatKT_Ord_Detail.FormCreate(Sender: TObject);
begin
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    //
    SQL.Add('select YPZLS.YPDH,YPZLS.BWBH,BWZL.YWSM,YPZLS.CLBH,YPZLS.Usage,YPZLS.CLSL , ');
    SQL.Add('       CLZL.ZWPM as CLMC,CLZL.YWPM as CLYWMC,CLZL.DWBH,CLZL.CQDH,'+ExtraMatKT_Ord.PairsSQL+' as Quantity,YPZLS.CLZMLB  from ( ');
    SQL.Add('Select YPZLS.YPDH,YPZLS.BWBH, YPZLS.CLBH,YPZLS.CLZMLB,YPZLS.Usage,Sum(YPZLS.CLSL) as CLSL from ( ');
    SQL.Add('SELECT ypzls.YPDH ,ypzls.BWBH,ypzls.CLBH,ypzls.CLSL as Usage,CEILING(ypzls.CLSL*'+ExtraMatKT_Ord.PairsSQL+'*100)/100 as CLSL,clzl.CLZMLB ');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH  ');
    SQL.Add('LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
    SQL.Add('WHERE ypzls.YPDH=:ZLBH ');
    SQL.Add('    and CLZL.CLDH=:CLBH ');
    SQL.Add('union all ');
    SQL.Add('SELECT ypzls.YPDH ,ypzls.BWBH  ,clzhzl.CLDH1 as CLBH,YPZLS.CLSL*CLZHZL.SYL as Usage ,(CEILING(YPZLS.CLSL*'+ExtraMatKT_Ord.PairsSQL+'*100)/100)*CLZHZL.SYL as CLSL,clzl.CLZMLB ');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH  ');
    SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('WHERE ypzls.YPDH=:ZLBH  and CLZHZL.SYL>0  ');
    SQL.Add('    and CLZL.CLDH=:CLBH ');
    SQL.Add('union all');
    SQL.Add('Select clzhzl2.YPDH,clzhzl2.BWBH,clzhzl.CLDH1 as CLBH,clzhzl2.Usage*clzhzl.syl as Usage,CEILING(clzhzl2.CLSL*clzhzl.syl*100)/100 as CLSL,clzl.clzmlb ');
    SQL.Add('from (');
    SQL.Add('SELECT ypzls.YPDH ,ypzls.BWBH  ,YPZLS.CLBH as Parent,''Gia cong'' as DType,clzhzl.CLDH1 as CLBH,YPZLS.CLSL*CLZHZL.SYL as Usage,Round((CEILING(YPZLS.CLSL*'+ExtraMatKT_Ord.PairsSQL+'*100)/100)*CLZHZL.SYL,2) as CLSL ');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH  ');
    SQL.Add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('WHERE ypzls.YPDH=:ZLBH   and CLZHZL.SYL>0   and clzl.clzmlb=''Y''  ');
    SQL.Add(') clzhzl2');
    SQL.Add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
    SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('where  CLZL.CLDH=:CLBH ');
    SQL.Add(')  YPZLS Group by YPZLS.YPDH,YPZLS.BWBH, YPZLS.CLBH,YPZLS.Usage,YPZLS.CLZMLB   ) YPZLS');
    SQL.Add('left join YPZL on YPZL.YPDH=YPZLS.YPDH');
    SQL.Add('Left join CLZL on CLZL.CLDH=YPZLS.CLBH ');
    SQL.Add('Left join BWZL on BWZL.BWDH=YPZLS.BWBH ');
    SQL.Add('where YPZL.YPDH=:ZLBH ');
    SQL.Add('      and YPZLS.CLZMLB=''Y'' ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

end.
