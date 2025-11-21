unit SKUMOQ1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, DB, DBTables, ExtCtrls,comobj, ComCtrls;

type
  TSKUMOQ = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DataSource1: TDataSource;
    Query1: TQuery;
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    Query1devcode: TStringField;
    Query1article: TStringField;
    Query1clbh: TStringField;
    Query1jijie: TStringField;
    Query1zsdh: TStringField;
    Query1zsywjc: TStringField;
    Query1SampleLeadTime: TIntegerField;
    Query1ProdLeadTime: TIntegerField;
    Query1Forecast_Leadtime: TIntegerField;
    Query1SampleMOQ: TCurrencyField;
    Query1ProdMOQ: TCurrencyField;
    Query1ExtraPrice: TCurrencyField;
    Query1SamplePrice: TCurrencyField;
    Query1SamplePriceVN: TCurrencyField;
    Query1ywpm: TStringField;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SKUMOQ: TSKUMOQ;

implementation

{$R *.dfm}

procedure TSKUMOQ.Button1Click(Sender: TObject);
begin
   if (edit1.text='') and (edit2.text='') then
      showmessage('Please type the SKU');
   if (edit1.text<>'') or (edit2.text<>'') then
   begin
   with Query1 do
      begin
         active:=false;
         sql.Clear;
         sql.add('select a.devcode,a.article,a.clbh,a.jijie,a.zsdh,zszl.zsywjc, MaterialMOQ.SampleLeadTime,MaterialMOQ.ProdLeadTime,MaterialMOQ.Forecast_Leadtime,');
         sql.add('MaterialMOQ.SampleMOQ,MaterialMOQ.ProdMOQ,MaterialMOQ.ExtraPrice,');
         sql.add('MaterialMOQ.SamplePrice,MaterialMOQ.SamplePriceVN,clzl.ywpm from (');
         sql.add('select kfxxzl.devcode,xxzl.article,xxzl.xieming,xxzls.clbh,kfxxzl.jijie,xxzls.csbh as zsdh from xxzls');
         sql.add('left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao');
         sql.add('left join kfxxzl on kfxxzl.xiexing=xxzls.xiexing and kfxxzl.shehao=xxzls.shehao');
         sql.add('where xxzl.khdh=''036''');
         if  edit1.text<>'' then
             sql.add('and xxzl.article='''+edit1.text+''' ');
         if  edit2.text<>'' then
             sql.add('and kfxxzl.devcode='''+edit2.text+''' ');
         sql.add('union');
         sql.add('select kfxxzl.devcode,xxzl.article,xxzl.xieming,clzhzl.cldh1 as clbh,kfxxzl.jijie,clzhzl.zsdh from xxzls');
         sql.add('inner join clzhzl on clzhzl.cldh=xxzls.clbh');
         sql.add('left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao');
         sql.add('left join kfxxzl on kfxxzl.xiexing=xxzls.xiexing and kfxxzl.shehao=xxzls.shehao');
         sql.add('where xxzl.khdh=''036''');
         if  edit1.text<>'' then
             sql.add('and xxzl.article='''+edit1.text+'''');
         if  edit2.text<>'' then
             sql.add('and kfxxzl.devcode='''+edit2.text+''' ');
         sql.add('union');
         sql.add('select devcode,article,xieming,clzhzl.cldh1 as clbh,jijie,clzhzl.zsdh from (');
         sql.add('select kfxxzl.devcode,xxzl.article,xxzl.xieming,clzl.cldh,kfxxzl.jijie from xxzls');
         sql.add('inner join clzhzl on clzhzl.cldh=xxzls.clbh');
         sql.add('left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao');
         sql.add('left join kfxxzl on kfxxzl.xiexing=xxzls.xiexing and kfxxzl.shehao=xxzls.shehao');
         sql.add('left join clzl on clzhzl.cldh1=clzl.cldh');
         sql.add('where xxzl.khdh=''036''');
         if  edit1.text<>'' then
             sql.add('and xxzl.article='''+edit1.text+'''');
         if  edit2.text<>'' then
             sql.add('and kfxxzl.devcode='''+edit2.text+''' ');
         sql.add(')clzhzl2');
         sql.add('inner join clzhzl on clzhzl.cldh=clzhzl2.cldh');

         sql.add(')a ');
         sql.add('left join materialMOQ on materialMOQ.clbh=a.clbh and  materialMOQ.season=a.jijie');
         sql.add('left join clzl on a.clbh=clzl.cldh');
         sql.add('left join zszl on zszl.zsdh=a.zsdh');
         sql.add('group by devcode,article,xieming,a.clbh,a.jijie,a.zsdh,zszl.zsywjc, MaterialMOQ.SampleLeadTime,');
         sql.add('MaterialMOQ.ProdLeadTime,MaterialMOQ.Forecast_Leadtime,MaterialMOQ.SampleMOQ,MaterialMOQ.ProdMOQ,MaterialMOQ.ExtraPrice,MaterialMOQ.SamplePrice,MaterialMOQ.SamplePriceVN,clzl.ywpm');
         sql.add('order by MaterialMOQ.ExtraPrice,MaterialMOQ.ProdMOQ desc');


         //memo1.text:=sql.text;
         active:=true;
      end;
   end;
end;

procedure TSKUMOQ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    action:=cafree;
end;

procedure TSKUMOQ.Button2Click(Sender: TObject);
var
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
      for   i:=0   to  query1.fieldcount-1  do
      begin
         eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
      end;
         query1.First;
         j:=2;
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
              eclApp.Visible:=True;
    except
        on   F:Exception   do
          showmessage(F.Message);
      end;
  end;
end;

end.
