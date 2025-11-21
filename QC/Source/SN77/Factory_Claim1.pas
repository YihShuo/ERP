unit Factory_Claim1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, GridsEh, DBGridEh, DBTables, ExtCtrls, Menus;

type
  TFactory_Claim = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    btn1: TButton;
    qry_FC: TQuery;
    ds_FC: TDataSource;
    dbg_FC: TDBGridEh;
    edt1: TEdit;
    edt2: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    up_FC: TUpdateSQL;
    pm1: TPopupMenu;
    Insert1: TMenuItem;
    Delete1: TMenuItem;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    strngfld_FCFac_ID: TStringField;
    strngfld_FCFactory_Name: TStringField;
    strngfld_FCCountry: TStringField;
    strngfld_FCYN: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure dbg_FCDblClick(Sender: TObject);
    procedure Insert1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure qry_FCAfterOpen(DataSet: TDataSet);
    procedure qry_FCBeforeClose(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Factory_Claim: TFactory_Claim;

implementation

{$R *.dfm}

uses Claim_Report1;

procedure TFactory_Claim.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFactory_Claim.FormDestroy(Sender: TObject);
begin
  Factory_Claim := nil;
end;

procedure TFactory_Claim.btn1Click(Sender: TObject);
begin
  with qry_FC do
  begin
    Close;
    SQL.Clear;
    SQL.Add('  SELECT Fac_ID, Factory_Name, Country, ''''YN FROM Factory_Record ');
    SQL.Add('  WHERE 1 = 1 ');
    if edt1.Text <> '' then
      SQL.Add('  AND Fac_ID like ''%'+edt1.Text+'%'' ');
    if edt2.Text <> '' then
      SQL.Add('  AND Factory_Name like ''%'+edt2.Text+'%'' ');
    Active := True;
  end;
end;

procedure TFactory_Claim.dbg_FCDblClick(Sender: TObject);
begin
  with qry_FC do
  begin
    Claim_Report.qry_CR.Edit;
    Claim_Report.qry_CR.FieldByName('Fac_ID').AsString := FieldByName('Fac_ID').AsString;
    Claim_Report.qry_CR.FieldByName('Factory_Name').AsString := FieldByName('Factory_Name').AsString;
  end;
  Close;
end;

procedure TFactory_Claim.Insert1Click(Sender: TObject);
begin
  with qry_FC do
  begin
    RequestLive := True;
    CachedUpdates := True;
    Insert;
  end;
  Save1.Enabled := True;
  Cancel1.Enabled := True;
end;

procedure TFactory_Claim.Delete1Click(Sender: TObject);
begin
  with qry_FC do
  begin
    RequestLive := True;
    CachedUpdates := True;
    Edit;
    FieldByName('YN').AsString := 'N';
  end;
  Save1.Enabled := True;
  Cancel1.Enabled := True;
end;

procedure TFactory_Claim.Modify1Click(Sender: TObject);
begin
  with qry_FC do
  begin
    RequestLive := True;
    CachedUpdates := True;
    Edit;
  end;
  Save1.Enabled := True;
  Cancel1.Enabled := True;
end;

procedure TFactory_Claim.Save1Click(Sender: TObject);
begin
  try
    qry_FC.first;
    while not qry_FC.Eof do
    begin
      case qry_FC.updatestatus of
        usinserted:
          begin
            up_FC.Apply(ukinsert);
          end;
        usmodified:
          begin
            if qry_FC.FieldByName('YN').AsString = 'N' then
              up_FC.Apply(ukDelete)
            else
              up_FC.Apply(ukModify);
          end;
      end;
      qry_FC.next;
    end;
  except
   // Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;
  btn1.Click;
  Cancel1.Click;
end;

procedure TFactory_Claim.Cancel1Click(Sender: TObject);
begin
  with qry_FC do
  begin
    RequestLive := False;
    CachedUpdates := False;
  end;
  Save1.Enabled := False;
  Cancel1.Enabled := False;
end;

procedure TFactory_Claim.qry_FCAfterOpen(DataSet: TDataSet);
begin
  if qry_FC.RecordCount > 0 then
  begin
    Delete1.Enabled := True;
    Modify1.Enabled := True;
  end;
  Insert1.Enabled := True;
end;

procedure TFactory_Claim.qry_FCBeforeClose(DataSet: TDataSet);
begin
  if qry_FC.RecordCount > 0 then
  begin
    Delete1.Enabled := False;
    Modify1.Enabled := False;
  end;
  Insert1.Enabled := False;
end;

end.
