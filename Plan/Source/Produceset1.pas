unit Produceset1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,OleServer,
  dateUtils,comobj,ehlibBDE, GridsEh, DBGridEh, ComCtrls, PrnDbgeh;

type
  TProduceset = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit2: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Button2: TButton;
    Edit5: TEdit;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    NN1: TMenuItem;
    NN2: TMenuItem;
    Edit6: TEdit;
    Edit7: TEdit;
    Query1SCBH: TStringField;
    Query1ZLBH: TStringField;
    Query1XieXing: TStringField;
    Query1Shehao: TStringField;
    Query1XieMing: TStringField;
    Query1Qty: TFloatField;
    Query1ShipDate: TDateTimeField;
    Query1Article: TStringField;
    Query1Pairs: TIntegerField;
    Query1KHPO: TStringField;
    Query1CDate: TDateTimeField;
    Query1SDate: TDateTimeField;
    Query1ODate: TDateTimeField;
    Query1ADate: TDateTimeField;
    Query1ETC: TDateTimeField;
    Query1INSP: TDateTimeField;
    Query1EXF: TDateTimeField;
    Query1ETD: TDateTimeField;
    Query1CSD: TDateTimeField;
    Query1S_Fin: TFloatField;
    Query1O_Fin: TFloatField;
    Query1C_Fin: TFloatField;
    Query1A_Fin: TFloatField;
    Query1S_Bal: TFloatField;
    Query1O_Bal: TFloatField;
    Query1C_Bal: TFloatField;
    Query1A_Bal: TFloatField;
    Query1Y_Fin: TFloatField;
    Query1Z_Fin: TFloatField;
    Query1Y_Bal: TFloatField;
    Query1Z_Bal: TFloatField;
    Query1Assemble: TStringField;
    Query1Stitching: TStringField;
    Query1A_Set: TFloatField;
    Query1W_Fin: TFloatField;
    Query1W_Bal: TFloatField;
    Label2: TLabel;
    Edit1: TEdit;
    Query1Country: TStringField;
    Edit8: TEdit;
    Label13: TLabel;
    Panel2: TPanel;
    Label8: TLabel;
    CBX2: TComboBox;
    Label11: TLabel;
    CBX3: TComboBox;
    Panel3: TPanel;
    Label4: TLabel;
    DTP1: TDateTimePicker;
    Label12: TLabel;
    DTP2: TDateTimePicker;
    PopupMenu2: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Label14: TLabel;
    Edit9: TEdit;
    Query1KFJC: TStringField;
    RadG1: TRadioGroup;
    PrintDBGridEh1: TPrintDBGridEh;
    Print1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure NN2Click(Sender: TObject);
    procedure NN1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Panel3DblClick(Sender: TObject);
    procedure Panel2DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Print1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Produceset: TProduceset;
  sdate,edate:Tdate;

implementation

uses Produceset_size1, main1;

{$R *.dfm}

procedure TProduceset.FormClose(Sender: TObject; var Action: TCloseAction);
begin
free;
end;

procedure TProduceset.Button1Click(Sender: TObject);
//var y,m:word;
begin
if (CBX2.text='')or (CBX3.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
{y:=strtoint(CBX2.Text);
m:=strtoint(CBX3.Text); 
if (y>2999) or (y<1900) then
  begin
    showmessage('Pls key in right year');
    abort;
  end;
if (m=0) or (m>12) then
  begin
    showmessage('Pls key in right month');
    abort;
  end;
sdate:=encodedate(y,m,1);
edate:=endofthemonth(sdate);  }


with Query1 do
  begin
    active:=false;
    sql.Clear;   //  耞羬琌,玥埃
    sql.add('if object_id('+''''+'tempdb..#SCBBS'+''''+') is not null  ');
    sql.add('  begin   drop table #SCBBS end   ');
    sql.add('if object_id('+''''+'tempdb..#SCReport'+''''+') is not null  ');
    sql.add('   begin   drop table #SCReport end   '); 
    //sql.add('if object_id('+''''+'tempdb..#SCSET'+''''+') is not null  ');
    //sql.add('   begin   drop table #SCSET end   ');
    sql.add('select SCBBSS.SCBH,SCGXDY.GX,SCBBSS.XXCC,sum(SCBBSS.Qty) as Qty');
    sql.add('into #SCBBS from SCBBSS');
    sql.add('left join SCZL on SCZL.SCBH=SCBBSS.SCBH ');
    sql.add('left join ZLZL on ZLZL.ZLBH=SCZL.ZLBH');
    sql.add('left join SCZLDate on SCZLDate.ZLBH=ZLZL.ZLBH ') ;
    sql.add('left join DDZL on DDZL.ZlBH=ZLZL.ZLBH');
    sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    sql.add('left join SCGXDY on SCGXDY.GXLB=SCBBSS.GXLB ');
    sql.add('left join KFZL on KFZl.KFDH=DDZL.KHBH ');
    sql.add('where SCZL.SCBH like '+''''+edit2.Text+'%'+'''');
    sql.add('      and SCZL.SCBH=SCZL.ZLBH');
    if panel2.Visible then
      begin
        sql.add('      and SCZLDate.SCYEAR='+''''+CBX2.Text+'''');
        sql.add('      and SCZLDate.SCMONTH='+''''+CBX3.text+'''');
      end
      else
        begin
          sql.add('        and convert(smalldatetime,convert(varchar,SCZLDate.CSD)) between ');
          sql.add('        '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
        end;
    sql.add('      and XXZL.Article like '+''''+edit3.Text+'%'+'''');
    sql.add('      and XXZL.XieMing like '+''''+'%'+edit4.text+'%'+'''');
    //sql.add('      and DDZl.GSBH='+''''+main.edit2.text+'''');
    if RadG1.itemindex=0 then
      begin
        sql.add('      and DDZl.GSBH='+''''+main.edit2.text+'''');
      end
      else
        begin
          sql.add('         and SCZLDate.GSBH='+''''+main.edit2.text+'''');
        end;
    sql.add('      and KFZL.KFJC like '+''''+'%'+edit9.Text+'%'+'''');
    if edit8.text<>'' then
      begin
        sql.add('      and SCZLDate.Assemble like '+''''+edit8.Text+'%'+'''');
      end;
    sql.add('group by SCBBSS.SCBH,SCGXDY.GX,SCBBSS.XXCC   ');
    execsql;

    active:=false;
    sql.clear;
    sql.add('select  SCZL.SCBH,ZLZL.ZLBH,DDZL.XieXing,DDZL.Shehao,DDZL.ShipDate,XXZL.XieMing,DDZL.Pairs,');
    sql.add('        XXZL.Article,LBZLS.YWSM as Country,DDZL.KHPO,isnull(SCSET.Qty,0) as Qty ,isnull(SCBBC.C_Qty,0) as C_Fin,');
    sql.add('        isnull(SCBBS.S_Qty,0) as S_Fin,isnull(SCBBO.O_Qty,0) as O_Fin,isnull(SCBBW.W_Qty,0) as W_Fin,');
    sql.add('        isnull(SCBBA.A_Qty,0) as A_Fin,isnull(SCBBY.Y_Qty,0) as Y_Fin,isnull(SCBBZ.Z_Qty,0) as Z_Fin ');
    sql.add('        ,SCZLDate.CDate,SCZLDate.SDate,SCZLDate.ODate,');
    sql.add('        SCZLDate.ADate,SCZLDate.ETC,SCZLDate.INSP,SCZLDate.EXF,SCZLDate.ETD,');
    sql.add('        SCZLDate.CSD,SCZLDate.Assemble,SCZLDate.Stitching,KFZL.KFJC');
    sql.add('into #SCReport from  SCZL ');


    sql.add('left join ZLZL on ZLZL.ZLBH=SCZL.ZLBH');
    sql.add('left join SCZLDate on SCZLDate.ZLBH=ZLZL.ZLBH');
    sql.add('left join DDZL on DDZL.DDBH=ZLZL.DDBH');
    sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    sql.add('left join LBZLS on lbzls.lb='+''''+'06'+''''+' and lbzls.lbdh=DDZL.DDGB');
    sql.add('left join KFZL on KFZl.KFDH=DDZL.KHBH ');

    //更皌甅计秖
    sql.add('left join (select SCBH,sum(Qty)  as Qty  ');
    sql.add('           from (select  SCBH, XXCC,min( Qty) as Qty  ');
    sql.add('                 from #SCBBS ');
    sql.add('                 where (GX='+''''+'O'+''''+' or GX='+''''+'W'+'''');
    sql.add('                        or GX='+''''+'Z'+''''+' or GX='+''''+'S'+''''+')');
    sql.add('                 group by SCBH,XXCC');
    sql.add('                 having count(XXCC)=4 ');
    sql.add('          )SCSET group by SCBH )SCSET on SCSET.SCBH=SCZL.SCBH ');
    //掉耞ネ玻计
    sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as C_Qty ');
    sql.add('           from #SCBBS ');
    sql.add('           where #SCBBS.GX='+''''+'C'+'''');
    sql.add('           group by #SCBBS.SCBH) SCBBC on SCBBC.SCBH=SCZL.SCBH ');
    //皐óネ玻计
    sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as S_Qty ');
    sql.add('           from #SCBBS ');
    sql.add('           where #SCBBS.GX='+''''+'S'+'''');
    sql.add('           group by #SCBBS.SCBH) SCBBS on SCBBS.SCBH=SCZL.SCBH ');
    //óネ玻计
    sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as W_Qty ');
    sql.add('           from #SCBBS ');
    sql.add('           where #SCBBS.GX='+''''+'W'+'''');
    sql.add('           group by #SCBBS.SCBH) SCBBW on SCBBW.SCBH=SCZL.SCBH ');
    //┏ネ玻计
    sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as O_Qty ');
    sql.add('           from #SCBBS ');
    sql.add('           where #SCBBS.GX='+''''+'O'+'''');
    sql.add('           group by #SCBBS.SCBH) SCBBO on SCBBO.SCBH=SCZL.SCBH ');
    //綾乖ネ玻计
    sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as Z_Qty ');
    sql.add('           from #SCBBS ');
    sql.add('           where #SCBBS.GX='+''''+'Z'+'''');
    sql.add('           group by #SCBBS.SCBH) SCBBZ on SCBBZ.SCBH=SCZL.SCBH ');
    //Θネ玻计
    sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as A_Qty ');
    sql.add('           from #SCBBS ');
    sql.add('           where #SCBBS.GX='+''''+'A'+''''); 
    sql.add('           group by #SCBBS.SCBH) SCBBA on SCBBA.SCBH=SCZL.SCBH ');
    //筿赂ネ玻计
    sql.add('left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as Y_Qty ');
    sql.add('           from #SCBBS ');
    sql.add('           where #SCBBS.GX='+''''+'Y'+'''');  
    sql.add('           group by #SCBBS.SCBH) SCBBY on SCBBY.SCBH=SCZL.SCBH ');

    sql.add('where  SCZL.SCBH=SCZL.ZLBH');
    sql.add('       and SCZL.SCBH like '+''''+edit2.Text+'%'+'''');
    if panel2.Visible then
      begin
        sql.add('      and SCZLDate.SCYEAR='+''''+CBX2.Text+'''');
        sql.add('      and SCZLDate.SCMONTH='+''''+CBX3.text+'''');
      end
      else
        begin
          sql.add('        and convert(smalldatetime,convert(varchar,SCZLDate.CSD)) between ');
          sql.add('        '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
        end;
    sql.add('       and XXZL.Article like '+''''+edit3.Text+'%'+'''');
    sql.add('       and XXZL.XieMing like '+''''+'%'+edit4.text+'%'+'''');
    sql.Add('       and SCZL.DDLB<>'+''''+'Part'+'''');
    //sql.add('       and DDZl.GSBH='+''''+main.edit2.text+'''');   
    if RadG1.itemindex=0 then
      begin
        sql.add('      and DDZl.GSBH='+''''+main.edit2.text+'''');
      end
      else
        begin
          sql.add('         and SCZLDate.GSBH='+''''+main.edit2.text+'''');
        end;
    sql.add('       and KFZL.KFJC like '+''''+'%'+edit9.Text+'%'+'''');
    if edit8.text<>'' then
      begin
        sql.add('      and SCZLDate.Assemble like '+''''+edit8.Text+'%'+'''');
      end;
    execsql;

    active:=false;
    sql.clear;
    sql.add('select #SCReport.*,(case when #SCReport.Qty>=A_Fin then #SCReport.Qty-A_Fin else 0 end ) as A_Set,');
    sql.add('       Pairs-C_Fin as C_Bal,Pairs-S_Fin as S_Bal,Pairs-O_Fin as O_Bal,Pairs-W_Fin as W_Bal,');
    sql.add('       Pairs-A_Fin as A_Bal,Pairs-Y_Fin as Y_Bal,Pairs-Z_Fin as Z_Bal');
    sql.add('from #SCReport');
    if edit1.text<>'' then
      begin
        sql.add('where  Pairs-A_Fin<='+''''+edit1.Text+'''');
        sql.add('       and A_Fin<>0');
      end;
    sql.add('order by SCBH');
    active:=true;
  end;

end;

procedure TProduceset.Button2Click(Sender: TObject);
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
      Application.MessageBox('系统没有安装Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   query1.fieldcount-1    do
          begin
              eclApp.Cells(4,i+1):=query1.fields[i].FieldName;
              eclApp.Cells.item[1,i+1].font.size:='8';
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to   query1.fieldcount-1   do
            begin
              eclApp.Cells(j+3,i+1):=query1.Fields[i].Value;
              eclApp.Cells.item[j+3,i+1].font.size:='8';
            end;
          query1.Next;
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

procedure TProduceset.NN2Click(Sender: TObject);
begin
Button2click(nil);
end;

procedure TProduceset.NN1Click(Sender: TObject);
begin
if Query1.Active then
  begin
    Produceset_size:=TProduceset_size.create(self);
    Produceset_size.show;
  end;
end;

procedure TProduceset.FormDestroy(Sender: TObject);
begin
Produceset:=nil;
end;

procedure TProduceset.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
if query1.FieldByName('Pairs').value=query1.FieldByName('A_Fin').value then
  dbgrid1.Canvas.Font.Color:=clblue;

if ((query1.FieldByName('Pairs').value<>query1.FieldByName('A_Fin').value) and (query1.FieldByName('C_Fin').value<>0)) then
  dbgrid1.Canvas.Font.Color:=clred;
end;

procedure TProduceset.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

if  not (Key in ['0'..'9',#8,#13]) then  Key := #0;
if key=#13 then
  button1.SetFocus;
end;

procedure TProduceset.N1Click(Sender: TObject);
begin
panel2.Visible:=false;
panel3.Visible:=true;
end;

procedure TProduceset.N2Click(Sender: TObject);
begin
panel3.Visible:=false;
panel2.Visible:=true;
end;

procedure TProduceset.Panel3DblClick(Sender: TObject);
begin

panel3.Visible:=false;
panel2.Visible:=true;
end;

procedure TProduceset.Panel2DblClick(Sender: TObject);
begin

panel2.Visible:=false;
panel3.Visible:=true;
end;

procedure TProduceset.FormCreate(Sender: TObject);
begin 
DTP1.Date:=startofthemonth(date)+5;
DTP2.date:=endofthemonth(date)+5;
end;

procedure TProduceset.Print1Click(Sender: TObject);
begin

PrintDBGrideh1.Preview;
end;

end.

