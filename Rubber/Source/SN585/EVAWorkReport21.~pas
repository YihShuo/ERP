(*
EVA¥Í²£²Î­p³øªí
¬d¸ßEVA ºI¦Ü¤é´Á ­q³æ¶q¡B©|¥¼¥Í²£¶q¡B¤J®w¶q¡B¥X®w¶q¡B®w¦s¾l¶q
¡A ¦U SIZE ¾l¶q
*)
unit EVAWorkReport21;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, StdCtrls, ExtCtrls, ComCtrls, Buttons,comobj,
  GridsEh, DBGridEh,DateUtils;

type
  TEVAWorkReport2 = class(TForm)
    Panel1: TPanel;
    Button2: TButton;
    DataSource1: TDataSource;
    Query1: TQuery;
    bbt6: TBitBtn;
    DBGridEh1: TDBGridEh;
    UpdateSQL1: TUpdateSQL;
    GroupBox1: TGroupBox;
    Label19: TLabel;
    Label5: TLabel;
    TBcolor: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Query1Color: TStringField;
    Query1DDMH: TStringField;
    Query1XieMing: TStringField;
    Query1T: TStringField;
    Query1Pairs: TIntegerField;
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
    Query1BDEDesigner145: TAutoIncField;
    Query1BDEDesigner15: TIntegerField;
    Query1BDEDesigner155: TIntegerField;
    Query1BDEDesigner16: TIntegerField;
    Query1sku: TStringField;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
  private
    { Private declarations }
    procedure ApplyFilter;
  public
    { Public declarations }
  end;

var
  EVAWorkReport2: TEVAWorkReport2;
implementation

uses main1,FunUnit;

{$R *.dfm}

procedure TEVAWorkReport2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  EVAWorkReport2:=nil;
end;

procedure TEVAWorkReport2.Button2Click(Sender: TObject);
begin
   try
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('EXEC TB_DD.dbo.S_Report_COLOR_EVA  :COLOR, :ARTICLE ');
    Query1.ParamByName('COLOR').AsString := '%' + TBcolor.Text + '%';
    Query1.ParamByName('ARTICLE').AsString := '%' + Edit2.Text + '%';

    Query1.Open;
    ApplyFilter;
  except
    on E: Exception do
    begin
      ShowMessage('L?i khi g?i procedure: ' + E.Message);
    end;
  end;
end;

procedure TEVAWorkReport2.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if Query1.Active then
  begin
    if Query1.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;

  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook:=eclApp.workbooks.Add;
    for i:=0 to DBGridEh1.Columns.Count-1 do
    begin
      eclApp.Cells(1,i+1):=DBGridEh1.Columns[i].Title.Caption;
      eclApp.Cells.Cells.item[1,i+1].font.name := 'Calibri';
      eclApp.Cells.Cells.item[1,i+1].font.size:='10';
    end;
    Query1.First;
    j:=2;
    while not Query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
         eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
         eclApp.Cells.Cells.item[j,i+1].font.size:='10';
         eclApp.Cells.Cells.item[j,i+1].font.name := 'Calibri';
      end;
      Query1.Next;
      inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;


procedure TEVAWorkReport2.ApplyFilter;
var
  FilterStr: string;
begin
  FilterStr := '';

  if CheckBox1.Checked then
    FilterStr := FilterStr + 'T = ''Total'' OR ';
  if CheckBox2.Checked then
    FilterStr := FilterStr + 'T = ''InQty'' OR ';
  if CheckBox4.Checked then
    FilterStr := FilterStr + 'T = ''OutQty'' OR ';
  if CheckBox3.Checked then
    FilterStr := FilterStr + 'T = ''LastQty'' OR ';
  if CheckBox6.Checked then
    FilterStr := FilterStr + 'T = ''TON KHO'' OR ';
  if CheckBox5.Checked then
    FilterStr := FilterStr + 'T = ''LastOut'' OR ';

  if FilterStr <> '' then
  begin
    Delete(FilterStr, Length(FilterStr) - 3, 4); // Xoá ' OR ' cu?i
    Query1.Filter := FilterStr;
    Query1.Filtered := True;
  end
  else
  begin
    Query1.Filtered := False;
  end;
end;

procedure TEVAWorkReport2.CheckBox1Click(Sender: TObject);
begin
  ApplyFilter;
end;

procedure TEVAWorkReport2.CheckBox2Click(Sender: TObject);
begin
  ApplyFilter;
end;

procedure TEVAWorkReport2.CheckBox3Click(Sender: TObject);
begin
   ApplyFilter;
end;

procedure TEVAWorkReport2.CheckBox4Click(Sender: TObject);
begin
  ApplyFilter;
end;

procedure TEVAWorkReport2.CheckBox5Click(Sender: TObject);
begin
  ApplyFilter;
end;

procedure TEVAWorkReport2.CheckBox6Click(Sender: TObject);
begin
  ApplyFilter;
end;

end.
