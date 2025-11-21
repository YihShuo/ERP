unit RubberReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ComCtrls, ExtCtrls;

type
  TRubberReport = class(TForm)
    Panel2: TPanel;
    Label13: TLabel;
    Label15: TLabel;
    Button1: TButton;
    TextRY: TEdit;
    DP1: TDateTimePicker;
    DP2: TDateTimePicker;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1DDBH: TStringField;
    Query1XXCC: TStringField;
    Query1Qty: TIntegerField;
    Query1CTS: TIntegerField;
    Query1okCTS: TIntegerField;
    Query1outCTS: TIntegerField;
    RadioGroup1: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RubberReport: TRubberReport;

implementation

{$R *.dfm}

procedure TRubberReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TRubberReport.FormDestroy(Sender: TObject);
begin
  RubberReport:=nil;
end;

procedure TRubberReport.Button1Click(Sender: TObject);
var inout: string;
begin
  inout:='ScanOutDate';
  if RadioGroup1.ItemIndex=0 then inout:='[ScanSDate]';
    with Query1 do
    begin
      active:=false;
      sql.Clear;
      sql.add('SELECT [DDBH],[XXCC],sum([Qty]) [Qty],sum([CTS]) [CTS],sum([okCTS]) [okCTS],sum(isnull([outCTS],0)) [outCTS] ');
      sql.add('FROM [dbo].[SMDDSS] where GXLB=''O'' and ('+inout+'  between '''+FormatDateTime('yyyy-mm-dd',DP1.Date)+''' and '''+FormatDateTime('yyyy-mm-dd',DP2.Date)+''') ');
      if NOT (TextRY.Text='') then sql.add('AND [DDBH]='''+TextRY.Text+''' ');
      sql.add('group by [DDBH],[XXCC] order by [DDBH],[XXCC]');
      active:=true;
    end;
end;

procedure TRubberReport.FormCreate(Sender: TObject);
begin
  DP1.Date:=IncMonth(Now,-1);
  DP2.Date:=Now;
end;

end.
