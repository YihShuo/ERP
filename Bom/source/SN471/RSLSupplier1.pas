unit RSLSupplier1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TRSLSupplier = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    SupplierEdit: TEdit;
    DBGrid1: TDBGridEh;
    DS1: TDataSource;
    ZSZLQry: TQuery;
    ZSZLQryZSDH: TStringField;
    ZSZLQryZSJC: TStringField;
    ZSZLQryZSYWJC: TStringField;
    Label2: TLabel;
    DescEdit: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RSLSupplier: TRSLSupplier;

implementation
  uses SetRSLList1;
{$R *.dfm}

procedure TRSLSupplier.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TRSLSupplier.FormDestroy(Sender: TObject);
begin
  RSLSupplier:=nil;
end;

procedure TRSLSupplier.Button1Click(Sender: TObject);
begin
  with ZSZLQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select ZSDH,ZSJC,ZSYWJC  from ZSZL ');
    SQL.Add('where YN=1    ');
    if SupplierEdit.Text<>'' then
    SQL.Add('and ZSJC like '''+SupplierEdit.Text+'%'' ');
    if DescEdit.Text<>'' then
    SQL.Add('and ZSYWJC like '''+DescEdit.Text+'%'' ');
    SQL.Add('order by ZSYWJC');
    Active:=true;
  end;
end;

procedure TRSLSupplier.DBGrid1DblClick(Sender: TObject);
begin
  SetRSLList.SupEdit.Text:=ZSZLQry.FieldByName('ZSJC').AsString;
  Close;
end;

end.
