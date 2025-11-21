unit DDHMReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, ComCtrls, StdCtrls, ExtCtrls;

type
  TDDHMReport = class(TForm)
    Panel2: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Button1: TButton;
    DP1: TDateTimePicker;
    DP2: TDateTimePicker;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DataSource1: TDataSource;
    colorclassQry: TQuery;
    Query1MJBH: TStringField;
    Query1ColorName: TStringField;
    Query1Class: TStringField;
    Query1Size: TStringField;
    Query1INQty: TIntegerField;
    Query1QtyOut: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DDHMReport: TDDHMReport;

implementation

uses main1;

{$R *.dfm}

procedure TDDHMReport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
  DDHMReport:=nil;
end;

procedure TDDHMReport.Button1Click(Sender: TObject);
begin
with Query1 do
    begin
    active:=false;
    sql.Clear;
    sql.add('SELECT [MJBH] ,(select top 1 englishname from '+main.LIY_DD+'.dbo.colorclass where [ColorNo]=a.[ColorNo]) [ColorName],');
    sql.add('''Ca''+cast(Class+1 as char) Class,[ColorNo],[Size],sum([Qty]) [INQty]');
	  sql.add(',isnull((SELECT sum([Qty]) FROM '+main.LIY_DD+'.[dbo].[WorkScan] where [MJBH]=a.[MJBH] and InOut=''O'' and [Class]=a.Class and [Size]=a.Size and [ColorNo]=a.ColorNo),0) [QtyOut] ');
    sql.add('FROM '+main.LIY_DD+'.[dbo].[WorkScan] a ');
    sql.add('where [MJBH] in(select distinct [MJBH] FROM '+main.LIY_DD+'.[dbo].[WorkScan] where CAST([ScanDate] AS date) between '''+FormatDateTime('yyyy-mm-dd',DP1.Date)+''' and '''+FormatDateTime('yyyy-mm-dd',DP2.Date)+''') and InOut=''I''');
    sql.add(' group by [MJBH],[ColorNo],[Size],[Class] order by [MJBH],[ColorNo],[Size],[Class]');
    //showmessage(text);
    active:=true;
    end;
end;

end.
