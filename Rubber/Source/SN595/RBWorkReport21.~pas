unit RBWorkReport21;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Buttons, ComCtrls, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh,comobj,DateUtils;

type
  TRBWorkReport2 = class(TForm)
    Panel1: TPanel;
    Button2: TButton;
    bbt6: TBitBtn;
    DataSource1: TDataSource;
    Query1: TQuery;
    DBGridEh1: TDBGridEh;
    UpdateSQL1: TUpdateSQL;
    GroupBox1: TGroupBox;
    Label19: TLabel;
    Label5: TLabel;
    TBcolor: TEdit;
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
    Query1BDEDesigner145: TIntegerField;
    Query1BDEDesigner15: TIntegerField;
    Query1BDEDesigner155: TIntegerField;
    Query1BDEDesigner16: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RBWorkReport2: TRBWorkReport2;
implementation

uses main1;

{$R *.dfm}

procedure TRBWorkReport2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  RBWorkReport2:=nil;
end;

procedure TRBWorkReport2.Button2Click(Sender: TObject);
begin
 try
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('EXEC TB_DD.dbo.S_Report_COLOR  :COLOR, :ARTICLE ');
    Query1.ParamByName('COLOR').AsString := '%' + TBcolor.Text + '%';
    Query1.ParamByName('ARTICLE').AsString :='%' + Edit2.Text + '%';
    Query1.Open;
  except
    on E: Exception do
    begin
      ShowMessage('Loi khi goi procedure: ' + E.Message);
    end;
end;

end;


procedure TRBWorkReport2.bbt6Click(Sender: TObject);
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

end.
