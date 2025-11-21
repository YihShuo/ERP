unit Purtrace_LT1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ComCtrls, StdCtrls, ExtCtrls, Comobj;

type
  TPurtrace_LT = class(TForm)
    Query1: TQuery;
    DS1: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    CLBHEdit: TEdit;
    Label2: TLabel;
    YWSMEdit: TEdit;
    Query2: TQuery;
    DS2: TDataSource;
    Query2DEVCODE: TStringField;
    Query2Article: TStringField;
    Query2XieXing: TStringField;
    Query2SheHao: TStringField;
    Query2BWBH: TStringField;
    Query2YWSM: TStringField;
    Query2ZWSM: TStringField;
    Query2TCLBH: TStringField;
    Query2CLBH: TStringField;
    Query2YWPM: TStringField;
    Query2ZWPM: TStringField;
    Query2CLZMLB: TStringField;
    Query2CQDH: TStringField;
    Query2DWBH: TStringField;
    Query2ProdLeadTime: TIntegerField;
    Query2Forecast_LeadTime: TIntegerField;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    YWPMEdit: TEdit;
    Label1: TLabel;
    tmpQry: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
  private
    ZLBH:String;
    { Private declarations }
  public
    { Public declarations }
    procedure GetBWSMEdit_ZLBH(ZLBHStr:String;CLBHStr:String);
  end;

var
  Purtrace_LT: TPurtrace_LT;

implementation

{$R *.dfm}
  uses FunUnit;
procedure TPurtrace_LT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
  query1.active:=false;
end;

procedure TPurtrace_LT.FormDestroy(Sender: TObject);
begin
  Purtrace_LT:=nil;
end;

procedure TPurtrace_LT.GetBWSMEdit_ZLBH(ZLBHStr:String;CLBHStr:String);
begin
  with tmpQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select top 1 BWZL.YWSM ');
    SQL.Add('from ZLZLS2 ');
    SQL.Add('left join BWZL on BWZL.BWDH=ZLZLS2.BWBH ');
    SQL.Add('where ZLBH='''+ZLBHStr+''' and CLBH='''+CLBHStr+''' ');
    Active:=true;
    ZLBH:=ZLBHStr;
    CLBHEdit.Text:=CLBHStr;
    YWSMEdit.Text:=FieldByName('YWSM').AsString;
    Active:=false;
  end;
end;

procedure TPurtrace_LT.Button1Click(Sender: TObject);
begin
  with Query2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select * from (');
    SQL.Add('select DEVCODE,Article,XieXing,SheHao,BWBH,YWSM,ZWSM,case when left(CLBH,1)=''V'' then CLBH else null end as TCLBH,IsNull(JHDH,CLBH) as CLBH,YWPM,ZWPM,CLZMLB,CQDH,DWBH,ProdLeadTime,Forecast_LeadTime from (');
    SQL.Add('select YPZLS.*,MaterialMOQ.Season,MaterialMOQ.ProdMOQ,MaterialMOQ.ProdLeadTime,MaterialMOQ.Forecast_LeadTime,MaterialMOQ.Location from (');
    SQL.Add('select YPZL.YPDH,KFXXZL.DEVCODE,DDZL.Article,YPZL.XieXing,YPZL.SheHao,YPZLS.BWBH,case when clzhzl.cldh1 is not null then clzhzl.cldh1 else YPZLS.CLBH end as CLBH,');
    SQL.Add('       CLZL_LS.JHDH,BWZL.YWSM,BWZL.ZWSM,CLZL.YWPM,CLZL.ZWPM,CLZL.CLZMLB,CLZL.DWBH,CLZL.CQDH from YPZLS');
    SQL.Add('left join YPZL on YPZL.YPDH=YPZLS.YPDH ');
    SQL.Add('left join clzhzl on YPZLS.CLBH=clzhzl.cldh');
    SQL.Add('left join BWZL on BWZL.bwdh=YPZLS.BWBH');
    SQL.Add('left join DDZL on DDZL.XieXing=YPZL.XieXing and DDZL.SheHao=YPZL.SheHao');
    SQL.Add('left join CLZL on CLZL.CLDH=case when clzhzl.cldh1 is not null then clzhzl.cldh1 else YPZLS.CLBH end');
    SQL.Add('left join CLZL_LS on CLZL_LS.CLDH=case when clzhzl.cldh1 is not null then clzhzl.cldh1 else YPZLS.CLBH end');
    SQL.Add('left join KFXXZL on DDZL.XieXing=KFXXZL.XieXing and DDZL.SheHao=KFXXZL.SheHao');
    SQL.Add('where DDZL.DDBH='''+ZLBH+'''    ');
    if YWSMEdit.Text<>'' then
    SQL.Add('      and BWZL.YWSM like ''%'+YWSMEdit.Text+'%''');
    if YWPMEdit.Text<>'' then
    SQL.Add('      and CLZL.YWPM like ''%'+YWPMEdit.Text+'%''');
    SQL.Add('      and BWBH in (select BWBH from ZLZLS2 where ZLBH='''+ZLBH+''' Group by BWBH)  ');
    SQL.Add('       ) YPZLS ');
    SQL.Add('left join (');
    SQL.Add('  select * from (');
    SQL.Add('  select Season,CLBH,ProdMOQ,ProdLeadTime,Forecast_Leadtime,Location,ROW_NUMBER() over (PARTITION BY CLBH ORDER BY Substring(Season,1,2) DESC,USERDATE desc) ');
    SQL.Add('  as  rn from MaterialMOQ ) A where rn=1 ) MaterialMOQ on MaterialMOQ.CLBH=YPZLS.CLBH ) YPZLS ');
    SQL.Add('Group by ');
    SQL.Add('DEVCODE,Article,XieXing,SheHao,BWBH,YWSM,ZWSM,case when left(CLBH,1)=''V'' then CLBH else null end,IsNull(JHDH,CLBH),YWPM,ZWPM,CLZMLB,CQDH,DWBH,ProdLeadTime,Forecast_LeadTime');
    SQL.Add(') YPZLS  where 1=1 ');
    if CLBHEdit.Text<>'' then
    SQL.Add(' and CLBH like '''+CLBHEdit.Text+'%'' ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TPurtrace_LT.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Query2.FieldByName('CLBH').AsString='') then
  begin
    DBGrideh2.canvas.font.color:=clRed;
  end;
  if (Query2.FieldByName('ProdLeadTime').AsString='') and (Query2.FieldByName('Forecast_LeadTime').AsString='') then
  begin
    DBGrideh2.canvas.font.color:=clRed;
  end;
end;

procedure TPurtrace_LT.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  Query2.active  then
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
          for   i:=0   to   Query2.fieldcount-1   do
          begin
            eclApp.Cells(1,i+1):=Query2.fields[i].FieldName;
          end;
          //
          Query2.First;
          j:=2;
          while   not   Query2.Eof   do
          begin
            for   i:=0   to  Query2.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=Query2.Fields[i].Value;
            end;
            Query2.Next;
            inc(j);
          end;
         eclapp.columns.autofit;
         showmessage('Succeed');
         eclApp.Visible:=True;
      except
         on  F:Exception   do
            showmessage(F.Message);
      end;
    end;

end;

end.
