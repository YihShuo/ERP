unit BuyNoPPH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,comobj;

type
  TBuyNoPPH = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1BuyNo: TStringField;
    Query1Article: TStringField;
    Query1DEVCODE: TStringField;
    Query1XieMing: TStringField;
    Query1Qty: TIntegerField;
    Query1IEQty: TIntegerField;
    Query1IEPeo: TIntegerField;
    Query1POH: TFloatField;
    Query1T1: TIntegerField;
    Query1T2: TIntegerField;
    Query1DAOMH: TStringField;
    Query1BZRS_C: TIntegerField;
    Query1BZRS_S: TIntegerField;
    Query1BZRS_P: TIntegerField;
    Query1BZRS_A: TIntegerField;
    Query1BZJS: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BuyNoPPH: TBuyNoPPH;

implementation
  uses main1,FunUnit;
{$R *.dfm}

procedure TBuyNoPPH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TBuyNoPPH.FormDestroy(Sender: TObject);
begin
  BuynoPPH:=Nil;
end;

procedure TBuyNoPPH.Button1Click(Sender: TObject);
begin
   if edit1.Text='' then
   begin
     showmessage('Vui long nhap BUYNO truoc 請輸入Buy別');
     abort;
   end;
   with Query1 do
   begin
     active:=false;
     sql.Clear;
     sql.Add('select ddzl.BuyNo,ddzl.Article,kfxxzl.DEVCODE, xxzl.XieMing, sum(pairs)as Qty,IEQty,IEPeo,POH,');
     sql.Add('       case when POH >=1.25 then 1');
     sql.Add('            when POH >=1.0 and POH< 1.25 then 2');
     sql.Add('            when POH >= 0.75 and POH<1.0 then 3');
     sql.Add('            when POH<0.75 then 4 end as T1,');
     sql.Add('       case when POH>=1.5 then 1');
     sql.Add('            when POH>=1.25 and POH<1.5 then 2');
     sql.Add('            when POH>=1.13 and POH<1.25 then 3');
     sql.Add('            when POH>=1.0 and POH<1.13 then 4');
     sql.Add('            when POH>=0.86 and POH<1.0 then 5');
     sql.Add('            when POH>=0.75 and POH<0.86 then 6');
     sql.Add('            when POH>=0.61 and POH<0.75 then 7');
     sql.Add('            when POH<0.61 then 8 end T2, xxzl.DAOMH');
     sql.Add('       ,SCXXCL_GXLB.BZRS_C,SCXXCL_GXLB.BZRS_S,SCXXCL_GXLB.BZRS_P,SCXXCL_GXLB.BZRS_A,BZJS');
     sql.Add('from ddzl left join xxzl on ddzl.xiexing=xxzl.xiexing and ddzl.shehao=xxzl.shehao');
     sql.Add('left join kfxxzl on ddzl.xiexing=kfxxzl.xiexing and ddzl.shehao=kfxxzl.shehao');
     sql.Add('left join (select SCXXCL.xiexing,SCXXCL.shehao,max(SCXXCL.BZCL)as IEQty, Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,(Round(Max(Convert(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZJS),2)) as POH');
     //2021/02/19 增加 where BZLB=''3''
     sql.Add('            from SCXXCL where BZLB=''3'' group by xiexing,shehao)SCXXCL on SCXXCL.xiexing=ddzl.xiexing and SCXXCL.shehao=ddzl.shehao');
     sql.Add('left join (	select  xiexing,shehao, max(BZRS_C) as BZRS_C,max(BZRS_S) as BZRS_S,max(BZRS_P) as BZRS_P,max(BZRS_A) as BZRS_A, sum (BZJS) as BZJS');
     sql.Add('			      from (  select SCXXCL.xiexing,SCXXCL.shehao');
     sql.Add('            							, case when GXLB=''C'' then  Sum(SCXXCL.BZRS)  end as BZRS_C');
     sql.Add('            							, case when GXLB=''S'' then  Sum(SCXXCL.BZRS)  end as BZRS_S');
     sql.Add('            							, case when GXLB=''P'' then  Sum(SCXXCL.BZRS)  end as BZRS_P');
     sql.Add('            							, case when GXLB=''A'' then  Sum(SCXXCL.BZRS)  end as BZRS_A');
     sql.Add('            							, sum (SCXXCL.BZJS) as BZJS');
     sql.Add('          					from SCXXCL ');
     sql.Add('  					where BZLB=''3'' group by xiexing,shehao,GXLB ) SCXXCL');
     sql.Add('      			group by xiexing,shehao ) SCXXCL_GXLB on SCXXCL_GXLB.XieXing=DDZL.XieXing and SCXXCL_GXLB.SheHao=DDZL.SheHao');
     if edit1.Text<>'' then
       sql.Add('where buyno like '''+edit1.Text+'%'+'''');
     sql.Add('and  DDZL.GSBH='''+main.Edit2.Text+''' ');
     sql.Add('group by ddzl.BuyNo,ddzl.article,kfxxzl.DEVCODE, xxzl.Xieming,xxzl.DAOMH,IEQty,IEPeo,POH,SCXXCL_GXLB.BZRS_C,SCXXCL_GXLB.BZRS_S,SCXXCL_GXLB.BZRS_P,SCXXCL_GXLB.BZRS_A,BZJS') ;
     sql.Add('order by ddzl.article');
     //funcObj.WriteErrorLog(sql.Text);
     active:=true;
   end;
end;

procedure TBuyNoPPH.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j,k:integer;
begin
  if  Query1.active  then
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
      for   i:=0   to   Query1.fieldcount-1   do
      begin
          eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
      end;

      Query1.First;
      j:=2;
      while   not   Query1.Eof   do
      begin
        for   i:=0   to  Query1.fieldcount-1  do
        begin
          eclApp.Cells(j,i+1):=Query1.Fields[i].Value;
        end;
        Query1.Next;
        inc(j);
      end;
      //add outline
      for k:=1 to 4 do
      begin
        eclApp.range[eclApp.cells[1,1],eclApp.cells[j-1,16]].borders[k].linestyle:=1;
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

end.
