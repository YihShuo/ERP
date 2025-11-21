unit RBWorkReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ComCtrls, ExtCtrls,
  Menus;

type
  TRBWorkReport = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Button1: TButton;
    CBcolor: TComboBox;
    EDARTICLE: TEdit;
    DP1: TDateTimePicker;
    DP2: TDateTimePicker;
    GroupBox1: TGroupBox;
    Label19: TLabel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    colorclassQry: TQuery;
    Query1: TQuery;
    Query1Color: TStringField;
    Query1Size: TStringField;
    Query1Sku: TStringField;
    Query1TotalQty: TIntegerField;
    Query1TotalS_OK: TIntegerField;
    Query1TotalDiff: TIntegerField;
    Label1: TLabel;
    BUYNOEdit: TEdit;
    PopupMenu1: TPopupMenu;
    Detail1: TMenuItem;
    Query1BUYNO: TStringField;
    Query2: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Detail1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RBWorkReport: TRBWorkReport;

implementation

uses main1,FunUnit,DetailReport1;

{$R *.dfm}

procedure TRBWorkReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  RBWorkReport:=nil;
end;

procedure TRBWorkReport.Button1Click(Sender: TObject);
begin
    with Query1 do
    begin
    active:=false;
    sql.Clear;
     sql.add(' SELECT a.sku,a.[size],a.color, SUM(a.[qty]) AS TotalQty,SUM(a.[s_ok]) AS TotalS_OK,SUM(a.[qty]) - SUM(a.[s_ok]) AS TotalDiff, c.BUYNO ');
    sql.add(' from '+main.LIY_DD+'.[dbo].[rubber01p] a');
    sql.add('inner join '+main.LIY_DD+'.[dbo].[rubber01] b  ON a.sku = b.ARTICLE AND a.id_code = b.id ');
    sql.add(' inner join DDZL c on c.DDBH=b.ry and c.ARTICLE=b.ARTICLE  ');
    sql.add(' where  b.flag=''P'' and CAST(b.[SCRQ] AS date) between '''+FormatDateTime('yyyy-mm-dd',DP1.Date)+''' and '''+FormatDateTime('yyyy-mm-dd',DP2.Date)+'''');

    if EDARTICLE.Text<>'' then
    begin
    sql.Add(' AND b.[ARTICLE] = '''+EDARTICLE.Text+'''');
    end;
    if CBcolor.Text<>'' then
    begin
    sql.Add(' AND a.[Color] = '''+CBcolor.Text+'''');
    end;
    if BUYNOEdit.Text<>'' then
    begin
    sql.Add(' AND [BUYNO] = '''+BUYNOEdit.Text+'''');
    end;
    {if CBTimes.ItemIndex=1 then
    begin
    sql.Add(' and CAST(a.[userdate] AS time(0)) between ''06:00:00'' and ''13:59:59''');
    end;
    if CBTimes.ItemIndex=2 then
    begin
    sql.Add(' and CAST(a.[userdate] AS time(0)) between ''14:00:00'' and ''21:59:59''');
    end;
    if CBTimes.ItemIndex=3 then
    begin
    sql.Add(' and CAST(a.[userdate] AS time(0)) between ''22:00:00'' and ''05:59:59''');
    end;  }
    //sql.Add(' group by a.[userdate],[id_code],[userid],[XieXing],[ARTICLE],[Color]');
    sql.Add(' group by a.[size], a.sku ,a.color, c.BUYNO  ');
   // funcObj.WriteErrorLog(SQL.Text);
    active:=true;
    end;
end;

procedure TRBWorkReport.FormCreate(Sender: TObject);
begin
  DP1.Date:=IncMonth(Now,-1);
  DP2.Date:=Now;
  with colorclassQry do
  begin
  active:=false;
  sql.Clear;
  sql.add('SELECT [EnglishName] FROM '+main.LIY_DD+'.[dbo].[ColorClass]');
  active:=true;
  end;
  colorclassQry.First;
  CBcolor.Clear;
  CBcolor.Items.Add('');
  while not colorclassQry.Eof do
  begin
  CBcolor.Items.Add(colorclassQry.FieldValues['EnglishName']);
  colorclassQry.Next;
  end;
  colorclassQry.SQL.Clear;
  colorclassQry.active:=false;
end;

procedure TRBWorkReport.Detail1Click(Sender: TObject);
var
  Article, Color, BuyNo,Size, BeginDate, EndDate: string;
begin
  // L?y d? li?u t? d?ng hi?n t?i trong Query ho?c DataSource
  Article := Query1.FieldByName('sku').AsString;
  Color := Query1.FieldByName('color').AsString;
  BuyNo := Query1.FieldByName('BUYNO').AsString;
  Size    := Query1.FieldByName('size').AsString;

  // L?y t? các Edit ho?c DateTimePicker
  BeginDate := FormatDateTime('yyyy-mm-dd', DP1.Date);
  EndDate   := FormatDateTime('yyyy-mm-dd', DP2.Date);

  // T?o form n?u chýa có
  if not Assigned(DetailReport) then
    Application.CreateForm(TDetailReport, DetailReport);

  // Truy?n d? li?u ð?ng vào
  DetailReport.LoadDetail(Article, Color, BuyNo,Size, BeginDate, EndDate);
  DetailReport.Show;
end;


end.
