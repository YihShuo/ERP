unit UnBURK1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TUnBURK = class(TForm)
    DBGridEh_RY: TDBGridEh;
    DS_UnBURK: TDataSource;
    Qry_UnBURK: TQuery;
    Qry_UnBURKZSYWJC: TStringField;
    Qry_UnBURKCGDATE: TDateTimeField;
    Qry_UnBURKCGNO: TStringField;
    Qry_UnBURKQty: TCurrencyField;
    Qry_UnBURKRKQTY: TCurrencyField;
    Qry_UnBURKYQDate: TDateTimeField;
    Qry_UnBURKCFMDate: TDateTimeField;
    Qry_UnBURKZSBH: TStringField;
    Qry_UnBURKDiffqty: TCurrencyField;
    Qry_UnBURKCGType: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UnBURK: TUnBURK;

implementation
  uses main1,AnyStock2;
{$R *.dfm}

procedure TUnBURK.FormCreate(Sender: TObject);
begin
  with Qry_UnBURK do
  begin
    active:=false;
    sql.Clear;
    sql.add('DECLARE @Ldate as datetime');
    sql.add('set @Ldate = DATEADD(month, -6, GETDATE())'); //限定六個月內的訂單
    sql.add('select CGZLS.CGNO');
    sql.add('       ,CGZLS.CLBH');
    sql.add('       ,CGZLS.Qty ');
    sql.add('       ,CGZLS.YQDate');
    sql.add('       ,CGZLS.CFMDate');
    sql.add('       ,CGZL.ZSBH');
    sql.add('       ,ZSZL.ZSYWJC');
    sql.add('       ,CGZL.CGDATE');
    sql.add('       ,CGRK.RKQTY   ');
    sql.add('       ,CGZLS.Qty-ISNULL(CGRK.RKQTY,0) as Diffqty   ');
    sql.add('       ,case when CGZL.CGLX=1 then ''SIZE'' when CGZL.CGLX=2 then ''NO SIZE'' when CGZL.CGLX=3 then ''OTHER'' when CGZL.CGLX=5 then ''BOX'' else '''' end as CGType ');
    sql.add('from CGZLS');
    sql.add('left join CGZL on CGZL.CGNO=CGZLS.CGNO');
    sql.add('left join ZSZL  on CGZL.ZSBH=ZSZL.ZSDH ');
    sql.add('left join (select KCRK.ZSNO,KCRKS.CLBH,sum(KCRKS.Qty) as RKQTY ');
    sql.add('           from KCRKS');
    sql.add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    sql.add('           where ISNULL(KCRKS.RKSB,'''')<>''NG'' and ISNULL(KCRKS.RKSB,'''')<>''DL'' and KCRK.GSBH='''+main.Edit2.Text+''' ');
    sql.add('                 AND KCRKS.CLBH='+''''+AnyStockF.Query1.fieldByname('CLDH').AsString+'''');
    sql.add('           group by KCRK.ZSNO,KCRKS.CLBH ) CGRK on CGRK.ZSNO=CGZLS.CGNO AND CGRK.CLBH=CGZLS.CLBH ') ;
    sql.add('where  isnull(CGZLS.qty,0)>isnull(CGRK.RKQTY,0) ');
    sql.add('       and CGZLS.YN<>''5'' and CGZL.DevType=''Z07''  ');
    sql.add('       AND CGZLS.CLBH='+''''+AnyStockF.Query1.fieldByname('CLDH').AsString+'''');
    sql.add('       and CGZL.GSBH='+''''+main.Edit2.Text+'''');
    sql.add('       and CGZL.CGDate > @LDate ');   // add by Nick
    sql.add('       and (CGZL.CGLX='+''''+'2'+'''' );
    sql.add('            or CGZL.CGLX='+''''+'3'+'''' );
    sql.add('            or CGZL.CGLX='+''''+'5'+'''' );
    sql.add('            or CGZL.CGLX='+''''+'1'+''''+')' );
    sql.add(' ');
    active:=true;
  end;
end;

procedure TUnBURK.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Free;
end;

procedure TUnBURK.FormDestroy(Sender: TObject);
begin
    UnBURK:=nil;
end;

end.
