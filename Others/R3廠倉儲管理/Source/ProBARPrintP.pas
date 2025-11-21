unit ProBARPrintP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, DBTables, ExtCtrls;

type
  Tbarcodepring = class(TForm)
    Panel1: TPanel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    Edit1: TEdit;
    Query1: TQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    ProBARPrint: TTable;
    ProBARPrintWORKID: TStringField;
    ProBARPrintCOLOR: TStringField;
    ProBARPrintMG: TStringField;
    ProBARPrintSIZE: TStringField;
    ProBARPrintSNO: TStringField;
    ProBARPrintCODEBAR: TStringField;
    ProBARPrintQTY: TSmallintField;
    ProBARPrintCTS: TSmallintField;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  barcodepring: Tbarcodepring;

implementation

{$R *.dfm}

procedure Tbarcodepring.FormCreate(Sender: TObject);
begin
//設定CB1和CB2選擇SIZE 來源ProductionPlan.WorkPlanS
end;

procedure Tbarcodepring.ComboBox1Change(Sender: TObject);
begin
//變更CB2從CB1開始
end;

procedure Tbarcodepring.Button1Click(Sender: TObject);
var i:integer;
begin
with ProBARPrint do
  begin
    active:=true;
    while not eof do
      begin
        delete;
      end;
    insert;
    workplans.First;
    while not workplans.Eof do
      begin
      for i:=1 to workplans.fieldbyname('Nbarcode').Value do
        begin
          insert;
          fieldbyname('workid').Value:=workplans.fieldbyname('workid').Value;
          fieldbyname('color').Value:=workplan.fieldbyname('colorname').Value;
          fieldbyname('MG').Value:=workplan.fieldbyname('mjname').Value;
          fieldbyname('size').Value:=workplans.fieldbyname('size').Value;
          fieldbyname('sno').Value:=workplans.fieldbyname('sno').Value;
          fieldbyname('CODEBAR').Value:=workplans.fieldbyname('CODEBAR').Value;
          if workplans.fieldbyname('sno').Value = 2 then
            fieldbyname('Qty').Value:=workplans.fieldbyname('Qty').Value
          else
            fieldbyname('Qty').Value:=12;
          fieldbyname('CTS').Value:=i;
        post;
        end;
        workplans.Next;
      end;
    active:=false;
  end;

  
if fileexists(extractfilepath(application.ExeName)+'R3CodeBar.btw') then
  begin
    ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'R3Codebar.btw'),nil,pchar(ExtractFilePath(Application.ExeName)),SW_SHOW);
    //close;
  end
  else
    begin
      showmessage('Pls setup the program first. Abort');
    end;
end;

end.
