unit CLBHLockQty1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh;

type
  TCLBHLockQty = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGridEh2: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1cllb: TStringField;
    strngfldQuery1zwpm: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    Query1cldh: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CallerGrid: TDBGridEh;
  end;

var
  CLBHLockQty: TCLBHLockQty;

implementation

uses LockQtyMaterial1;

{$R *.dfm}

procedure TCLBHLockQty.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TCLBHLockQty.FormDestroy(Sender: TObject);
begin
  CLBHLockQty:=nil;
end;

procedure TCLBHLockQty.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := False;
    SQL.Clear;
    if Edit1.Text='' then
    begin
      Showmessage('Vui long nhap CLBH');
      Exit;
    end;
    SQL.Add('select cldh,cllb,zwpm,ywpm,dwbh from clzl');
    if Edit1.Text <> '' then
    begin
      SQL.Add('where cldh like ');
      sql.add(''''+edit1.Text+'%'+'''');
    end;
    SQL.Add('order by cldh');
    //ShowMessage(sql.Text);
    Active := True;
  end;
end;

procedure TCLBHLockQty.DBGridEh2DblClick(Sender: TObject);
begin
  if Query1.RecordCount > 0 then
  begin
    if Assigned(CallerGrid) then
    begin
      CallerGrid.DataSource.DataSet.Edit;

      {if CallerGrid = LockQtyMaterial.DBGridEh2 then
      begin
        CallerGrid.DataSource.DataSet.FieldByName('clbh').Value :=
          Query1.FieldByName('cldh').Value;
      end; }

      // N?u caller là DBGridEh3 -> gán c? CLBH và YWPM
      if CallerGrid = LockQtyMaterial.DBGridEh3 then
      begin
        CallerGrid.DataSource.DataSet.FieldByName('clbh').Value :=
          Query1.FieldByName('cldh').Value;
        CallerGrid.DataSource.DataSet.FieldByName('ywpm').Value :=
          Query1.FieldByName('ywpm').Value;
      end;
    end;

    Close;
  end;
end;

end.
