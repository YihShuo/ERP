unit RB_Report_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TRBReport_1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query1BUYNO: TStringField;
    Query1DDBH: TStringField;
    Query1Article: TStringField;
    Query1Pairs: TIntegerField;
    Query1COLOR: TStringField;
    Query1Field02: TIntegerField;
    Query1Field025: TIntegerField;
    Query1Field03: TIntegerField;
    Query1Field035: TIntegerField;
    Query1Field04: TIntegerField;
    Query1Field045: TIntegerField;
    Query1Field05: TIntegerField;
    Query1Field055: TIntegerField;
    Query1Field06: TIntegerField;
    Query1Field065: TIntegerField;
    Query1Field07: TIntegerField;
    Query1Field075: TIntegerField;
    Query1Field08: TIntegerField;
    Query1Field085: TIntegerField;
    Query1Field09: TIntegerField;
    Query1Field095: TIntegerField;
    Query1Field10: TIntegerField;
    Query1Field105: TIntegerField;
    Query1Field11: TIntegerField;
    Query1Field115: TIntegerField;
    Query1Field12: TIntegerField;
    Query1Field125: TIntegerField;
    Query1Field13: TIntegerField;
    Query1Field135: TIntegerField;
    Query1Field14: TIntegerField;
    Query1Field145: TIntegerField;
    Query1Field15: TIntegerField;
    Query1Field155: TIntegerField;
    Query1Field16: TIntegerField;
    DS1: TDataSource;
    GroupBox1: TGroupBox;
    Label19: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RBReport_1: TRBReport_1;

implementation

{$R *.dfm}

procedure TRBReport_1.Button1Click(Sender: TObject);
begin
 try
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('EXEC TB_DD.dbo.S_Report_RB_SKU :BUYNO, :COLOR, :ARTICLE ');
    Query1.ParamByName('BUYNO').AsString := Edit3.Text;
    Query1.ParamByName('COLOR').AsString := Edit2.Text;
    Query1.ParamByName('ARTICLE').AsString :=Edit1.Text;
    Query1.Open;
  except
    on E: Exception do
    begin
      ShowMessage('Loi khi goi procedure: ' + E.Message);
    end;
  end;
end;

procedure TRBReport_1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
  RBReport_1:=nil;
end;

end.
