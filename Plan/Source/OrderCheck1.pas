unit OrderCheck1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables, Grids, DBGrids, Menus,OleServer,
  dateutils,comobj, ExcelXP, GridsEh, DBGridEh,ehlibBDE,DBGridEhImpExp,
  ComCtrls, PrnDbgeh;

type
  TOrderCheck = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Edit2: TEdit;
    Label6: TLabel;
    Edit4: TEdit;
    Button1: TButton;
    DBGrid1: TDBGridEh;
    CBX3: TComboBox;
    Label4: TLabel;
    Query1: TQuery;
    DataSource1: TDataSource;
    Edit3: TEdit;
    Label5: TLabel;
    Button2: TButton;
    PopupMenu1: TPopupMenu;
    NN1: TMenuItem;
    NN2: TMenuItem;
    Edit5: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label12: TLabel;
    CBX4: TComboBox;
    QTemp: TQuery;
    SaveDialog1: TSaveDialog;
    Label13: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Panel2: TPanel;
    Label11: TLabel;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Label1: TLabel;
    Panel3: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    PopupMenu2: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Label16: TLabel;
    RadG1: TRadioGroup;
    PrintDBGridEh1: TPrintDBGridEh;
    Print1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure NN1Click(Sender: TObject);
    procedure NN2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Panel3DblClick(Sender: TObject);
    procedure Panel2DblClick(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure PrintDBGridEh1BeforePrint(Sender: TObject);
    procedure Print1Click(Sender: TObject);
   // procedure Print1Click(Sender: TObject);
   // procedure Print1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderCheck: TOrderCheck;
  var w:integer;

implementation

uses DM3, OrderCheck_Det1, main1;

{$R *.dfm}

procedure TOrderCheck.Button1Click(Sender: TObject);
var i:integer;
begin
with QTemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#SCBBS'+''''+') is not null  ');
    sql.add('begin   drop table #SCBBS end   ');
    sql.add('select SCBBSS.SCBH,SCBBSS.XXCC,sum(SCBBSS.Qty) as Qty,SCGXDY.GX ');
    sql.add('into #SCBBS from SCBBSS ');
    sql.add('left join SCGXDY on SCGXDY.GXLB=SCBBSS.GXLB ');
    sql.add('left join DDZL on DDZL.ZLBH=SCBBSS.SCBH ');
    sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZl.SheHao=XXZL.SheHao ');
    sql.add('left join KFZL on KFZl.KFDH=DDZL.KHBH ');
    sql.add('left join SCZLDate on SCZLDate.ZLBH=SCBBSS.SCBH ');
    sql.add('where  KFZL.KFJC like '+''''+'%'+edit1.Text+'%'+'''');
    if panel2.Visible then
      begin
        sql.add('      and SCZLDate.SCYEAR='+''''+CBX2.Text+'''');
        sql.add('      and SCZLDate.SCMONTH='+''''+CBX1.text+'''');
      end
      else
        begin
          sql.add('        and convert(smalldatetime,convert(varchar,SCZLDate.CSD)) between ');
          sql.add('        '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
        end;
    sql.add('      and SCBBSS.SCBH like '+''''+edit2.text+'%'+'''');
    sql.add('      and XXZL.Article like '+''''+'%'+edit3.text+'%'+'''');
    sql.add('      and XXZL.XieMing like '+''''+'%'+edit4.text+'%'+'''');
    if RadG1.itemindex=0 then
      begin
        sql.add('      and DDZl.GSBH='+''''+CBX4.text+'''');
      end
      else
        begin
          sql.add('         and SCZLDate.GSBH='+''''+CBX4.text+'''');
        end;
    if edit8.text<>'' then
      begin
        sql.add('      and SCZLDate.Assemble like '+''''+edit8.Text+'%'+'''');
      end;
    sql.add('group by  SCBBSS.SCBH,SCBBSS.XXCC,SCGXDY.GX ');
    execsql;
  end;

case CBX3.ItemIndex of
  0:
    begin
      with query1 do
        begin
          active:=false;
          sql.clear;
          sql.add('select DDZL.DDBH,DDZL.Article,XXZL.XieMing,XXZL.DaoMH ,KFZL.KFJC,DDZl.Pairs,');
          sql.add('       SCBBC.C_Qty,DDZL.Pairs-isnull(SCBBC.C_Qty,0) as Lack_C,SCBBS.S_Qty,DDZL.Pairs-isnull(SCBBS.S_Qty,0) as Lack_S,');
          sql.add('       SCBBW.W_Qty,DDZL.Pairs-isnull(SCBBW.W_Qty,0) as Lack_W,SCBBO.O_Qty,DDZL.Pairs-isnull(SCBBO.O_Qty,0) as Lack_O,');
          sql.add('       SCBBZ.Z_Qty,DDZL.Pairs-isnull(SCBBZ.Z_Qty,0) as Lack_Z,SCBBA.A_Qty,DDZL.Pairs-isnull(SCBBA.A_Qty,0) as Lack_A,');
          sql.add('       case when SCBBA.A_Qty is not null and SCSET.Qty>SCBBA.A_Qty then SCSET.Qty-SCBBA.A_Qty else SCSET.Qty end as A_Set');
          sql.add('from DDZL ');
          sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZl.SheHao=XXZL.SheHao ');
          sql.add('left join KFZL on KFZl.KFDH=DDZL.KHBH ');
          sql.add('left join SCZLDate on SCZLDate.ZLBH=DDZL.ZLBH ');
         //加載配套數量
          sql.add('left join (select SCBH,sum(Qty)  as Qty  ');
          sql.add('           from (select  SCBH, XXCC,min( Qty) as Qty  ');
          sql.add('                 from #SCBBS ');
          if CBX4.text<>'R1' then
            begin
              sql.add('                 where (GX='+''''+'O'+''''+' or GX='+''''+'W'+'''');
              sql.add('                        or GX='+''''+'Z'+''''+' or GX='+''''+'S'+''''+')');
              sql.add('                 group by SCBH,XXCC');
              sql.add('                 having count(XXCC)=4 ');
            end
            else
              begin
                sql.add('                 where (GX='+''''+'O'+''''+' or GX='+''''+'Z'+''''+' or GX='+''''+'S'+''''+')');
                sql.add('                 group by SCBH,XXCC');
                sql.add('                 having count(XXCC)=3 ');
              end;
          sql.add('          )SCSET group by SCBH )SCSET on SCSET.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as C_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'C'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBC on SCBBC.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as S_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'S'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBS on SCBBS.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as W_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'W'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBW on SCBBW.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as O_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'O'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBO on SCBBO.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as Z_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'Z'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBZ on SCBBZ.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as A_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'A'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBA on SCBBA.SCBH=DDZL.ZLBH ');
          sql.add('where KFZL.KFJC like '+''''+'%'+edit1.Text+'%'+'''');
          if panel2.Visible then
            begin
              sql.add('      and SCZLDate.SCYEAR='+''''+CBX2.Text+'''');
              sql.add('      and SCZLDate.SCMONTH='+''''+CBX1.text+'''');
            end
            else
             begin
               sql.add('        and convert(smalldatetime,convert(varchar,SCZLDate.CSD)) between ');
               sql.add('        '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
             end;
          sql.add('      and DDZL.DDBH like '+''''+edit2.text+'%'+'''');
          sql.add('      and XXZL.Article like '+''''+'%'+edit3.text+'%'+'''');
          sql.add('      and XXZL.XieMing like '+''''+'%'+edit4.text+'%'+'''');
          if RadG1.itemindex=0 then
            begin
              sql.add('      and DDZl.GSBH='+''''+CBX4.text+'''');
            end
            else
              begin
                sql.add('         and SCZLDate.GSBH='+''''+CBX4.text+'''');
              end;
          if edit8.text<>'' then
            begin
              sql.add('      and SCZLDate.Assemble like '+''''+edit8.Text+'%'+'''');
            end;
          sql.add('order by DDZL.DDBH ');
          active:=true;
          Tfloatfield(FieldByName('Pairs')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('C_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_C')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('S_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_S')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('W_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_W')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('O_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_O')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Z_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_Z')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('A_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_A')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('A_SET')).displayformat:='##,#0' ;
          edit9.Text:='0';
          label16.Caption:='月份訂單完成配套狀況表';
        end;
    end;
  1:
    begin
      with query1 do
        begin
          active:=false;
          sql.clear;
          sql.add('select Article,XieMing,DaoMH ,KFJC,sum(Pairs) as Pairs,');
          sql.add('       sum(C_Qty) as C_Qty,sum(Lack_C) as Lack_C,sum(S_Qty) as S_Qty,sum(Lack_S) as Lack_S,');
          sql.add('       sum(W_Qty) as W_Qty,sum(Lack_W) as Lack_W,sum(O_Qty) as O_Qty,sum(Lack_O) as Lack_O,');
          sql.add('       sum(Z_Qty) as Z_Qty,sum(Lack_Z) as Lack_Z,sum(A_Qty) as A_Qty,sum(Lack_A) as Lack_A,sum(A_Set) as A_Set');
          sql.add('from (select DDZL.DDBH,DDZL.Article,XXZL.XieMing,XXZL.DaoMH ,KFZL.KFJC,DDZl.Pairs,');
          sql.add('       SCBBC.C_Qty,DDZL.Pairs-isnull(SCBBC.C_Qty,0) as Lack_C,SCBBS.S_Qty,DDZL.Pairs-isnull(SCBBS.S_Qty,0) as Lack_S,');
          sql.add('       SCBBW.W_Qty,DDZL.Pairs-isnull(SCBBW.W_Qty,0) as Lack_W,SCBBO.O_Qty,DDZL.Pairs-isnull(SCBBO.O_Qty,0) as Lack_O,');
          sql.add('       SCBBZ.Z_Qty,DDZL.Pairs-isnull(SCBBZ.Z_Qty,0) as Lack_Z,SCBBA.A_Qty,DDZL.Pairs-isnull(SCBBA.A_Qty,0) as Lack_A,');
          sql.add('       case when SCBBA.A_Qty is not null and SCSET.Qty>SCBBA.A_Qty then SCSET.Qty-SCBBA.A_Qty else SCSET.Qty end as A_Set');
          sql.add('from DDZL ');
          sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZl.SheHao=XXZL.SheHao ');
          sql.add('left join KFZL on KFZl.KFDH=DDZL.KHBH ');
          sql.add('left join SCZLDate on SCZLDate.ZLBH=DDZL.ZLBH ');
         //加載配套數量
          sql.add('left join (select SCBH,sum(Qty)  as Qty  ');
          sql.add('           from (select  SCBH, XXCC,min( Qty) as Qty  ');
          sql.add('                 from #SCBBS ');
          if CBX4.text<>'R1' then
            begin
              sql.add('                 where (GX='+''''+'O'+''''+' or GX='+''''+'W'+'''');
              sql.add('                        or GX='+''''+'Z'+''''+' or GX='+''''+'S'+''''+')');
              sql.add('                 group by SCBH,XXCC');
              sql.add('                 having count(XXCC)=4 ');
            end
            else
              begin
                sql.add('                 where (GX='+''''+'O'+''''+' or GX='+''''+'Z'+''''+' or GX='+''''+'S'+''''+')');
                sql.add('                 group by SCBH,XXCC');
                sql.add('                 having count(XXCC)=3 ');
              end;
          sql.add('          )SCSET group by SCBH )SCSET on SCSET.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as C_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'C'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBC on SCBBC.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as S_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'S'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBS on SCBBS.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as W_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'W'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBW on SCBBW.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as O_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'O'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBO on SCBBO.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as Z_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'Z'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBZ on SCBBZ.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as A_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'A'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBA on SCBBA.SCBH=DDZL.ZLBH ');
          sql.add('where KFZL.KFJC like '+''''+'%'+edit1.Text+'%'+'''');
          if panel2.Visible then
            begin
              sql.add('      and SCZLDate.SCYEAR='+''''+CBX2.Text+'''');
              sql.add('      and SCZLDate.SCMONTH='+''''+CBX1.text+'''');
            end
            else
             begin
               sql.add('        and convert(smalldatetime,convert(varchar,SCZLDate.CSD)) between ');
               sql.add('        '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
             end;
          sql.add('      and DDZL.DDBH like '+''''+edit2.text+'%'+'''');
          sql.add('      and XXZL.Article like '+''''+'%'+edit3.text+'%'+'''');
          sql.add('      and XXZL.XieMing like '+''''+'%'+edit4.text+'%'+'''');
          if RadG1.itemindex=0 then
            begin
              sql.add('      and DDZl.GSBH='+''''+CBX4.text+'''');
            end
            else
              begin
                sql.add('         and SCZLDate.GSBH='+''''+CBX4.text+'''');
              end;
          if edit8.text<>'' then
            begin
              sql.add('      and SCZLDate.Assemble like '+''''+edit8.Text+'%'+'''');
            end;
          sql.add('      ) SCOrder ');
          sql.Add('group by Article,XieMing,DaoMH ,KFJC' ) ;
          sql.add('order by Article ');
          active:=true;
          Tfloatfield(FieldByName('Pairs')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('C_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_C')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('S_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_S')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('W_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_W')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('O_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_O')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Z_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_Z')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('A_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_A')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('A_SET')).displayformat:='##,#0' ;
          edit9.Text:='1';
          label16.Caption:='月份訂單完成配套狀況表--SKU＃匯總';
        end;
    end;
  2:
    begin
      with query1 do
        begin
          active:=false;
          sql.clear;
          sql.add('select max(XieMing) as XieMing,DaoMH ,KFJC,sum(Pairs) as Pairs,');
          sql.add('       sum(C_Qty) as C_Qty,sum(Lack_C) as Lack_C,sum(S_Qty) as S_Qty,sum(Lack_S) as Lack_S,');
          sql.add('       sum(W_Qty) as W_Qty,sum(Lack_W) as Lack_W,sum(O_Qty) as O_Qty,sum(Lack_O) as Lack_O,');
          sql.add('       sum(Z_Qty) as Z_Qty,sum(Lack_Z) as Lack_Z,sum(A_Qty) as A_Qty,sum(Lack_A) as Lack_A,sum(A_Set) as A_Set');
          sql.add('from (select DDZL.DDBH,DDZL.Article,XXZL.XieMing,XXZL.DaoMH ,KFZL.KFJC,DDZl.Pairs,');
          sql.add('       SCBBC.C_Qty,DDZL.Pairs-isnull(SCBBC.C_Qty,0) as Lack_C,SCBBS.S_Qty,DDZL.Pairs-isnull(SCBBS.S_Qty,0) as Lack_S,');
          sql.add('       SCBBW.W_Qty,DDZL.Pairs-isnull(SCBBW.W_Qty,0) as Lack_W,SCBBO.O_Qty,DDZL.Pairs-isnull(SCBBO.O_Qty,0) as Lack_O,');
          sql.add('       SCBBZ.Z_Qty,DDZL.Pairs-isnull(SCBBZ.Z_Qty,0) as Lack_Z,SCBBA.A_Qty,DDZL.Pairs-isnull(SCBBA.A_Qty,0) as Lack_A,');
          sql.add('       case when SCBBA.A_Qty is not null and SCSET.Qty>SCBBA.A_Qty then SCSET.Qty-SCBBA.A_Qty else SCSET.Qty end as A_Set');
          sql.add('from DDZL ');
          sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZl.SheHao=XXZL.SheHao ');
          sql.add('left join KFZL on KFZl.KFDH=DDZL.KHBH ');
          sql.add('left join SCZLDate on SCZLDate.ZLBH=DDZL.ZLBH ');
         //加載配套數量
          sql.add('left join (select SCBH,sum(Qty)  as Qty  ');
          sql.add('           from (select  SCBH, XXCC,min( Qty) as Qty  ');
          sql.add('                 from #SCBBS ');
          if CBX4.text<>'R1' then
            begin
              sql.add('                 where (GX='+''''+'O'+''''+' or GX='+''''+'W'+'''');
              sql.add('                        or GX='+''''+'Z'+''''+' or GX='+''''+'S'+''''+')');
              sql.add('                 group by SCBH,XXCC');
              sql.add('                 having count(XXCC)=4 ');
            end
            else
              begin
                sql.add('                 where (GX='+''''+'O'+''''+' or GX='+''''+'Z'+''''+' or GX='+''''+'S'+''''+')');
                sql.add('                 group by SCBH,XXCC');
                sql.add('                 having count(XXCC)=3 ');
              end;
          sql.add('          )SCSET group by SCBH )SCSET on SCSET.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as C_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'C'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBC on SCBBC.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as S_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'S'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBS on SCBBS.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as W_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'W'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBW on SCBBW.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as O_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'O'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBO on SCBBO.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as Z_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'Z'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBZ on SCBBZ.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as A_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'A'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBA on SCBBA.SCBH=DDZL.ZLBH ');
          sql.add('where KFZL.KFJC like '+''''+'%'+edit1.Text+'%'+'''');
          if panel2.Visible then
            begin
              sql.add('      and SCZLDate.SCYEAR='+''''+CBX2.Text+'''');
              sql.add('      and SCZLDate.SCMONTH='+''''+CBX1.text+'''');
            end
            else
             begin
               sql.add('        and convert(smalldatetime,convert(varchar,SCZLDate.CSD)) between ');
               sql.add('        '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
             end;
          sql.add('      and DDZL.DDBH like '+''''+edit2.text+'%'+'''');
          sql.add('      and XXZL.Article like '+''''+'%'+edit3.text+'%'+'''');
          sql.add('      and XXZL.XieMing like '+''''+'%'+edit4.text+'%'+'''');
          if RadG1.itemindex=0 then
            begin
              sql.add('      and DDZl.GSBH='+''''+CBX4.text+'''');
            end
            else
              begin
                sql.add('         and SCZLDate.GSBH='+''''+CBX4.text+'''');
              end;
          if edit8.text<>'' then
            begin
              sql.add('      and SCZLDate.Assemble like '+''''+edit8.Text+'%'+'''');
            end;
          sql.add('      ) SCOrder ');
          sql.Add('group by DaoMH ,KFJC');
          sql.add('order by DaoMH ,KFJC');
          active:=true;
          Tfloatfield(FieldByName('Pairs')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('C_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_C')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('S_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_S')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('W_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_W')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('O_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_O')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Z_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_Z')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('A_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_A')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('A_SET')).displayformat:='##,#0' ;
          edit9.Text:='2';
          label16.Caption:='月份訂單完成配套狀況表--形體匯總';
        end;
    end;
  3:
    begin
      with query1 do
        begin
          active:=false;
          sql.clear;
          sql.add('select KFJC,sum(Pairs) as Pairs,');
          sql.add('       sum(C_Qty) as C_Qty,sum(Lack_C) as Lack_C,sum(S_Qty) as S_Qty,sum(Lack_S) as Lack_S,');
          sql.add('       sum(W_Qty) as W_Qty,sum(Lack_W) as Lack_W,sum(O_Qty) as O_Qty,sum(Lack_O) as Lack_O,');
          sql.add('       sum(Z_Qty) as Z_Qty,sum(Lack_Z) as Lack_Z,sum(A_Qty) as A_Qty,sum(Lack_A) as Lack_A,sum(A_Set) as A_Set');
          sql.add('from (select DDZL.DDBH,DDZL.Article,XXZL.XieMing,XXZL.DaoMH ,KFZL.KFJC,DDZl.Pairs,');
          sql.add('       SCBBC.C_Qty,DDZL.Pairs-isnull(SCBBC.C_Qty,0) as Lack_C,SCBBS.S_Qty,DDZL.Pairs-isnull(SCBBS.S_Qty,0) as Lack_S,');
          sql.add('       SCBBW.W_Qty,DDZL.Pairs-isnull(SCBBW.W_Qty,0) as Lack_W,SCBBO.O_Qty,DDZL.Pairs-isnull(SCBBO.O_Qty,0) as Lack_O,');
          sql.add('       SCBBZ.Z_Qty,DDZL.Pairs-isnull(SCBBZ.Z_Qty,0) as Lack_Z,SCBBA.A_Qty,DDZL.Pairs-isnull(SCBBA.A_Qty,0) as Lack_A,');
          sql.add('       case when SCBBA.A_Qty is not null and SCSET.Qty>SCBBA.A_Qty then SCSET.Qty-SCBBA.A_Qty else SCSET.Qty end as A_Set');
          sql.add('from DDZL ');
          sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZl.SheHao=XXZL.SheHao ');
          sql.add('left join KFZL on KFZl.KFDH=DDZL.KHBH ');
          sql.add('left join SCZLDate on SCZLDate.ZLBH=DDZL.ZLBH ');
         //加載配套數量
          sql.add('left join (select SCBH,sum(Qty)  as Qty  ');
          sql.add('           from (select  SCBH, XXCC,min( Qty) as Qty  ');
          sql.add('                 from #SCBBS ');
          if CBX4.text<>'R1' then
            begin
              sql.add('                 where (GX='+''''+'O'+''''+' or GX='+''''+'W'+'''');
              sql.add('                        or GX='+''''+'Z'+''''+' or GX='+''''+'S'+''''+')');
              sql.add('                 group by SCBH,XXCC');
              sql.add('                 having count(XXCC)=4 ');
            end
            else
              begin
                sql.add('                 where (GX='+''''+'O'+''''+' or GX='+''''+'Z'+''''+' or GX='+''''+'S'+''''+')');
                sql.add('                 group by SCBH,XXCC');
                sql.add('                 having count(XXCC)=3 ');
              end;
          sql.add('          )SCSET group by SCBH )SCSET on SCSET.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as C_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'C'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBC on SCBBC.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as S_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'S'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBS on SCBBS.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as W_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'W'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBW on SCBBW.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as O_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'O'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBO on SCBBO.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as Z_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'Z'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBZ on SCBBZ.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as A_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'A'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBA on SCBBA.SCBH=DDZL.ZLBH ');
          sql.add('where KFZL.KFJC like '+''''+'%'+edit1.Text+'%'+'''');
          if panel2.Visible then
            begin
              sql.add('      and SCZLDate.SCYEAR='+''''+CBX2.Text+'''');
              sql.add('      and SCZLDate.SCMONTH='+''''+CBX1.text+'''');
            end
            else
             begin
               sql.add('        and convert(smalldatetime,convert(varchar,SCZLDate.CSD)) between ');
               sql.add('        '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
             end;
          sql.add('      and DDZL.DDBH like '+''''+edit2.text+'%'+'''');
          sql.add('      and XXZL.Article like '+''''+'%'+edit3.text+'%'+'''');
          sql.add('      and XXZL.XieMing like '+''''+'%'+edit4.text+'%'+'''');
          if RadG1.itemindex=0 then
            begin
              sql.add('      and DDZl.GSBH='+''''+CBX4.text+'''');
            end
            else
              begin
                sql.add('         and SCZLDate.GSBH='+''''+CBX4.text+'''');
              end;
          if edit8.text<>'' then
            begin
              sql.add('      and SCZLDate.Assemble like '+''''+edit8.Text+'%'+'''');
            end;
          sql.add('      ) SCOrder ');
          sql.Add('group by KFJC');
          sql.add('order by KFJC');
          active:=true;
          Tfloatfield(FieldByName('Pairs')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('C_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_C')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('S_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_S')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('W_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_W')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('O_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_O')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Z_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_Z')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('A_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_A')).displayformat:='##,#0' ; 
          Tfloatfield(FieldByName('A_SET')).displayformat:='##,#0' ;
          edit9.Text:='3';
          label16.Caption:='月份訂單完成配套狀況表--分客人匯總';
        end;
    end;
  4:
    begin
      with query1 do
        begin
          active:=false;
          sql.clear;
          sql.add('select convert(varchar,ShipDate,111) as FSD,KFJC,sum(Pairs) as Pairs,');
          sql.add('       sum(C_Qty) as C_Qty,sum(Lack_C) as Lack_C,sum(S_Qty) as S_Qty,sum(Lack_S) as Lack_S,');
          sql.add('       sum(W_Qty) as W_Qty,sum(Lack_W) as Lack_W,sum(O_Qty) as O_Qty,sum(Lack_O) as Lack_O,');
          sql.add('       sum(Z_Qty) as Z_Qty,sum(Lack_Z) as Lack_Z,sum(A_Qty) as A_Qty,sum(Lack_A) as Lack_A,sum(A_Set) as A_Set');
          sql.add('from (select DDZL.DDBH,DDZL.Article,XXZL.XieMing,XXZL.DaoMH ,KFZL.KFJC,DDZL.ShipDate,DDZl.Pairs,');
          sql.add('       SCBBC.C_Qty,DDZL.Pairs-isnull(SCBBC.C_Qty,0) as Lack_C,SCBBS.S_Qty,DDZL.Pairs-isnull(SCBBS.S_Qty,0) as Lack_S,');
          sql.add('       SCBBW.W_Qty,DDZL.Pairs-isnull(SCBBW.W_Qty,0) as Lack_W,SCBBO.O_Qty,DDZL.Pairs-isnull(SCBBO.O_Qty,0) as Lack_O,');
          sql.add('       SCBBZ.Z_Qty,DDZL.Pairs-isnull(SCBBZ.Z_Qty,0) as Lack_Z,SCBBA.A_Qty,DDZL.Pairs-isnull(SCBBA.A_Qty,0) as Lack_A,');
          sql.add('       case when SCBBA.A_Qty is not null and SCSET.Qty>SCBBA.A_Qty then SCSET.Qty-SCBBA.A_Qty else SCSET.Qty end as A_Set');
          sql.add('from DDZL ');
          sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZl.SheHao=XXZL.SheHao ');
          sql.add('left join KFZL on KFZl.KFDH=DDZL.KHBH ');
          sql.add('left join SCZLDate on SCZLDate.ZLBH=DDZL.ZLBH ');
         //加載配套數量
          sql.add('left join (select SCBH,sum(Qty)  as Qty  ');
          sql.add('           from (select  SCBH, XXCC,min( Qty) as Qty  ');
          sql.add('                 from #SCBBS ');
          if CBX4.text<>'R1' then
            begin
              sql.add('                 where (GX='+''''+'O'+''''+' or GX='+''''+'W'+'''');
              sql.add('                        or GX='+''''+'Z'+''''+' or GX='+''''+'S'+''''+')');
              sql.add('                 group by SCBH,XXCC');
              sql.add('                 having count(XXCC)=4 ');
            end
            else
              begin
                sql.add('                 where (GX='+''''+'O'+''''+' or GX='+''''+'Z'+''''+' or GX='+''''+'S'+''''+')');
                sql.add('                 group by SCBH,XXCC');
                sql.add('                 having count(XXCC)=3 ');
              end;
          sql.add('          )SCSET group by SCBH )SCSET on SCSET.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as C_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'C'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBC on SCBBC.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as S_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'S'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBS on SCBBS.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as W_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'W'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBW on SCBBW.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as O_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'O'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBO on SCBBO.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as Z_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'Z'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBZ on SCBBZ.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as A_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'A'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBA on SCBBA.SCBH=DDZL.ZLBH ');
          sql.add('where KFZL.KFJC like '+''''+'%'+edit1.Text+'%'+'''');
          if panel2.Visible then
            begin
              sql.add('      and SCZLDate.SCYEAR='+''''+CBX2.Text+'''');
              sql.add('      and SCZLDate.SCMONTH='+''''+CBX1.text+'''');
            end
            else
             begin
               sql.add('        and convert(smalldatetime,convert(varchar,SCZLDate.CSD)) between ');
               sql.add('        '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
             end;
          sql.add('      and DDZL.DDBH like '+''''+edit2.text+'%'+'''');
          sql.add('      and XXZL.Article like '+''''+'%'+edit3.text+'%'+'''');
          sql.add('      and XXZL.XieMing like '+''''+'%'+edit4.text+'%'+'''');
          if RadG1.itemindex=0 then
            begin
              sql.add('      and DDZl.GSBH='+''''+CBX4.text+'''');
            end
            else
              begin
                sql.add('         and SCZLDate.GSBH='+''''+CBX4.text+'''');
              end;
          if edit8.text<>'' then
            begin
              sql.add('      and SCZLDate.Assemble like '+''''+edit8.Text+'%'+'''');
            end;
          sql.add('      ) SCOrder ');
          sql.Add('group by convert(varchar,ShipDate,111),KFJC');
          sql.add('order by convert(varchar,ShipDate,111),KFJC');
          active:=true;
          Tfloatfield(FieldByName('Pairs')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('C_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_C')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('S_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_S')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('W_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_W')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('O_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_O')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Z_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_Z')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('A_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_A')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('A_SET')).displayformat:='##,#0' ;
          edit9.Text:='4';
          label16.Caption:='月份訂單完成配套狀況表--分CSD時間匯總';
        end;
    end;
  5:
    begin
      with query1 do
        begin
          active:=false;
          sql.clear;
          sql.add('select convert(varchar,ETD,111) as ETD,KFJC,sum(Pairs) as Pairs,');
          sql.add('       sum(C_Qty) as C_Qty,sum(Lack_C) as Lack_C,sum(S_Qty) as S_Qty,sum(Lack_S) as Lack_S,');
          sql.add('       sum(W_Qty) as W_Qty,sum(Lack_W) as Lack_W,sum(O_Qty) as O_Qty,sum(Lack_O) as Lack_O,');
          sql.add('       sum(Z_Qty) as Z_Qty,sum(Lack_Z) as Lack_Z,sum(A_Qty) as A_Qty,sum(Lack_A) as Lack_A,sum(A_Set) as A_Set');
          sql.add('from (select DDZL.DDBH,DDZL.Article,XXZL.XieMing,XXZL.DaoMH ,KFZL.KFJC,SCZLDate.ETD,DDZl.Pairs,');
          sql.add('       SCBBC.C_Qty,DDZL.Pairs-isnull(SCBBC.C_Qty,0) as Lack_C,SCBBS.S_Qty,DDZL.Pairs-isnull(SCBBS.S_Qty,0) as Lack_S,');
          sql.add('       SCBBW.W_Qty,DDZL.Pairs-isnull(SCBBW.W_Qty,0) as Lack_W,SCBBO.O_Qty,DDZL.Pairs-isnull(SCBBO.O_Qty,0) as Lack_O,');
          sql.add('       SCBBZ.Z_Qty,DDZL.Pairs-isnull(SCBBZ.Z_Qty,0) as Lack_Z,SCBBA.A_Qty,DDZL.Pairs-isnull(SCBBA.A_Qty,0) as Lack_A,');
          sql.add('       case when SCBBA.A_Qty is not null and SCSET.Qty>SCBBA.A_Qty then SCSET.Qty-SCBBA.A_Qty else SCSET.Qty end as A_Set');
          sql.add('from DDZL ');
          sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZl.SheHao=XXZL.SheHao ');
          sql.add('left join KFZL on KFZl.KFDH=DDZL.KHBH ');
          sql.add('left join SCZLDate on SCZLDate.ZLBH=DDZL.ZLBH ');
         //加載配套數量
          sql.add('left join (select SCBH,sum(Qty)  as Qty  ');
          sql.add('           from (select  SCBH, XXCC,min( Qty) as Qty  ');
          sql.add('                 from #SCBBS ');
          if CBX4.text<>'R1' then
            begin
              sql.add('                 where (GX='+''''+'O'+''''+' or GX='+''''+'W'+'''');
              sql.add('                        or GX='+''''+'Z'+''''+' or GX='+''''+'S'+''''+')');
              sql.add('                 group by SCBH,XXCC');
              sql.add('                 having count(XXCC)=4 ');
            end
            else
              begin
                sql.add('                 where (GX='+''''+'O'+''''+' or GX='+''''+'Z'+''''+' or GX='+''''+'S'+''''+')');
                sql.add('                 group by SCBH,XXCC');
                sql.add('                 having count(XXCC)=3 ');
              end;
          sql.add('          )SCSET group by SCBH )SCSET on SCSET.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as C_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'C'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBC on SCBBC.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as S_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'S'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBS on SCBBS.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as W_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'W'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBW on SCBBW.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as O_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'O'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBO on SCBBO.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as Z_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'Z'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBZ on SCBBZ.SCBH=DDZL.ZLBH ');
          sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as A_Qty ');
          sql.add('           from #SCBBS ');
          sql.add('           where #SCBBS.GX='+''''+'A'+'''');
          sql.add('           group by #SCBBS.SCBH) SCBBA on SCBBA.SCBH=DDZL.ZLBH ');
          sql.add('where KFZL.KFJC like '+''''+'%'+edit1.Text+'%'+'''');
          if panel2.Visible then
            begin
              sql.add('      and SCZLDate.SCYEAR='+''''+CBX2.Text+'''');
              sql.add('      and SCZLDate.SCMONTH='+''''+CBX1.text+'''');
            end
            else
             begin
               sql.add('        and convert(smalldatetime,convert(varchar,SCZLDate.CSD)) between ');
               sql.add('        '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
             end;
          sql.add('      and DDZL.DDBH like '+''''+edit2.text+'%'+'''');
          sql.add('      and XXZL.Article like '+''''+'%'+edit3.text+'%'+'''');
          sql.add('      and XXZL.XieMing like '+''''+'%'+edit4.text+'%'+'''');
          if RadG1.itemindex=0 then
            begin
              sql.add('      and DDZl.GSBH='+''''+CBX4.text+'''');
            end
            else
              begin
                sql.add('         and SCZLDate.GSBH='+''''+CBX4.text+'''');
              end;
          if edit8.text<>'' then
            begin
              sql.add('      and SCZLDate.Assemble like '+''''+edit8.Text+'%'+'''');
            end;
          sql.add('      ) SCOrder ');
          sql.Add('group by convert(varchar,ETD,111),KFJC');
          sql.add('order by convert(varchar,ETD,111),KFJC');
          active:=true;
          Tfloatfield(FieldByName('Pairs')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('C_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_C')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('S_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_S')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('W_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_W')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('O_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_O')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Z_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_Z')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('A_Qty')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('Lack_A')).displayformat:='##,#0' ; 
          Tfloatfield(FieldByName('A_SET')).displayformat:='##,#0' ;
          edit9.Text:='5';
          label16.Caption:='月份訂單完成配套狀況表--分ETD匯總';
        end;
    end;
end;


end;

procedure TOrderCheck.FormClose(Sender: TObject; var Action: TCloseAction);
begin
with QTemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#SCBBS'+''''+') is not null  ');
    sql.add('begin   drop table #SCBBS end   ');
    execsql;
  end;
action:=cafree;
end;

procedure TOrderCheck.Button2Click(Sender: TObject);
var  
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
  if  query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('炵苀羶衄假蚾Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   query1.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
              eclApp.Cells.item[1,i+1].font.size:='8';
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to   query1.FieldCount-1   do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
              eclApp.Cells.item[j,i+1].font.size:='8';
            end;
          query1.Next;
          inc(j);
          end;
     eclapp.columns.autofit;
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TOrderCheck.NN1Click(Sender: TObject);
begin
OrderCheck_Det :=TOrderCheck_Det.create(self);
OrderCheck_Det.show;
OrderCheck_Det.edit1.Text:=inttostr(w);
OrderCheck_Det.button1.Click;
end;

procedure TOrderCheck.NN2Click(Sender: TObject);
  var   ExpClass:TDBGridEhExportClass;
          Ext:String;
  begin
          SaveDialog1.FileName   :=   '';
          if   SaveDialog1.Execute   then
          begin
              case   SaveDialog1.FilterIndex   of
                  1:   begin   ExpClass   :=   TDBGridEhExportAsText;   Ext   :=   'txt';   end;
                  2:   begin   ExpClass   :=   TDBGridEhExportAsCSV;   Ext   :=   'csv';   end;
                  3:   begin   ExpClass   :=   TDBGridEhExportAsHTML;   Ext   :=   'htm';   end;
                  4:   begin   ExpClass   :=   TDBGridEhExportAsRTF;   Ext   :=   'rtf';   end;
                  5:   begin   ExpClass   :=   TDBGridEhExportAsXLS;   Ext   :=   'xls';   end;
              else
                  ExpClass   :=   nil;   Ext   :=   '';
              end;
              if   ExpClass   <>   nil   then
              begin
                  if   UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3))   <>
                        UpperCase(Ext)   then
                      SaveDialog1.FileName   :=   SaveDialog1.FileName   +   '.'   +   Ext;
                  SaveDBGridEhToExportFile(ExpClass,dbgrid1,
                            SaveDialog1.FileName,true);
              end;
          end;
end;

procedure TOrderCheck.FormDestroy(Sender: TObject);
begin
OrderCheck:=nil;
end;

procedure TOrderCheck.FormCreate(Sender: TObject);
var i:integer;
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    for i:=1 to recordcount do
      begin
        CBX4.Items.Add(fieldbyname('GSDH').asstring);
        next;
      end;
    CBX4.Text:=main.edit2.Text;
    active:=false;
  end;

DTP1.Date:=startofthemonth(date)+5;
DTP2.date:=endofthemonth(date)+5;

end;

procedure TOrderCheck.Query1AfterOpen(DataSet: TDataSet);
var i:integer;
begin
case CBX3.ItemIndex of
  0:
    begin
      with DBGrid1 do
        begin
          columns[0].Width:=80;
          columns[0].title.caption:='訂單編號|'+query1.Fields[0].fieldname;
          columns[1].Width:=140;
          columns[1].title.caption:='SKU#|'+query1.Fields[1].fieldname;
          columns[2].Width:=180; 
          columns[2].title.caption:='鞋型名稱|'+query1.Fields[2].fieldname;
          columns[3].Width:=100; 
          columns[3].title.caption:='刀模號|'+query1.Fields[3].fieldname;
          columns[4].Width:=100; 
          columns[4].title.caption:='客戶簡稱|'+query1.Fields[4].fieldname;
          Columns[4].Footer.ValueType := fvtcount;
          columns[5].Width:=60;
          columns[5].title.caption:='訂單雙數|'+query1.Fields[5].fieldname;
          Columns[5].Footer.ValueType := fvtSum;
          columns[6].Width:=50; 
          columns[6].color:=$00C8FFC8  ;
          Columns[6].Footer.ValueType := fvtSum;
          columns[6].title.caption:='Cutting(裁斷)|'+query1.Fields[6].fieldname;
          columns[7].Width:=50;
          columns[7].color:=$00C8FFC8  ;
          Columns[7].Footer.ValueType := fvtSum;
          columns[7].title.caption:='Cutting(裁斷)|'+query1.Fields[7].fieldname;
          columns[8].Width:=50;
          Columns[8].Footer.ValueType := fvtSum;
          columns[8].title.caption:='Stitching(針車)|'+query1.Fields[8].fieldname;
          columns[9].Width:=50;
          Columns[9].Footer.ValueType := fvtSum;
          columns[9].title.caption:='Stitching(針車)|'+query1.Fields[9].fieldname;
          columns[10].Width:=50;
          columns[10].color:=$00C8FFC8  ;
          Columns[10].Footer.ValueType := fvtSum;
          columns[10].title.caption:='CCS(大車)|'+query1.Fields[10].fieldname;
          columns[11].Width:=50;
          columns[11].color:=$00C8FFC8  ;
          Columns[11].Footer.ValueType := fvtSum;
          columns[11].title.caption:='CCS(大車)|'+query1.Fields[11].fieldname;
          columns[12].Width:=50;
          Columns[12].Footer.ValueType := fvtSum;
          columns[12].title.caption:='Outsole(大底)|'+query1.Fields[12].fieldname;
          columns[13].Width:=50;
          Columns[13].Footer.ValueType := fvtSum;
          columns[13].title.caption:='Outsole(大底)|'+query1.Fields[13].fieldname;
          columns[14].Width:=50;
          columns[14].color:=$00C8FFC8  ;
          Columns[14].Footer.ValueType := fvtSum;
          columns[14].title.caption:='Insocker(鞋墊)|'+query1.Fields[14].fieldname;
          columns[15].Width:=50;   
          columns[15].color:=$00C8FFC8  ;
          Columns[15].Footer.ValueType := fvtSum;
          columns[15].title.caption:='Insocker(鞋墊)|'+query1.Fields[15].fieldname;
          columns[16].Width:=50;
          Columns[16].Footer.ValueType := fvtSum;
          columns[16].title.caption:='Assemble(成型)|'+query1.Fields[16].fieldname;
          columns[17].Width:=50;
          Columns[17].Footer.ValueType := fvtSum;
          columns[17].title.caption:='Assemble(成型)|'+query1.Fields[17].fieldname;
          columns[18].Width:=60; 
          columns[18].color:=$00C8FFC8  ;
          columns[18].title.caption:='成型配套|'+query1.Fields[18].fieldname;
          Columns[18].Footer.ValueType := fvtSum;
          for i:=0 to query1.fieldcount-1 do
            begin
              columns[i].Title.TitleButton:=true;
            end;
        end;
    end;
  1:
    begin
      with DBGrid1 do
        begin
          columns[0].Width:=140;
          columns[0].title.caption:='SKU#|'+query1.Fields[0].fieldname;
          columns[1].Width:=180;
          columns[1].title.caption:='鞋型名稱|'+query1.Fields[1].fieldname;
          columns[2].Width:=100; 
          columns[2].title.caption:='刀模號|'+query1.Fields[2].fieldname;
          columns[3].Width:=100; 
          columns[3].title.caption:='客戶簡稱|'+query1.Fields[3].fieldname;
          Columns[3].Footer.ValueType := fvtcount;
          columns[4].Width:=60;
          Columns[4].Footer.ValueType := fvtsum;
          columns[4].title.caption:='總訂單數|'+query1.Fields[4].fieldname;
          columns[5].Width:=50; 
          columns[5].color:=$00C8FFC8  ;
          Columns[5].Footer.ValueType := fvtSum;
          columns[5].title.caption:='Cutting(裁斷)|'+query1.Fields[5].fieldname;
          columns[6].Width:=50; 
          columns[6].color:=$00C8FFC8  ;
          Columns[6].Footer.ValueType := fvtSum;
          columns[6].title.caption:='Cutting(裁斷)|'+query1.Fields[6].fieldname;
          columns[7].Width:=50;
          Columns[7].Footer.ValueType := fvtSum;
          columns[7].title.caption:='Stitching(針車)|'+query1.Fields[7].fieldname;
          columns[8].Width:=50;
          Columns[8].Footer.ValueType := fvtSum;
          columns[8].title.caption:='Stitching(針車)|'+query1.Fields[8].fieldname;
          columns[9].Width:=50; 
          columns[9].color:=$00C8FFC8  ;
          Columns[9].Footer.ValueType := fvtSum;
          columns[9].title.caption:='CCS(大車)|'+query1.Fields[9].fieldname;
          columns[10].Width:=50; 
          columns[10].color:=$00C8FFC8  ;
          Columns[10].Footer.ValueType := fvtSum;
          columns[10].title.caption:='CCS(大車)|'+query1.Fields[10].fieldname;
          columns[11].Width:=50;
          Columns[11].Footer.ValueType := fvtSum;
          columns[11].title.caption:='Outsole(大底)|'+query1.Fields[11].fieldname;
          columns[12].Width:=50;
          Columns[12].Footer.ValueType := fvtSum;
          columns[12].title.caption:='Outsole(大底)|'+query1.Fields[12].fieldname;
          columns[13].Width:=50;
          columns[13].color:=$00C8FFC8  ;
          Columns[13].Footer.ValueType := fvtSum;
          columns[13].title.caption:='Insocker(鞋墊)|'+query1.Fields[13].fieldname;
          columns[14].Width:=50;
          columns[14].color:=$00C8FFC8  ;
          Columns[14].Footer.ValueType := fvtSum;
          columns[14].title.caption:='Insocker(鞋墊)|'+query1.Fields[14].fieldname;
          columns[15].Width:=50;
          Columns[15].Footer.ValueType := fvtSum;
          columns[15].title.caption:='Assemble(成型)|'+query1.Fields[15].fieldname;
          columns[16].Width:=50;
          Columns[16].Footer.ValueType := fvtSum;
          columns[16].title.caption:='Assemble(成型)|'+query1.Fields[16].fieldname;
          columns[17].Width:=60;
          columns[17].color:=$00C8FFC8  ;
          Columns[17].Footer.ValueType := fvtSum; 
          columns[17].title.caption:='成型配套|'+query1.Fields[17].fieldname;
          for i:=0 to query1.fieldcount-1 do
            begin
              columns[i].Title.TitleButton:=true;
            end;
        end;
    end;
  2:
    begin
      with DBGrid1 do
        begin
          columns[0].Width:=180;
          columns[0].title.caption:='鞋型名稱|'+query1.Fields[0].fieldname;
          columns[1].Width:=100; 
          columns[1].title.caption:='刀模號|'+query1.Fields[1].fieldname;
          columns[2].Width:=100;  
          Columns[2].Footer.ValueType := fvtCount;  
          columns[2].title.caption:='客戶簡稱|'+query1.Fields[2].fieldname;
          columns[3].Width:=60;
          Columns[3].Footer.ValueType := fvtSum;
          columns[3].title.caption:='訂單合計|'+query1.Fields[3].fieldname;
          columns[4].Width:=50; 
          columns[4].color:=$00C8FFC8  ;
          Columns[4].Footer.ValueType := fvtSum;
          columns[4].title.caption:='Cutting(裁斷)|'+query1.Fields[4].fieldname;
          columns[5].Width:=50;
          columns[5].color:=$00C8FFC8  ;
          Columns[5].Footer.ValueType := fvtSum;
          columns[5].title.caption:='Cutting(裁斷)|'+query1.Fields[5].fieldname;
          columns[6].Width:=50;
          Columns[6].Footer.ValueType := fvtSum;
          columns[6].title.caption:='Stitching(針車)|'+query1.Fields[6].fieldname;
          columns[7].Width:=50;
          Columns[7].Footer.ValueType := fvtSum;
          columns[7].title.caption:='Stitching(針車)|'+query1.Fields[7].fieldname;
          columns[8].Width:=50;
          columns[8].color:=$00C8FFC8  ;
          Columns[8].Footer.ValueType := fvtSum;
          columns[8].title.caption:='CCS(大車)|'+query1.Fields[8].fieldname;
          columns[9].Width:=50; 
          columns[9].color:=$00C8FFC8  ;
          Columns[9].Footer.ValueType := fvtSum;
          columns[9].title.caption:='CCS(大車)|'+query1.Fields[9].fieldname;
          columns[10].Width:=50;
          Columns[10].Footer.ValueType := fvtSum;
          columns[10].title.caption:='Outsole(大底)|'+query1.Fields[10].fieldname;
          columns[11].Width:=50;
          Columns[11].Footer.ValueType := fvtSum;
          columns[11].title.caption:='Outsole(大底)|'+query1.Fields[11].fieldname;
          columns[12].Width:=50; 
          columns[12].color:=$00C8FFC8  ;
          Columns[12].Footer.ValueType := fvtSum;
          columns[12].title.caption:='Insocker(鞋墊)|'+query1.Fields[12].fieldname;
          columns[13].Width:=50; 
          columns[13].color:=$00C8FFC8  ;
          Columns[13].Footer.ValueType := fvtSum;
          columns[13].title.caption:='Insocker(鞋墊)|'+query1.Fields[13].fieldname;
          columns[14].Width:=50;
          Columns[14].Footer.ValueType := fvtSum;
          columns[14].title.caption:='Assemble(成型)|'+query1.Fields[14].fieldname;
          columns[15].Width:=50;
          Columns[15].Footer.ValueType := fvtSum;
          columns[15].title.caption:='Assemble(成型)|'+query1.Fields[15].fieldname;
          columns[16].Width:=60;
          columns[16].color:=$00C8FFC8  ;
          Columns[16].Footer.ValueType := fvtSum;
          columns[16].title.caption:='成型配套|'+query1.Fields[16].fieldname;
          for i:=0 to query1.fieldcount-1 do
            begin
              columns[i].Title.TitleButton:=true;
            end;
        end;
    end;
  3:
    begin
      with DBGrid1 do
        begin
          columns[0].Width:=100;
          Columns[0].Footer.ValueType := fvtCount;
          columns[0].title.caption:='客戶簡稱|'+query1.Fields[0].fieldname;
          columns[1].Width:=60;
          Columns[1].Footer.ValueType := fvtsum;
          columns[1].title.caption:='訂單合計|'+query1.Fields[1].fieldname;
          columns[2].Width:=50;
          columns[2].color:=$00C8FFC8  ;
          Columns[2].Footer.ValueType := fvtSum;
          columns[2].title.caption:='Cutting(裁斷)|'+query1.Fields[2].fieldname;
          columns[3].Width:=50;  
          columns[3].color:=$00C8FFC8  ;
          Columns[3].Footer.ValueType := fvtSum;
          columns[3].title.caption:='Cutting(裁斷)|'+query1.Fields[3].fieldname;
          columns[4].Width:=50;
          Columns[4].Footer.ValueType := fvtSum;
          columns[4].title.caption:='Stitching(針車)|'+query1.Fields[4].fieldname;
          columns[5].Width:=50;
          Columns[5].Footer.ValueType := fvtSum;
          columns[5].title.caption:='Stitching(針車)|'+query1.Fields[5].fieldname;
          columns[6].Width:=50;
          columns[6].color:=$00C8FFC8  ;
          Columns[6].Footer.ValueType := fvtSum;
          columns[6].title.caption:='CCS(大車)|'+query1.Fields[6].fieldname;
          columns[7].Width:=50;  
          columns[7].color:=$00C8FFC8  ;
          Columns[7].Footer.ValueType := fvtSum;
          columns[7].title.caption:='CCS(大車)|'+query1.Fields[7].fieldname;
          columns[8].Width:=50;
          Columns[8].Footer.ValueType := fvtSum;
          columns[8].title.caption:='Outsole(大底)|'+query1.Fields[8].fieldname;
          columns[9].Width:=50;
          Columns[9].Footer.ValueType := fvtSum;
          columns[9].title.caption:='Outsole(大底)|'+query1.Fields[9].fieldname;
          columns[10].Width:=50; 
          columns[10].color:=$00C8FFC8  ;
          Columns[10].Footer.ValueType := fvtSum;
          columns[10].title.caption:='Insocker(鞋墊)|'+query1.Fields[10].fieldname;
          columns[11].Width:=50;
          columns[11].color:=$00C8FFC8  ;
          Columns[11].Footer.ValueType := fvtSum;
          columns[11].title.caption:='Insocker(鞋墊)|'+query1.Fields[11].fieldname;
          columns[12].Width:=50;
          Columns[12].Footer.ValueType := fvtSum;
          columns[12].title.caption:='Assemble(成型)|'+query1.Fields[12].fieldname;
          columns[13].Width:=50;
          Columns[13].Footer.ValueType := fvtSum;
          columns[13].title.caption:='Assemble(成型)|'+query1.Fields[13].fieldname;
          columns[14].Width:=60;
          columns[14].color:=$00C8FFC8  ;
          Columns[14].Footer.ValueType := fvtSum;  
          columns[14].title.caption:='成型配套|'+query1.Fields[14].fieldname;
          for i:=0 to query1.fieldcount-1 do
            begin
              columns[i].Title.TitleButton:=true;
            end;
        end;
    end;
  4:
    begin
      with DBGrid1 do
        begin
          columns[0].Width:=80;
          columns[0].title.caption:='要求出貨日|'+query1.Fields[0].fieldname;
          columns[1].Width:=100;
          Columns[1].Footer.ValueType := fvtCount;
          columns[1].title.caption:='客戶簡稱|'+query1.Fields[1].fieldname;
          columns[2].Width:=60;
          Columns[2].Footer.ValueType := fvtsum; 
          columns[2].title.caption:='訂單合計|'+query1.Fields[2].fieldname;
          columns[3].Width:=50;
          Columns[3].Footer.ValueType := fvtSum;
          columns[3].color:=$00C8FFC8  ;
          columns[3].title.caption:='Cutting(裁斷)|'+query1.Fields[3].fieldname;
          columns[4].Width:=50;
          columns[4].color:=$00C8FFC8  ;
          Columns[4].Footer.ValueType := fvtSum;
          columns[4].title.caption:='Cutting(裁斷)|'+query1.Fields[4].fieldname;
          columns[5].Width:=50;
          Columns[5].Footer.ValueType := fvtSum;
          columns[5].title.caption:='Stitching(針車)|'+query1.Fields[5].fieldname;
          columns[6].Width:=50;
          Columns[6].Footer.ValueType := fvtSum;
          columns[6].title.caption:='Stitching(針車)|'+query1.Fields[6].fieldname;
          columns[7].Width:=50;  
          columns[7].color:=$00C8FFC8  ;
          Columns[7].Footer.ValueType := fvtSum;
          columns[7].title.caption:='CCS(大車)|'+query1.Fields[7].fieldname;
          columns[8].Width:=50;
          Columns[8].Footer.ValueType := fvtSum;
          columns[8].title.caption:='CCS(大車)|'+query1.Fields[8].fieldname;
          columns[9].Width:=50; 
          columns[9].color:=$00C8FFC8  ;
          Columns[9].Footer.ValueType := fvtSum;
          columns[9].title.caption:='Outsole(大底)|'+query1.Fields[9].fieldname;
          columns[10].Width:=50;
          Columns[10].Footer.ValueType := fvtSum;
          columns[10].title.caption:='Outsole(大底)|'+query1.Fields[10].fieldname;
          columns[11].Width:=50; 
          columns[11].color:=$00C8FFC8  ;
          Columns[11].Footer.ValueType := fvtSum;
          columns[11].title.caption:='Insocker(鞋墊)|'+query1.Fields[11].fieldname;
          columns[12].Width:=50;  
          columns[12].color:=$00C8FFC8  ;
          Columns[12].Footer.ValueType := fvtSum;
          columns[12].title.caption:='Insocker(鞋墊)|'+query1.Fields[12].fieldname;
          columns[13].Width:=50;
          Columns[13].Footer.ValueType := fvtSum;
          columns[13].title.caption:='Assemble(成型)|'+query1.Fields[13].fieldname;
          columns[14].Width:=50;
          Columns[14].Footer.ValueType := fvtSum;
          columns[14].title.caption:='Assemble(成型)|'+query1.Fields[14].fieldname;
          columns[15].Width:=60;  
          columns[15].color:=$00C8FFC8  ;
          Columns[15].Footer.ValueType := fvtSum;
          columns[15].title.caption:='成型配套|'+query1.Fields[15].fieldname;
          for i:=0 to query1.fieldcount-1 do
            begin
              columns[i].Title.TitleButton:=true;
            end;
        end;
    end;
  5:
    begin
      with DBGrid1 do
        begin
          columns[0].Width:=80;
          columns[0].title.caption:='上船日期|'+query1.Fields[0].fieldname;
          columns[1].Width:=100;
          Columns[1].Footer.ValueType := fvtCount; 
          columns[1].title.caption:='客戶簡稱|'+query1.Fields[1].fieldname;
          columns[2].Width:=60;
          Columns[2].Footer.ValueType := fvtsum;
          columns[2].title.caption:='訂單合計|'+query1.Fields[2].fieldname;
          columns[3].Width:=50; 
          columns[3].color:=$00C8FFC8  ;
          Columns[3].Footer.ValueType := fvtSum;
          columns[3].title.caption:='Cutting(裁斷)|'+query1.Fields[3].fieldname;
          columns[4].Width:=50;
          columns[4].color:=$00C8FFC8  ;
          Columns[4].Footer.ValueType := fvtSum;
          columns[4].title.caption:='Cutting(裁斷)|'+query1.Fields[4].fieldname;
          columns[5].Width:=50;
          Columns[5].Footer.ValueType := fvtSum;
          columns[5].title.caption:='Stitching(針車)|'+query1.Fields[5].fieldname;
          columns[6].Width:=50;
          Columns[6].Footer.ValueType := fvtSum;
          columns[6].title.caption:='Stitching(針車)|'+query1.Fields[6].fieldname;
          columns[7].Width:=50; 
          columns[7].color:=$00C8FFC8  ;
          Columns[7].Footer.ValueType := fvtSum;
          columns[7].title.caption:='CCS(大車)|'+query1.Fields[7].fieldname;
          columns[8].Width:=50; 
          columns[8].color:=$00C8FFC8  ;
          Columns[8].Footer.ValueType := fvtSum;
          columns[8].title.caption:='CCS(大車)|'+query1.Fields[8].fieldname;
          columns[9].Width:=50;
          Columns[9].Footer.ValueType := fvtSum;
          columns[9].title.caption:='Outsole(大底)|'+query1.Fields[9].fieldname;
          columns[10].Width:=50;
          Columns[10].Footer.ValueType := fvtSum;
          columns[10].title.caption:='Outsole(大底)|'+query1.Fields[10].fieldname;
          columns[11].Width:=50;
          columns[11].color:=$00C8FFC8  ;
          Columns[11].Footer.ValueType := fvtSum;
          columns[11].title.caption:='Insocker(鞋墊)|'+query1.Fields[11].fieldname;
          columns[12].Width:=50; 
          columns[12].color:=$00C8FFC8  ;
          Columns[12].Footer.ValueType := fvtSum;
          columns[12].title.caption:='Insocker(鞋墊)|'+query1.Fields[12].fieldname;
          columns[13].Width:=50;
          Columns[13].Footer.ValueType := fvtSum;
          columns[13].title.caption:='Assemble(成型)|'+query1.Fields[13].fieldname;
          columns[14].Width:=50;
          Columns[14].Footer.ValueType := fvtSum;
          columns[14].title.caption:='Assemble(成型)|'+query1.Fields[14].fieldname;
          columns[15].Width:=60; 
          columns[15].color:=$00C8FFC8  ;
          Columns[15].Footer.ValueType := fvtSum;  
          columns[15].title.caption:='成型配套|'+query1.Fields[15].fieldname;
          for i:=0 to query1.fieldcount-1 do
            begin
              columns[i].Title.TitleButton:=true;
            end;
        end;
    end;
end;


end;

procedure TOrderCheck.N1Click(Sender: TObject);
begin

panel2.Visible:=false;
panel3.Visible:=true;
end;

procedure TOrderCheck.N2Click(Sender: TObject);
begin

panel3.Visible:=false;
panel2.Visible:=true;
end;

procedure TOrderCheck.Panel3DblClick(Sender: TObject);
begin

panel3.Visible:=false;
panel2.Visible:=true;
end;

procedure TOrderCheck.Panel2DblClick(Sender: TObject);
begin

panel2.Visible:=false;
panel3.Visible:=true;
end;

procedure TOrderCheck.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if query1.FieldByName('Pairs').value=query1.FieldByName('A_Qty').value then
  dbgrid1.Canvas.Font.Color:=clblue;

if ((query1.FieldByName('Pairs').value<>query1.FieldByName('A_Qty').value) and (not query1.FieldByName('C_Qty').isnull)) then
  dbgrid1.Canvas.Font.Color:=clred;


end;

procedure TOrderCheck.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
 {
if (gdSelected in State) then
begin
    DBGrid1.Canvas.Font.Color   :=clBlack;
    DBGrid1.Canvas.Brush.Color   :=$00669988;
    DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
end;
   
if (gdselected in state) then
  begin
    DBGrid1.canvas.Font.Style:=[fsbold] ;
    DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end; }
end;

procedure TOrderCheck.PrintDBGridEh1BeforePrint(Sender: TObject);
begin

case CBX3.ItemIndex of
  0:
    PrintDBGridEh1.SetSubstitutes(['%[TName]','所有訂單完成狀況明細表']);  
  1:
    PrintDBGridEh1.SetSubstitutes(['%[TName]','按配色加總完成狀況明細表']);
  2:
    PrintDBGridEh1.SetSubstitutes(['%[TName]','按型體加總完成狀況明細表']); 
  3:
    PrintDBGridEh1.SetSubstitutes(['%[TName]','按客戶加總完成狀況明細表']);
  4:
    PrintDBGridEh1.SetSubstitutes(['%[TName]','按CSD加總完成狀況明細表']);
  5:
    PrintDBGridEh1.SetSubstitutes(['%[TName]','按ETD加總完成狀況明細表']);
end;
end;

procedure TOrderCheck.Print1Click(Sender: TObject);
begin

PrintDBGrideh1.Preview;
end;

end.

