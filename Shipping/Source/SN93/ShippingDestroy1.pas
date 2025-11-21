unit ShippingDestroy1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, StdCtrls, ExtCtrls,comobj,
  GridsEh, DBGridEh,EhlibBDE,dateutils, Buttons, ComCtrls;

type
  TShippingDestroy = class(TForm)
    Panel1: TPanel;
    Query1: TQuery;
    DataSource1: TDataSource;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Query1ypdh: TStringField;
    Query1kfjd: TStringField;
    Query1article: TStringField;
    Query1qtyin: TFloatField;
    Query1xieming: TStringField;
    Query1clsl: TFloatField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    Query1sampleprice: TCurrencyField;
    Query1zsywjc: TStringField;
    Query1ywsm: TStringField;
    Query1totalusage: TFloatField;
    Query1clbh: TStringField;
    Query1hglb: TStringField;
    Query1cno: TStringField;
    Query1docno: TStringField;
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShippingDestroy: TShippingDestroy;

implementation

{$R *.dfm}



procedure TShippingDestroy.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TShippingDestroy.Button1Click(Sender: TObject);
begin
  if Edit1.Text =''  then
  begin
     showmessage('Nhap don hang.');
     abort;
  end;
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ypdh,kfjd,article,qtyin,xieming,clsl,ywpm,dwbh');
    sql.add(',sampleprice,zsdh,zsywjc,bwdh,ywsm,totalusage,ypzl.clbh ');
    sql.add(',hglb,cno,kcrk.docno');
    sql.add('from (select ypzl.ypdh,ypzl.kfjd,ypzl.article,shoein.qtyin,kfxxzl.xieming,ypzls.clsl,ypzls.clbh,clzl.ywpm,clzl.dwbh');
    sql.add(',materialmoq.sampleprice,zszl.zsdh,zszl.zsywjc,bwzl.bwdh,bwzl.ywsm,round(ypzls.clsl*shoein.qtyin,4) as totalusage');
    sql.add(',kclls.hglb,kclls.cno');
    sql.add('from ypzl');
    sql.add('left join ypzls on ypzl.ypdh=ypzls.ypdh');
    sql.add('left join bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
    sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.add('left join clzl on ypzls.clbh=clzl.cldh');
    sql.add('left join shoetest on shoetest.ypdh=ypzl.ypdh');
    sql.add('left join (select testno,isnull(sum(qty),0) qtyin  from shoetest2 group by testno)shoein on shoein.testno=shoetest.testno');
    sql.add('left join materialmoq on materialmoq.clbh=ypzls.clbh and ypzls.csbh=materialmoq.zsbh and kfxxzl.jijie = materialmoq.season');
    sql.add('left join zszl on zszl.zsdh = materialmoq.zsbh');
    sql.add('left join kclls on kclls.scbh =ypzls.ypdh and kclls.clbh =ypzls.clbh');
    sql.add('where ypzl.ypdh like '+''''+Edit1.Text+'%'+'''');
    sql.add('and bwzl.bwdh  not in (''E106'',''E249'',''E024'',''E023'',''E030'',''E163'')');
    sql.add('group by ypzl.ypdh,ypzl.kfjd,ypzl.article,shoein.qtyin,kfxxzl.xieming,ypzls.clsl,ypzls.clbh,clzl.ywpm,clzl.dwbh');
    sql.add(',materialmoq.sampleprice,zszl.zsdh,zszl.zsywjc,bwzl.bwdh,bwzl.ywsm,kclls.hglb,kclls.cno ) ypzl');
    sql.add('left join (	select  clbh,cgbh,max(kcrk.docno) as docno,max(kcrk.userdate) as userdate');
    sql.add('             from kcrks left join kcrk on kcrk.rkno = kcrks.rkno');
    sql.add('             where kcrk.HGLB in (''NK'',''GC'')');
    sql.add('             group by  clbh,cgbh');
    sql.add(') kcrk on kcrk.clbh = ypzl.clbh and kcrk.cgbh=ypzl.ypdh ');
    //memo1.Text:=sql.Text;
    active:=true;
  end;
end;

procedure TShippingDestroy.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  query1.active  then
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
     {   for   i:=0   to   query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;   }
        eclApp.Cells(1,1):='Laiv#';
        eclApp.Cells(2,1):='SR';
        eclApp.Cells(1,2):='Stage';
        eclApp.Cells(2,2):='階段';
        eclApp.Cells(1,3):='SKU#';
        eclApp.Cells(2,3):='AR';
        eclApp.Cells(1,4):='Model Name';
        eclApp.Cells(2,4):='鞋名';
        eclApp.Cells(1,5):='Partname';
        eclApp.Cells(2,5):='部位名稱';
        eclApp.Cells(1,6):='MatNO';
        eclApp.Cells(2,6):='材料編號';
        eclApp.Cells(1,7):='Material Name';
        eclApp.Cells(2,7):='材料名稱';
        eclApp.Cells(1,8):='TB Qty';
        eclApp.Cells(2,8):='通報數量';
        eclApp.Cells(1,9):='Usage';
        eclApp.Cells(2,9):='單位用量';
        eclApp.Cells(1,10):='Usage*Qty';
        eclApp.Cells(2,10):='通報應領數量計算前';
        eclApp.Cells(1,11):='Unit';
        eclApp.Cells(2,11):='單位';
        eclApp.Cells(1,12):='HGLB (Nguon nhap)';
        eclApp.Cells(2,12):='五大倉';
        eclApp.Cells(1,13):='Invoice#';
        eclApp.Cells(2,13):='發票';
        eclApp.Cells(1,14):='Supplier';
        eclApp.Cells(2,14):='廠商名稱';
        eclApp.Cells(1,15):='NewHaiQuan (Ma Hang)';
        eclApp.Cells(2,15):='最新海關代碼';
        eclApp.Cells(1,16):='Price';
        eclApp.Cells(2,16):='樣品單號';
        query1.First;
        j:=3;
        while   not   query1.Eof   do
          begin
            for   i:=0   to  query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
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

procedure TShippingDestroy.FormDestroy(Sender: TObject);
begin
  ShippingDestroy:=nil;
end;

end.

