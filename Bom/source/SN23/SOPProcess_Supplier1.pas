unit SOPProcess_Supplier1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, GridsEh, DBGridEh, DBTables, StdCtrls, ExtCtrls;

type
  TSOPProcess_Supplier = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Query1: TQuery;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    Query1zsdh: TStringField;
    Query1zsywjc: TStringField;
    Query1ZSJC: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SOPProcess_Supplier: TSOPProcess_Supplier;

implementation

uses KT_SOPCutS_GCBWD1;

{$R *.dfm}

procedure TSOPProcess_Supplier.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TSOPProcess_Supplier.FormDestroy(Sender: TObject);
begin
  SOPProcess_Supplier:=nil;
end;

procedure TSOPProcess_Supplier.DBGridEh1DblClick(Sender: TObject);
begin
  KT_SOPCutS_GCBWD.GCBWQry.Edit;
  KT_SOPCutS_GCBWD.GCBWQry.FieldByName('ZSDH').Value := Query1.FieldByName('ZSDH').AsString;
  KT_SOPCutS_GCBWD.GCBWQry.FieldByName('ZSJC').Value := Query1.FieldByName('ZSJC').AsString;
  KT_SOPCutS_GCBWD.GCBWQry.Post;
  Close;
end;

procedure TSOPProcess_Supplier.Button1Click(Sender: TObject);
begin

  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('Select zsdh,zsywjc,ZSJC FROM ZSZL');
    SQL.Add('WHERE 1=1 ');
    if Edit1.Text<>'' then
    SQL.Add(' and zsdh LIKE ''' + Edit1.Text + '%''');
    if Edit2.Text<>'' then
    SQL.Add(' and zsywjc LIKE ''' + Edit2.Text + '%''');
    if Edit3.Text<>'' then
    SQL.Add(' and ZSJC LIKE ''' + Edit3.Text + '%''');
    Active := true;
  end;

end;

end.
