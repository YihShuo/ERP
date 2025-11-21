unit SampleOrder_Developer1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TSampleOrder_Developer = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1FDTeam: TStringField;
    Query1Engname: TStringField;
    Panel1: TPanel;
    UserID: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Engname: TEdit;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SampleOrder_Developer: TSampleOrder_Developer;

implementation
uses SampleOrder1,FunUnit;

{$R *.dfm}

procedure TSampleOrder_Developer.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TSampleOrder_Developer.FormDestroy(Sender: TObject);
begin
  SampleOrder_Developer:=nil;
end;

procedure TSampleOrder_Developer.FormCreate(Sender: TObject);
begin
  Query1.Active:=true;
end;

procedure TSampleOrder_Developer.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.clear;
    SQL.Add('select FDGroups.FDTeam,FDEng.Engname  ');
    SQL.Add('from FDGroups left join FDGroup on FDGroup.FDTeam=FDGroups.FDTeam  ');
    SQL.Add('left join busers FDEng on FDEng.userid=FDGroups.FDID  ');
    SQL.Add('where 1=1');
    if UserID.Text <> '' then
      SQL.Add('and FDGroups.FDID like '''+UserID.Text+'%'' ');
    if Engname.Text <> '' then
      SQL.Add('and FDEng.Engname like '''+Engname.Text+'%'' ');
    SQL.Add('group by FDGroups.FDTeam,FDEng.Engname  ');
    active:=true;
  end;
end;

procedure TSampleOrder_Developer.DBGridEh1DblClick(Sender: TObject);
begin
   SampleOrder.YPZL.Edit;
   SampleOrder.YPZL.FieldByName('FD').Value:=Query1.FieldByName('Engname').Value;
   SampleOrder.YPZL.Post;
   Close;
end;

end.
