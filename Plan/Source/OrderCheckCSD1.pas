unit OrderCheckCSD1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PrnDbgeh, Menus, DB, DBTables, GridsEh, DBGridEh, StdCtrls,
  ExtCtrls, ComCtrls,dateutils,DBGridehImpExp;

type
  TOrderCheckCSD = class(TForm)
    Label8: TLabel;
    Panel1: TPanel;
    Label3: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label4: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Panel2: TPanel;
    Label11: TLabel;
    Label1: TLabel;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Panel3: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    RadG1: TRadioGroup;
    Edit2: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Edit1: TEdit;
    CBX4: TComboBox;
    Edit8: TEdit;
    CheckBox1: TCheckBox;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    Query1KFJC: TStringField;
    Query1CSD: TDateTimeField;
    Query1Pairs: TIntegerField;
    Query1C_Qty: TFloatField;
    Query1Lack_C: TFloatField;
    Query1S_Qty: TFloatField;
    Query1Lack_S: TFloatField;
    Query1W_Qty: TFloatField;
    Query1Lack_W: TFloatField;
    Query1O_Qty: TFloatField;
    Query1Lack_O: TFloatField;
    Query1Z_Qty: TFloatField;
    Query1Lack_Z: TFloatField;
    Query1A_Qty: TFloatField;
    Query1Lack_A: TFloatField;
    Query1F_Qty: TFloatField;
    Query1Lack_F: TFloatField;
    Query1F_Date: TDateTimeField;
    Query1A_Set: TFloatField;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    NN1: TMenuItem;
    NN2: TMenuItem;
    Print1: TMenuItem;
    QTemp: TQuery;
    SaveDialog1: TSaveDialog;
    PopupMenu2: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    PrintDBGridEh1: TPrintDBGridEh;
    Label21: TLabel;
    Label10: TLabel;
    Label22: TLabel;
    DDLBCb: TComboBox;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Panel3DblClick(Sender: TObject);
    procedure Panel2DblClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure NN2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure NN1Click(Sender: TObject);
    procedure PrintDBGridEh1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderCheckCSD: TOrderCheckCSD;

implementation

uses main1, OrderCheckCSD_Det1;

{$R *.dfm}

procedure TOrderCheckCSD.FormDestroy(Sender: TObject);
begin
OrderCheckCSD:=nil;
end;

procedure TOrderCheckCSD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

with QTemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#SCBBSCSD'+''''+') is not null  ');
    sql.add('begin   drop table #SCBBSCSD end   ');
    execsql;
  end;
action:=cafree;
end;

procedure TOrderCheckCSD.FormCreate(Sender: TObject);
var i:integer;
NDate:TDate;
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
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    DTP1.Date:=startofthemonth(NDate)+5;
    DTP2.date:=endofthemonth(NDate)+5;
    active:=false;
  end;

end;

procedure TOrderCheckCSD.Panel3DblClick(Sender: TObject);
begin

panel3.Visible:=false;
panel2.Visible:=true;
end;

procedure TOrderCheckCSD.Panel2DblClick(Sender: TObject);
begin

panel2.Visible:=false;
panel3.Visible:=true;
end;

procedure TOrderCheckCSD.N2Click(Sender: TObject);
begin

panel3.Visible:=false;
panel2.Visible:=true;
end;

procedure TOrderCheckCSD.N1Click(Sender: TObject);
begin

panel2.Visible:=false;
panel3.Visible:=true;
end;

procedure TOrderCheckCSD.Print1Click(Sender: TObject);
begin

PrintDBGrideh1.Preview;
end;

procedure TOrderCheckCSD.NN2Click(Sender: TObject);
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

procedure TOrderCheckCSD.Button1Click(Sender: TObject);
var i:integer;
begin
with QTemp do
  begin
    active:=false;
    sql.Clear;
    //各部門生產報表
    sql.add('  if object_id('+''''+'tempdb..#SCBBSCSD'+''''+') is not null  ');
    sql.add('begin   drop table #SCBBSCSD end   ');
    sql.add('select DDZL.XieXing,DDZl.SheHao,DDZL.DDBH,SCBBSS.XXCC,sum(isnull(SCBBSS.Qty,0)) as Qty,SCGXDY.GX ,max(SCDate) as FinDate');
    sql.add('into #SCBBSCSD from SCBBSS ');
    sql.add('left join SCBB on SCBB.ProNo=SCBBSS.ProNo ');
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
          sql.add('        and convert(smalldatetime,convert(varchar,DDZL.ShipDate)) between ');
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
          sql.add('         and isnull(SCZLDate.GSBH,'+''''+''+''''+')='+''''+CBX4.text+'''');
        end;
    if edit8.text<>'' then
      begin
        sql.add('      and SCZLDate.Assemble like '+''''+edit8.Text+'%'+'''');
      end;
    if checkbox1.Checked then
      begin
        sql.add('      and DDZL.YN<>'+''''+'5'+'''');
      end;
    sql.add('group by  DDZL.XieXing,DDZl.SheHao,DDZL.DDBH,SCBBSS.XXCC,SCGXDY.GX ');
    execsql;
    //插入成品倉掃描的數據
    active:=false;
    sql.clear;
    sql.add('insert #SCBBSCSD ');
    sql.add('select DDZL.XieXing,DDZl.SheHao,DDZL.DDBH,isnull(YWDDS.XXCC,'+''''+''+''''+') as XXCC,sum(isnull(YWBZPOS.Qty,0)) as Qty,'+''''+'F'+''''+' as GX,max(YWCP.InDate) as FinDate ');
    sql.add('from YWCP ');
    sql.add('left join YWBZPOS on YWCP.DDBH=YWBZPOS.DDBH and YWCP.XH=YWBZPOS.XH ');
    sql.add('left join YWDDS on YWDDS.DDBH=YWBZPOS.DDBH and YWDDS.DDCC=YWBZPOS.DDCC ');
    sql.add('left join YWDD on YWDD.DDBH=YWCP.DDBH ');
    sql.add('left join DDZL on DDZL.ZLBH=YWDD.YSBH');
    sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZl.SheHao=XXZL.SheHao ');
    sql.add('left join KFZL on KFZl.KFDH=DDZL.KHBH ');
    sql.add('left join SCZLDate on SCZLDate.ZLBH=YWDD.YSBH ');
    sql.add('where  YWCP.InDate is not null ');
    sql.add('       and KFZL.KFJC like '+''''+'%'+edit1.Text+'%'+'''');
    if panel2.Visible then
      begin
        sql.add('      and SCZLDate.SCYEAR='+''''+CBX2.Text+'''');
        sql.add('      and SCZLDate.SCMONTH='+''''+CBX1.text+'''');
      end
      else
        begin
          sql.add('        and convert(smalldatetime,convert(varchar,DDZL.ShipDate)) between ');
          sql.add('            '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
        end;
    sql.add('      and YWDD.YSBH like '+''''+edit2.text+'%'+'''');
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
    if checkbox1.Checked then
      begin
        sql.add('      and DDZL.YN<>'+''''+'5'+'''');
      end;
    sql.add('group by DDZL.XieXing,DDZl.SheHao,DDZL.DDBH,YWDDS.XXCC');
    execsql;
    
    //插入訂單本身的數據
    active:=false;
    sql.clear;
    sql.add('insert #SCBBSCSD ');
    sql.add('select DDZL.XieXing,DDZl.SheHao,DDZL.DDBH,ZLZLS.XXCC,ZLZLS.Qty,'+''''+'L'+''''+' as GX,ZLZLS.USERDate as FinDate ');
    sql.add('from ZLZLS ');
    sql.add('left join DDZL on DDZL.ZLBH=ZLZLS.ZLBH');
    sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZl.SheHao=XXZL.SheHao ');
    sql.add('left join KFZL on KFZl.KFDH=DDZL.KHBH ');
    sql.add('left join SCZLDate on SCZLDate.ZLBH=ZLZLS.ZLBH ');
    sql.add('where  KFZL.KFJC like '+''''+'%'+edit1.Text+'%'+'''');
    if panel2.Visible then
      begin
        sql.add('      and SCZLDate.SCYEAR='+''''+CBX2.Text+'''');
        sql.add('      and SCZLDate.SCMONTH='+''''+CBX1.text+'''');
      end
      else
        begin
          sql.add('        and convert(smalldatetime,convert(varchar,DDZL.ShipDate)) between ');
          sql.add('            '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
        end;
    sql.add('      and ZLZLS.ZLBH like '+''''+edit2.text+'%'+'''');
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
    if checkbox1.Checked then
      begin
        sql.add('      and DDZL.YN<>'+''''+'5'+'''');
      end;
    //sql.add('group by DDZL.XieXing,DDZl.SheHao,YWDD.YSBH,YWDDS.XXCC');
    execsql;
  end;


with query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select KFJC,CSD,sum(Pairs) as Pairs,sum(C_Qty) as C_Qty,sum(Lack_C) as Lack_C');
    sql.add('       ,sum(S_Qty) as S_Qty,sum(Lack_S) as Lack_S ,sum(W_Qty) as W_Qty,sum(Lack_W) as Lack_W');
    sql.add('       ,sum(O_Qty) as O_Qty,sum(Lack_O) as Lack_O,sum(Z_Qty) as Z_Qty,sum(Lack_Z) as Lack_Z');
    sql.add('       ,sum(A_Qty) as A_Qty,sum(Lack_A) as Lack_A,sum(F_Qty) as F_Qty,sum(Lack_F) as Lack_F');
    sql.add('       ,sum(A_Set) as A_Set,max(F_Date) as F_Date');
    sql.add('from ');
    sql.add('(select DDZL.DDBH,DDZL.XieXing,DDZL.SheHao,XXZL.Article,XXZL.XieMing,XXZL.DaoMH ,KFZL.KFJC,DDZl.Pairs,DDZL.Shipdate as CSD,');
    sql.add('       SCBBC.C_Qty,DDZL.Pairs-isnull(SCBBC.C_Qty,0) as Lack_C,SCBBS.S_Qty,DDZL.Pairs-isnull(SCBBS.S_Qty,0) as Lack_S,');
    sql.add('       SCBBW.W_Qty,DDZL.Pairs-isnull(SCBBW.W_Qty,0) as Lack_W,SCBBO.O_Qty,DDZL.Pairs-isnull(SCBBO.O_Qty,0) as Lack_O,');
    sql.add('       SCBBZ.Z_Qty,DDZL.Pairs-isnull(SCBBZ.Z_Qty,0) as Lack_Z,SCBBA.A_Qty,DDZL.Pairs-isnull(SCBBA.A_Qty,0) as Lack_A,');
    sql.add('       SCBBF.F_Qty,DDZL.Pairs-isnull(SCBBF.F_Qty,0) as Lack_F,');
    sql.add('       case when DDZL.Pairs<=isnull(SCBBF.F_Qty,0) then 0 else (case when isnull(SCBBS.S_Qty,0)>isnull(SCBBA.A_Qty,0) ');
    sql.add('                                              then isnull(SCBBS.S_Qty,0)-isnull(SCBBA.A_Qty,0) else 0 end) end as A_Set');
    //sql.add('       ,case when DDZL.Pairs<=isnull(SCBBC.C_Qty,0) then SCBBC.FinDate  end as C_Date  ');
    //sql.add('       ,case when DDZL.Pairs<=isnull(SCBBS.S_Qty,0) then SCBBS.FinDate  end as S_Date  ');
    //sql.add('       ,case when DDZL.Pairs<=isnull(SCBBA.A_Qty,0) then SCBBA.FinDate  end as A_Date  ');
    sql.add('       ,SCBBF.FinDate as F_Date  ');
    sql.add('from DDZL ');
    sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZl.SheHao=XXZL.SheHao ');
    sql.add('left join KFZL on KFZl.KFDH=DDZL.KHBH ');
    sql.add('left join SCZLDate on SCZLDate.ZLBH=DDZL.ZLBH ');
    sql.add('left join (select #SCBBSCSD.DDBH,sum(#SCBBSCSD.Qty) as C_Qty,max(#SCBBSCSD.FinDate) as FinDate ');
    sql.add('           from #SCBBSCSD ');
    sql.add('           where #SCBBSCSD.GX='+''''+'C'+'''');
    sql.add('           group by #SCBBSCSD.DDBH) SCBBC on SCBBC.DDBH=DDZL.ZLBH ');
    sql.add('left join (select #SCBBSCSD.DDBH,sum(#SCBBSCSD.Qty) as S_Qty,max(#SCBBSCSD.FinDate) as FinDate ');
    sql.add('           from #SCBBSCSD ');
    sql.add('           where #SCBBSCSD.GX='+''''+'S'+'''');
    sql.add('           group by #SCBBSCSD.DDBH) SCBBS on SCBBS.DDBH=DDZL.ZLBH ');
    sql.add('left join (select #SCBBSCSD.DDBH,sum(#SCBBSCSD.Qty) as W_Qty ,max(#SCBBSCSD.FinDate) as FinDate');
    sql.add('           from #SCBBSCSD ');
    sql.add('           where #SCBBSCSD.GX='+''''+'W'+'''');
    sql.add('           group by #SCBBSCSD.DDBH) SCBBW on SCBBW.DDBH=DDZL.ZLBH ');
    sql.add('left join (select #SCBBSCSD.DDBH,sum(#SCBBSCSD.Qty) as O_Qty ,max(#SCBBSCSD.FinDate) as FinDate');
    sql.add('           from #SCBBSCSD ');
    sql.add('           where #SCBBSCSD.GX='+''''+'O'+'''');
    sql.add('           group by #SCBBSCSD.DDBH) SCBBO on SCBBO.DDBH=DDZL.ZLBH ');
    sql.add('left join (select #SCBBSCSD.DDBH,sum(#SCBBSCSD.Qty) as Z_Qty ,max(#SCBBSCSD.FinDate) as FinDate');
    sql.add('           from #SCBBSCSD ');
    sql.add('           where #SCBBSCSD.GX='+''''+'Z'+'''');
    sql.add('           group by #SCBBSCSD.DDBH) SCBBZ on SCBBZ.DDBH=DDZL.ZLBH ');
    sql.add('left join (select #SCBBSCSD.DDBH,sum(#SCBBSCSD.Qty) as A_Qty ,max(#SCBBSCSD.FinDate) as FinDate');
    sql.add('           from #SCBBSCSD ');
    sql.add('           where #SCBBSCSD.GX='+''''+'A'+'''');
    sql.add('           group by #SCBBSCSD.DDBH) SCBBA on SCBBA.DDBH=DDZL.ZLBH ');
    sql.add('left join (select #SCBBSCSD.DDBH,sum(#SCBBSCSD.Qty) as F_Qty ,max(#SCBBSCSD.FinDate) as FinDate');
    sql.add('           from #SCBBSCSD ');
    sql.add('           where #SCBBSCSD.GX='+''''+'F'+'''');    
    sql.add('           group by #SCBBSCSD.DDBH) SCBBF on SCBBF.DDBH=DDZL.ZLBH ');

    sql.add('where isnull(KFZL.KFJC,'+''''+''+''''+') like '+''''+'%'+edit1.Text+'%'+'''');
    if panel2.Visible then
      begin
        sql.add('      and SCZLDate.SCYEAR='+''''+CBX2.Text+'''');
        sql.add('      and SCZLDate.SCMONTH='+''''+CBX1.text+'''');
      end
      else
        begin
          sql.add('        and convert(smalldatetime,convert(varchar,DDZL.Shipdate)) between ');
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
    if checkbox1.Checked then
      begin
        sql.add('      and DDZL.YN<>'+''''+'5'+'''');
      end;
    if DDLBCb.Text<>'' then
      begin
        sql.add('      and DDZL.DDZT'+DDLBCb.Text);
      end;
    sql.add('      and DDZL.DDLB=''N'' ');         
    sql.add(') DDZL ');
    sql.add('group by KFJC,CSD ');
    sql.add('order by KFJC,CSD');
    active:=true;
  end;

end;

procedure TOrderCheckCSD.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if query1.FieldByName('Pairs').value<=query1.FieldByName('F_Qty').value then
  dbgrid1.Canvas.Font.Color:=clblue;

if ((query1.FieldByName('Pairs').value>query1.FieldByName('F_Qty').value)
                and ((not query1.FieldByName('C_Qty').isnull)
                or (not query1.FieldByName('F_Qty').isnull)) )then
  dbgrid1.Canvas.Font.Color:=clred;
end;

procedure TOrderCheckCSD.NN1Click(Sender: TObject);
begin

OrderCheckCSD_Det:=TOrderCheckCSD_Det.create(self);
OrderCheckCSD_Det.show;
end;

procedure TOrderCheckCSD.PrintDBGridEh1BeforePrint(Sender: TObject);
begin

if panel2.Visible then
  PrintDBGridEh1.SetSubstitutes(['%[TDate]',CBX1.Text+'/'+CBX2.text])
    else
       PrintDBGridEh1.SetSubstitutes(['%[TDate]',formatdatetime('yyyy/MM/dd',DTP1.Date)+'~~'+formatdatetime('yyyy/MM/dd',DTP2.Date)])

end;

end.
