unit SOPProcess_GCBWD1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DBTables;

type
  TSOPProcess_GCBWD = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    Query1: TQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SOPProcess_GCBWD: TSOPProcess_GCBWD;

implementation
  uses SOPProcess1;
{$R *.dfm}

procedure TSOPProcess_GCBWD.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT gcbwdh, ywsm, zwsm FROM KT_SOPCutS_GCBWD ');
    SQL.Add('WHERE 1=1 ');
    if Edit1.Text<>'' then
    SQL.Add(' and ywsm LIKE ''' + Edit1.Text + '%''');
    if Edit2.Text<>'' then
    SQL.Add(' and zwsm LIKE ''' + Edit2.Text + '%''');
    Active := true;
  end;
end;

procedure TSOPProcess_GCBWD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TSOPProcess_GCBWD.FormDestroy(Sender: TObject);
begin
  SOPProcess_GCBWD:=nil;
end;


procedure TSOPProcess_GCBWD.DBGridEh1DblClick(Sender: TObject);
begin

  SOPProcess.GCBWQry.Edit;
  SOPProcess.GCBWQry.FieldByName('GCBWDH').Value := Query1.FieldByName('GCBWDH').AsString;
  SOPProcess.GCBWQry.FieldByName('ZWSM').Value := Query1.FieldByName('ZWSM').AsString;
  SOPProcess.GCBWQry.FieldByName('YWSM').Value := Query1.FieldByName('YWSM').AsString;
  SOPProcess.GCBWQry.Post;

end;

end.
