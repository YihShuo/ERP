unit Detailb6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,ComObj,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, Menus;

type
  TDetailB61 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1BUYNO: TStringField;
    Query1YSBH: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1YSSM: TStringField;
    Query1MDMH: TStringField;
    Query1BDEDesigner02: TIntegerField;
    Query1BDEDesigner025: TIntegerField;
    Query1BDEDesigner03: TIntegerField;
    Query1BDEDesigner035: TIntegerField;
    Query1BDEDesigner04: TIntegerField;
    Query1BDEDesigner045: TIntegerField;
    Query1BDEDesigner05: TIntegerField;
    Query1BDEDesigner055: TIntegerField;
    Query1BDEDesigner06: TIntegerField;
    Query1BDEDesigner065: TIntegerField;
    Query1BDEDesigner07: TIntegerField;
    Query1BDEDesigner075: TIntegerField;
    Query1BDEDesigner08: TIntegerField;
    Query1BDEDesigner085: TIntegerField;
    Query1BDEDesigner09: TIntegerField;
    Query1BDEDesigner095: TIntegerField;
    Query1BDEDesigner10: TIntegerField;
    Query1BDEDesigner105: TIntegerField;
    Query1BDEDesigner11: TIntegerField;
    Query1BDEDesigner115: TIntegerField;
    Query1BDEDesigner12: TIntegerField;
    Query1BDEDesigner125: TIntegerField;
    Query1BDEDesigner13: TIntegerField;
    Query1BDEDesigner135: TIntegerField;
    Query1BDEDesigner14: TIntegerField;
    Query1BDEDesigner145: TIntegerField;
    Query1BDEDesigner15: TIntegerField;
    Query1BDEDesigner155: TIntegerField;
    Query1BDEDesigner16: TIntegerField;
    Button2: TButton;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    Label4: TLabel;
    Query1Qty: TIntegerField;
    Query1InQTy: TIntegerField;
    Query1LastInQty: TIntegerField;
    Query1OutQty: TIntegerField;
    Query1LastOutQty: TIntegerField;
    PopupMenu1: TPopupMenu;
    Detail1: TMenuItem;
    Query1Win: TIntegerField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Detail1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DetailB61: TDetailB61;

implementation

uses main1,FunUnit,Report1, DetailOut;

{$R *.dfm}

procedure TDetailB61.Button1Click(Sender: TObject);
var
havingCondition: string;
begin
    with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    sql.add(' select BUYNO, YSBH, a.Article, XieMing, YSSM, MDMH, ');
    sql.add(' sum(Qty) Qty,sum (Win) as Win, ');
    sql.add(' (sum(WIn)-sum(ROut)) InQTy, ');
    sql.add(' (sum(Qty)-(sum(WIn)-sum(ROut))-sum(ROut)) as LastInQty, ');
    sql.add('  sum(ROut) OutQty,');
    sql.add(' (sum(Qty)-sum(ROut)) as LastOutQty,');
    sql.add('  SUM(CASE WHEN SCCX = ''02'' THEN WIn - ROut ELSE 0 END) AS ''02'',');
    sql.add('  SUM(CASE WHEN SCCX = ''02.5'' THEN WIn - ROut ELSE 0 END) AS ''02.5'',');
    sql.add('  SUM(CASE WHEN SCCX = ''03'' THEN WIn - ROut ELSE 0 END) AS ''03'',');
    sql.add('  SUM(CASE WHEN SCCX = ''03.5'' THEN WIn - ROut ELSE 0 END) AS ''03.5'',');
    sql.add('  SUM(CASE WHEN SCCX = ''04'' THEN WIn - ROut ELSE 0 END) AS ''04'',');
    sql.add('  SUM(CASE WHEN SCCX = ''04.5'' THEN WIn - ROut ELSE 0 END) AS ''04.5'',');
    sql.add('  SUM(CASE WHEN SCCX = ''05'' THEN WIn - ROut ELSE 0 END) AS ''05'',');
    sql.add('  SUM(CASE WHEN SCCX = ''05.5'' THEN WIn - ROut ELSE 0 END) AS ''05.5'',');
    sql.add('  SUM(CASE WHEN SCCX = ''06'' THEN WIn - ROut ELSE 0 END) AS ''06'',');
    sql.add('  SUM(CASE WHEN SCCX = ''06.5'' THEN WIn - ROut ELSE 0 END) AS ''06.5'',');
    sql.add('  SUM(CASE WHEN SCCX = ''07'' THEN WIn - ROut ELSE 0 END) AS ''07'',');
    sql.add('  SUM(CASE WHEN SCCX = ''07.5'' THEN WIn - ROut ELSE 0 END) AS ''07.5'',');
    sql.add('  SUM(CASE WHEN SCCX = ''08'' THEN WIn - ROut ELSE 0 END) AS ''08'',');
    sql.add('  SUM(CASE WHEN SCCX = ''08.5'' THEN WIn - ROut ELSE 0 END) AS ''08.5'',');
    sql.add('  SUM(CASE WHEN SCCX = ''09'' THEN WIn - ROut ELSE 0 END) AS ''09'',');
    sql.add('  SUM(CASE WHEN SCCX = ''09.5'' THEN WIn - ROut ELSE 0 END) AS ''09.5'',');
    sql.add('  SUM(CASE WHEN SCCX = ''10'' THEN WIn - ROut ELSE 0 END) AS ''10'',');
    sql.add('  SUM(CASE WHEN SCCX = ''10.5'' THEN WIn - ROut ELSE 0 END) AS ''10.5'',');
    sql.add('  SUM(CASE WHEN SCCX = ''11'' THEN WIn - ROut ELSE 0 END) AS ''11'',');
    sql.add('  SUM(CASE WHEN SCCX = ''11.5'' THEN WIn - ROut ELSE 0 END) AS ''11.5'',');
    sql.add('  SUM(CASE WHEN SCCX = ''12'' THEN WIn - ROut ELSE 0 END) AS ''12'',');
    sql.add('  SUM(CASE WHEN SCCX = ''12.5'' THEN WIn - ROut ELSE 0 END) AS ''12.5'',');
    sql.add('  SUM(CASE WHEN SCCX = ''13'' THEN WIn - ROut ELSE 0 END) AS ''13'',');
    sql.add('  SUM(CASE WHEN SCCX = ''13.5'' THEN WIn - ROut ELSE 0 END) AS ''13.5'',');
    sql.add('  SUM(CASE WHEN SCCX = ''14'' THEN WIn - ROut ELSE 0 END) AS ''14'',');
    sql.add('  SUM(CASE WHEN SCCX = ''14.5'' THEN WIn - ROut ELSE 0 END) AS ''14.5'',');
    sql.add('  SUM(CASE WHEN SCCX = ''15'' THEN WIn - ROut ELSE 0 END) AS ''15'',');
    sql.add('  SUM(CASE WHEN SCCX = ''15.5'' THEN WIn - ROut ELSE 0 END) AS ''15.5'',');
    sql.add('  SUM(CASE WHEN SCCX = ''16'' THEN WIn - ROut ELSE 0 END) AS ''16'',');
    sql.add('  SUM(WIn - ROut) AS TotalQty');
    sql.add('FROM '+main.LIY_DD+'.[dbo].[SMDDScanOut] a');
    sql.add('left join DDZL b on b.ZLBH=a.YSBH');
    sql.add('where YSBH like '''+Edit1.Text+'%''  ' );
    sql.add(' and  XieMing like '''+Edit2.Text+'%''  ' );
    sql.add(' and  a.Article like '''+Edit3.Text+'%''  ' );
    sql.add('group by BUYNO, YSBH, a.Article, XieMing, YSSM, MDMH ');
    if ComboBox1.Text = 'InQTy' then
       havingCondition := '(SUM(WIn) - SUM(ROut)) > 0'
    else if ComboBox1.Text = 'LastInQty' then
       havingCondition := '(SUM(Qty) - (SUM(WIn) - SUM(ROut)) - SUM(ROut)) > 0'
    else if ComboBox1.Text = 'OutQty' then
       havingCondition := 'SUM(ROut) > 0'
    else if ComboBox1.Text = 'LastOutQty' then
       havingCondition := '(SUM(Qty) - SUM(ROut)) > 0'
    else if ComboBox1.Text = 'TotalQty' then
       havingCondition := 'SUM(WIn - ROut) > 0'
    else
       havingCondition := ''; // không l?c
     if havingCondition <> '' then
      SQL.Add('HAVING ' + havingCondition);
       Open;
           // funcObj.WriteErrorLog(SQL.Text);
           // showmessage(Query1.SQL.text) ;
      Active:=true;
     end;
end;

procedure TDetailB61.Button2Click(Sender: TObject);
  var eclApp,WorkBook:olevariant;
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
          for   i:=0   to   query1.fieldcount-1   do
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
         showmessage('Succeed');
         eclApp.Visible:=True;
      except
          on   F:Exception   do
            showmessage(F.Message);
      end;
    end;

end;

procedure TDetailB61.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
  DetailB61:=nil;
end;

procedure TDetailB61.Detail1Click(Sender: TObject);
begin
   if not Assigned(DetailOut1) then
   Report1Detail:=TReport1Detail.create(self);
   Report1Detail.LoadData(Query1.FieldByName('YSBH').AsString);
   Report1Detail.show;
end;

end.
