unit ModelProduction_Dep1;

interface
                               
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBTables, Grids, DBGrids, ExtCtrls, GridsEh,
  DBGridEh;

type
  TModelProduction_Dep = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    DS1: TDataSource;
    Query1: TQuery;
    edLean: TEdit;
    Button1: TButton;
    Query1Lean: TStringField;
    Query1ID: TStringField;
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ShowLean();
  end;

var
  ModelProduction_Dep: TModelProduction_Dep;

implementation

uses ModelProduction1, main1;

{$R *.dfm}

procedure TModelProduction_Dep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TModelProduction_Dep.FormDestroy(Sender: TObject);
begin
   ModelProduction_Dep:=nil;
end;

Procedure TModelProduction_Dep.ShowLean();
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select ID,Depname as Lean from Bdepartment');
    sql.Add('where GXLB=''S'' and sumline is not null and ProYN=1 and YN=1  ');
    sql.Add('and GSBH='''+main.edit2.text+'''');
    if edLean.Text<>'' then
      sql.Add('and DepName like '''+edLean.Text+'%''');
    sql.Add('order by Depname');
    active:=true;
  end;  
end;

procedure TModelProduction_Dep.Button1Click(Sender: TObject);
begin
  showLean();
end;

procedure TModelProduction_Dep.FormShow(Sender: TObject);
begin
  showLean();
end;
procedure TModelProduction_Dep.DBGrid1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with ModelProduction.qrySCXXLN do
    begin
      edit;
      FieldByName('DepName').Value:=query1.fieldbyname('Lean').Value;
      FieldByName('DepID').Value:=query1.fieldbyname('ID').Value;
      post;
    end;
    close;
  end;
end;

end.
