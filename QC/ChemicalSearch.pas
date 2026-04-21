unit ChemicalSearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ExtCtrls, StdCtrls;

type
  TChemicalSearchs = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    edtCLBH: TEdit;
    Label1: TLabel;
    Query1CLDH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Label2: TLabel;
    edtYWPM: TEdit;
    btS: TButton;
    procedure btSClick(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChemicalSearchs: TChemicalSearchs;

implementation

uses ChemicalStockIns;

{$R *.dfm}

procedure TChemicalSearchs.btSClick(Sender: TObject);
begin
  with Query1 do
  begin
    SQL.Clear;
    Active := false;
    SQL.Add('SELECT CLDH, YWPM, DWBH FROM CLZL ');
    SQL.Add('WHERE CLDH LIKE ''W' +edtCLBH.Text+ '%'' ');

    if edtYWPM.Text <> '' then
      SQL.Add('AND YWPM LIKE ''%' +edtYWPM.Text+ '%'' ');
    Active := true;
  end;
end;

procedure TChemicalSearchs.DBGridEh1DblClick(Sender: TObject);
begin
    if Query1.Active=false then exit;
    if Query1.RecordCount=0 then exit;
    
    if assigned(ChemicalStockIn) then
    begin
      if ChemicalStockIn.Query1.RequestLive then
      begin
        with ChemicalStockIn.Query1 do
        begin
            edit;
            fieldbyname('CLBH').AsString := Query1.fieldbyname('CLDH').AsString;
            fieldbyname('YWPM').AsString := Query1.fieldbyname('YWPM').AsString;
        end;
        ChemicalSearchs.Close;
      end ;
    end;
end;

procedure TChemicalSearchs.Query1AfterOpen(DataSet: TDataSet);
begin
  //Query1.Edit;
end;

procedure TChemicalSearchs.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action := Cafree;
end;

procedure TChemicalSearchs.FormDestroy(Sender: TObject);
begin
  ChemicalSearchs := nil;
end;

end.
